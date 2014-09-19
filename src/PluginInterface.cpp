/*
    SynFTP: FTP/SFTP functionality for SynWrite
    Copyright (C) 2012 Harry (harrybharry@users.sourceforge.net)

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

#ifndef UNICODE
#error "Only Unicode builds supported!"
#endif

#include "StdInc.h"
#include "PluginInterface.h"

#include "SynFTP.h"

//ACTIONPROC action names
const WCHAR* cActionOpenFile           = L"OpenFile";
const WCHAR* cActionOpenFtpFile        = L"OpenFtpFile";
const WCHAR* cActionGetOpenedFileName  = L"GetOpenedFile";
const WCHAR* cActionAddToFavorites     = L"AddToFav";
const WCHAR* cActionGetMsg             = L"GetM";
const WCHAR* cActionControlLog         = L"LogCmd";
const WCHAR* cActionSuggestCompletion  = L"Complete";
const WCHAR* cActionGetCaretPos        = L"GetCaret";
const WCHAR* cActionSetCaretPos        = L"SetCaret";
const WCHAR* cActionParseRegex         = L"ParseRE";
const WCHAR* cActionSaveFile           = L"SaveFile";
const WCHAR* cActionSetState           = L"SetState";

const WCHAR* cActionNavigateToFile     = L"NavigateTo";
const WCHAR* cActionRefreshFileList    = L"RefreshFileList";
const WCHAR* cActionUpdateLang         = L"UpdateLang";
const WCHAR* cActionRepaint            = L"Repaint";
const WCHAR* cActionSaveFtpFile        = L"SaveFtpFile";
const WCHAR* cActionSetColor           = L"SetColor";

ACTIONPROC	actionProc;
SynFTP		synFTP;

TCHAR		configPath[MAX_PATH];

bool		show = false;
bool		isStarted = false;

BOOL DllMain(HINSTANCE hinstDLL, DWORD  fdwReason, LPVOID /*lpvReserved*/) {
	BOOL result = TRUE;

	switch(fdwReason ) {
		case DLL_PROCESS_ATTACH: {
			SynFTP::InitAll(hinstDLL);
			result = TRUE;
			break; }
		case DLL_PROCESS_DETACH: {
			break; }
		case DLL_THREAD_ATTACH: {
			break; }
		case DLL_THREAD_DETACH: {
			break; }
	}

	return result;
}

//procedure SynInit(ADefaultIni: PWideChar; AActionProc: Pointer); stdcall;
void SynInit(WCHAR * ADefaultIni, void *AActionProc) {
	actionProc = (ACTIONPROC)AActionProc;
	lstrcpyW(configPath, ADefaultIni);
	PathRemoveFileSpec(configPath);
}

//function SynOpenForm(AParentWindow: THandle; var AWindow: THandle): Pointer; stdcall;
HWND SynOpenForm(HWND parent, HWND * child) {
	if (isStarted) {
		return synFTP.GetFTPWindowHandle();
	}
	
	int res = synFTP.Start(parent, parent, configPath, actionProc);
	if (res == -1) {
		return NULL;
	}
	isStarted = true;
	
	// Do not already show the window, SynWrite will take care of that (and the parenting)
	//synFTP.ShowFTPWindow();

	*child = synFTP.GetFTPWindowHandle();
	return synFTP.GetFTPWindowHandle();
}

//procedure SynCloseForm(AHandle: Pointer); stdcall;
void SynCloseForm(HWND child) {
	if (!isStarted) {
		return;
	}

	synFTP.Stop();
	isStarted = false;
}

//function SynAction(AHandle: Pointer; AName: PWideChar; A1, A2, A3, A4: Pointer): Integer; stdcall;
int SynAction(HWND child, WCHAR * name, void * A1, void * A2, void * A3, void * A4) {
	// When SynWrite supports callbacks for a save action, do this:
	//synFTP.OnSave(path);
	// cActionGetOpenedFileName may be required
	
	//OutMsg("action %S", name);

	if (!lstrcmpW(cActionRepaint, name)) {
		//Ignore repaint commands
		return cSynOK;
	}  else if (!lstrcmpW(cActionRefreshFileList, name)) {
		//This doesn't work, button will always be active
		if (actionProc != NULL && isStarted) {
			WCHAR path[cSynMaxPath];
			int res = actionProc(synFTP.GetFTPWindowHandle(), cActionGetOpenedFileName, path, (void*)cSynIdCurrentFile, NULL, NULL);
			//synFTP.OnActivateLocalFile(path);
		}
		return cSynOK;
	} else if (!lstrcmpW(cActionSaveFtpFile, name)) {
		//Called only when saving an file opened from ftp
		if (actionProc != NULL && isStarted) {
			WCHAR path[cSynMaxPath];
			int res = actionProc(synFTP.GetFTPWindowHandle(), cActionGetOpenedFileName, path, (void*)cSynIdCurrentFile, NULL, NULL);
			synFTP.OnSave(path);
		}
		return cSynOK;
	}
	else if  (!lstrcmpW(cActionSetColor, name)) {
		DWORD color = reinterpret_cast<DWORD>(A2);
		DWORD c2 = (color >> 24) & 0xff;
		if ((color >> 24) == 0xff)
			color = ::GetSysColor(color & 0xffffff);
		switch (reinterpret_cast<int>(A1)) {
			case cColorId_Text:
				synFTP.SetTextColor(color);
				break;

			case cColorId_Back:
				synFTP.SetBackColor(color);
				break;
				
			case cColorId_LogNormal:
				synFTP.SetLogNormalColor(color);
				break;

			case cColorId_LogServer:
				synFTP.SetLogServerColor(color);
				break;

			case cColorId_LogError:
				synFTP.SetLogErrorColor(color);
				break;
				
			default:
				break;
		}
		return cSynOK;
	}

	return cSynBadCmd;
}
