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

#include "StdInc.h"
#include "OutputLog.h"

Output* _MainOutput = NULL;

const WCHAR * ftpLogTitle = L"FTP Log";

#define BGR(r,g,b) ((DWORD)(((BYTE)(b)|((WORD)((BYTE)(g))<<8))|(((DWORD)(BYTE)(r))<<16)))

OutputLog::OutputLog() :
	m_actionProc(NULL),
	m_actionHandle(NULL),
	m_shown(false)
{
	_MainOutput = this;
}

OutputLog::~OutputLog() {
	
}

int OutputLog::RegisterActionProc(HWND handle, ACTIONPROC ActionProc) {
	m_actionHandle = handle;
	m_actionProc = ActionProc;
	
	int res = m_actionProc(m_actionHandle, cActionControlLog, (void*)ftpLogTitle, (void*)cSynLogCmdSetCaption, NULL, NULL);
	
	return (res == cSynOK)?0:-1;
}

int OutputLog::Show(bool show) {
	int res = cSynError;
	if (show) {
		res = m_actionProc(m_actionHandle, cActionControlLog, NULL, (void*)cSynLogCmdShow, NULL, NULL);
		m_shown = true;
	} else {
		res = m_actionProc(m_actionHandle, cActionControlLog, NULL, (void*)cSynLogCmdHide, NULL, NULL);
		m_shown = false;
	}
	
	return (res == cSynOK)?0:-1;
}

bool OutputLog::IsVisible() {
	return m_shown;
}

int OutputLog::OutVA(Output_Type type, const TCHAR * message, va_list vaList) {
	if (!m_actionHandle || !m_actionProc)
		return -1;

	if (!message)
		return -1;

	WCHAR * msgBuffer = new WCHAR[1024];
	msgBuffer[0] = 0;

	SU::TSprintfV(msgBuffer, 1024, message, vaList);
	
	DWORD color = 0x00000000;
	switch(type) {
		case Output_Client:
			color = RGB(0, 180, 0);
			break;
		case Output_System:
			color = RGB(0, 0, 180);
			break;
		case Output_Error:
			color = RGB(255, 0, 0);
			break;
		default:
			color = RGB(0, 180, 180);
			break;
	}

	int res = m_actionProc(m_actionHandle, cActionControlLog, msgBuffer, (void*)cSynLogCmdAddLine, (void*)color, NULL);
	//0 is for the color, no direct C/C++ counterpart for TColor?
	//If color becomes supported, use Output_Type for color determinisation
	
	delete [] msgBuffer;
	
	if (type == Output_Error) {
		Show(true);
	}
	
	return (res == cSynOK)?0:-1;
}

