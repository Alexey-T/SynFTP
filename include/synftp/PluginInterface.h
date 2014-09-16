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

#ifndef PLUGININTERFACE_H
#define PLUGININTERFACE_H

//Target = source?
typedef int (__stdcall * ACTIONPROC)(HWND Target, const WCHAR * ActionName, void * A1, void * A2, void * A3, void * A4);

//ACTIONPROC return codes
const int  cSynBadCmd = 0;
const int  cSynOK = 1;
const int  cSynError = 2;

//Max path and message lengths
const int  cSynMaxPath = 512;
const int  cSynMaxMsg = 512;

//Get current ID of open files?
const int  cSynIdCurrentFile = -1;
const int  cSynIdOppositeFile = -2;

//Sub actions for Log action
const int cSynLogCmdHide = -1;
const int cSynLogCmdShow = 0;
const int cSynLogCmdAddLine = 1;
const int cSynLogCmdClear = 2;
const int cSynLogCmdSetCaption = 3;

//ACTIONPROC action names
extern const WCHAR* cActionOpenFile;
extern const WCHAR* cActionOpenFtpFile;
extern const WCHAR* cActionGetOpenedFileName;
extern const WCHAR* cActionAddToFavorites;
extern const WCHAR* cActionGetMsg;
extern const WCHAR* cActionControlLog;
extern const WCHAR* cActionSuggestCompletion;
extern const WCHAR* cActionGetCaretPos;
extern const WCHAR* cActionSetCaretPos;
extern const WCHAR* cActionParseRegex;
extern const WCHAR* cActionSaveFile;
extern const WCHAR* cActionSetState;

extern const WCHAR* cActionNavigateToFile;
extern const WCHAR* cActionRefreshFileList;
extern const WCHAR* cActionUpdateLang;
extern const WCHAR* cActionRepaint;
extern const WCHAR* cActionSaveFtpFile;

extern "C" BOOL WINAPI DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved);

//procedure SynInit(ADefaultIni: PWideChar; AActionProc: Pointer); stdcall;
extern "C" __stdcall __declspec(dllexport) void SynInit(WCHAR * DefaultIni, void *ActionProc);

//function SynOpenForm(AParentWindow: THandle; var AWindow: THandle): Pointer; stdcall;
extern "C" __stdcall __declspec(dllexport) HWND SynOpenForm(HWND Parent, HWND * Child);

//procedure SynCloseForm(AHandle: Pointer); stdcall;
extern "C" __stdcall __declspec(dllexport) void SynCloseForm(HWND Child);

//function SynAction(AHandle: Pointer; AName: PWideChar; A1, A2, A3, A4: Pointer): Integer; stdcall;
//WARNING: void* not safe, problems will occur on 64bit targets
extern "C" __stdcall __declspec(dllexport) int SynAction(HWND Target, WCHAR * ActionName, void * A1, void * A2, void * A3, void * A4);

#endif //PLUGININTERFACE_H
