/*
    SynFTP: FTP/SFTP functionality for SynWrite
    Copyright (C) 2012  Harry (harrybharry@users.sourceforge.net)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "StdInc.h"
#include "SynFTP.h"

#include "AboutDialog.h"
#include "InputDialog.h"
#include "Encryption.h"
#include "DragDropWindow.h"
#include "FTPSettings.h"
#include <commctrl.h>

//Main window for output (various dialogs etc)
HWND _MainOutputWindow = NULL;
char * _HostsFile = NULL;
TCHAR * _ConfigPath = NULL;

SynFTP::SynFTP() :
	m_ftpSettings(NULL),
	m_ftpSession(NULL),
	m_ftpWindow(NULL),
	m_configStore(NULL)
{
	m_ftpSettings = new FTPSettings();
}

SynFTP::~SynFTP() {
	for(size_t i = 0; i < m_profiles.size(); i++) {
		m_profiles[i]->Release();
		//delete m_profiles[i];
	}

	SSLCertificates::FreeX509Vector(m_certificates);

	if (m_configStore)
		delete [] m_configStore;

	delete m_ftpSettings;
}

int SynFTP::Start(HWND hParent, HWND hSyn, TCHAR * ConfigStore, ACTIONPROC ActionProc) {
	m_hSyn = hSyn;

	PF::Init();
	Encryption::Init();

	m_configStore = new TCHAR[MAX_PATH];
	lstrcpy(m_configStore, ConfigStore);
	::PathAppend(m_configStore, TEXT("SynFTP"));
	int res = PU::CreateLocalDir(m_configStore);
	//Special hack: do not check return value
	//if (res == -1)
	//	return -1;

	_ConfigPath = new TCHAR[MAX_PATH];
	lstrcpy(_ConfigPath, ConfigStore);
	::PathAppend(_ConfigPath, TEXT("SynFTP\\"));

	_HostsFile = new char[MAX_PATH];
	char * utf8Store = SU::TCharToCP(m_configStore, CP_ACP);
	strcpy(_HostsFile, utf8Store);
	::PathCombineA(_HostsFile, utf8Store, "known_hosts");
	SU::FreeChar(utf8Store);

	_MainOutputWindow = hSyn;

	res = LoadSettings();
	if (res == -1)
		return -1;

	m_ftpWindow = new FTPWindow();
	m_ftpSession = new FTPSession();
	res = m_ftpWindow->Create(hParent, hSyn, ActionProc);
	if (res == -1) {
		return -1;
	}

	res = m_ftpSession->Init(m_ftpWindow, m_ftpSettings);
	if (res == -1) {
		m_ftpWindow->Destroy();
		delete m_ftpWindow;
		m_ftpWindow = NULL;
		return -1;
	}

	/* res = */ m_ftpWindow->Init(m_ftpSession, &m_profiles, m_ftpSettings);

	/* res = */ m_ftpSession->SetCertificates(&m_certificates);

	OutMsg("[SynFTP] Everything initialized");

	return 0;
}

int SynFTP::Stop() {
	SaveSettings();

	if (_HostsFile) {
		delete [] _HostsFile;
		_HostsFile = NULL;
	}

	if (_ConfigPath) {
		delete [] _ConfigPath;
		_ConfigPath = NULL;
	}

	if (m_ftpSession) {
		delete m_ftpSession;
		m_ftpSession = NULL;
	}
	if (m_ftpWindow) {
		m_ftpWindow->Destroy();
		delete m_ftpWindow;
		m_ftpWindow = NULL;
	}

	PF::Deinit();
	Encryption::Deinit();

	return 0;
}

int SynFTP::ToggleFTPWindow() {
	bool show = !(m_ftpWindow->IsVisible());
	m_ftpWindow->Show(show);

	return 0;
}

int SynFTP::ShowFTPWindow() {
	m_ftpWindow->Show(true);

	return 0;
}

int SynFTP::HideFTPWindow() {
	m_ftpWindow->Show(false);

	return 0;
}

int SynFTP::FocusFTPWindow() {
	bool shown = (m_ftpWindow->IsVisible());
	if (!shown)
		m_ftpWindow->Show(true);
	m_ftpWindow->Focus();

	return 0;
}



int SynFTP::ShowAboutDialog() {
	AboutDialog ab;
	ab.Create(m_hSyn);
	return 0;
}

int SynFTP::OnSave(const TCHAR* path) {
	if (!path || !m_ftpSession)
		return -1;

	if (m_ftpSession->IsConnected()) {
		m_ftpSession->UploadFileCache(path);
	}

	return 0;
}

