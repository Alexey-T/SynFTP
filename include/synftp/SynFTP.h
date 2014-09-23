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

#ifndef SYNFTP_H
#define SYNFTP_H

#include "FTPWindow.h"
#include "FTPSession.h"
#include "SSLCertificates.h"

#include "PluginInterface.h"

class SynFTP {
public:
							SynFTP();
	virtual					~SynFTP();

	int						Start(HWND hParent, HWND hSyn, TCHAR * ConfigStore, ACTIONPROC ActionProc);
	int						Stop();

	int						ToggleFTPWindow();
	int						ShowFTPWindow();
	int						HideFTPWindow();
	int						FocusFTPWindow();
	HWND					GetFTPWindowHandle() const {
								return m_ftpWindow ? m_ftpWindow->GetHWND() : NULL;
							};
	int						ShowAboutDialog();

	int						OnSave(const TCHAR* path);
	int						OnActivateLocalFile(const TCHAR* path);
	
	int						LoadSettings();		//-1 error, 0 success, 1 unable to load
	int						SaveSettings();

	static int				InitAll(HINSTANCE hInst);
	
	void					SetBackColor(DWORD color) {
								if (m_ftpWindow)
									m_ftpWindow->SetBackColor(color);
							};
	void					SetTextColor(DWORD color) {
								if (m_ftpWindow)
									m_ftpWindow->SetTextColor(color);
							};
	void					SetLogNormalColor(DWORD color) {
								if (m_ftpWindow)
									m_ftpWindow->SetLogNormalColor(color);
							};
	void					SetLogServerColor(DWORD color) {
								if (m_ftpWindow)
									m_ftpWindow->SetLogServerColor(color);
							};
	void					SetLogErrorColor(DWORD color) {
								if (m_ftpWindow)
									m_ftpWindow->SetLogErrorColor(color);
							};
private:
	FTPSettings*			m_ftpSettings;
	FTPSession*				m_ftpSession;
	FTPWindow*				m_ftpWindow;

	vProfile				m_profiles;

	TCHAR*					m_configStore;
	
	HWND					m_hSyn;

	vX509					m_certificates;
};

#endif //SYNFTP_H