int SynFTP::OnActivateLocalFile(const TCHAR* path) {
	if (!path || !m_ftpWindow)
		return -1;

	return m_ftpWindow->OnActivateLocalFile(path);
}

int SynFTP::InitAll(HINSTANCE hInst) {
	Window::SetDefaultInstance(hInst);
	FTPWindow::RegisterClass();
	//OutputWindow::RegisterClass();
	DragDropWindow::RegisterClass();

    INITCOMMONCONTROLSEX icce;
    icce.dwSize = sizeof(icce);
    icce.dwICC = ICC_LISTVIEW_CLASSES;
    InitCommonControlsEx(&icce);

	return 0;
}

int SynFTP::LoadSettings() {
	int result = 0;

	char xmlPath[MAX_PATH];
	char * utf8Store = SU::TCharToCP(m_configStore, CP_ACP);
	strcpy(xmlPath, utf8Store);
	::PathCombineA(xmlPath, utf8Store, "SynFTP.xml");

	TiXmlDocument settingsDoc = TiXmlDocument(xmlPath);
	settingsDoc.LoadFile();

	strcpy(xmlPath, utf8Store);
	::PathCombineA(xmlPath, utf8Store, "Certificates.xml");
	SU::FreeChar(utf8Store);

	TiXmlDocument certificatesDoc = TiXmlDocument(xmlPath);
	certificatesDoc.LoadFile();

	TiXmlElement* ftpElem = settingsDoc.FirstChildElement("SynFTP");
	if (!ftpElem) {
		result = 1;
		return result;
	}

	m_ftpSettings->LoadSettings(ftpElem);

	TiXmlElement * profilesElem = ftpElem->FirstChildElement(FTPProfile::ProfilesElement);
	if (!profilesElem) {
		m_profiles.clear();
		result = 1;
	} else {
		m_profiles = FTPProfile::LoadProfiles(profilesElem);
		for(size_t i = 0; i < m_profiles.size(); i++) {
			m_profiles.at(i)->AddRef();
			m_profiles.at(i)->SetCacheParent(m_ftpSettings->GetGlobalCache());
		}
	}


	ftpElem = certificatesDoc.FirstChildElement("SynFTP");
	if (!ftpElem) {
		m_certificates.clear();
		result = 1;
	} else {
		TiXmlElement * dersElem = ftpElem->FirstChildElement(SSLCertificates::DERsElem);
		if (!dersElem) {
			m_certificates.clear();
			result = 1;
		} else {
			vDER derVect = SSLCertificates::LoadDER(dersElem);
			m_certificates = SSLCertificates::ConvertDERVector(derVect);
			SSLCertificates::FreeDERVector(derVect);
		}
	}

	return result;
}

int SynFTP::SaveSettings() {

	char xmlPath[MAX_PATH];
	char * utf8Store = SU::TCharToCP(m_configStore, CP_ACP);
	strcpy(xmlPath, utf8Store);
	::PathCombineA(xmlPath, utf8Store, "SynFTP.xml");

	TiXmlDocument * settingsDoc = new TiXmlDocument(xmlPath);
	TiXmlDeclaration * decl = new TiXmlDeclaration("1.0", "UTF-8", "");
	settingsDoc->LinkEndChild(decl);

	strcpy(xmlPath, utf8Store);
	::PathCombineA(xmlPath, utf8Store, "Certificates.xml");
	SU::FreeChar(utf8Store);

	TiXmlDocument * certificatesDoc = new TiXmlDocument(xmlPath);
	decl = new TiXmlDeclaration("1.0", "UTF-8", "");
	certificatesDoc->LinkEndChild(decl);

	TiXmlElement * ftpElem = new TiXmlElement("SynFTP");
	settingsDoc->LinkEndChild(ftpElem);

	m_ftpSettings->SaveSettings(ftpElem);

	TiXmlElement * profilesElem = FTPProfile::SaveProfiles(m_profiles);
	ftpElem->LinkEndChild(profilesElem);

	ftpElem = new TiXmlElement("SynFTP");
	certificatesDoc->LinkEndChild(ftpElem);

	vDER derVect = SSLCertificates::ConvertX509Vector(m_certificates);
	TiXmlElement * dersElem = SSLCertificates::SaveDER(derVect);
	SSLCertificates::FreeDERVector(derVect);
	ftpElem->LinkEndChild(dersElem);

	settingsDoc->SaveFile();
	certificatesDoc->SaveFile();

	delete settingsDoc;
	delete certificatesDoc;

	return 0;
}
