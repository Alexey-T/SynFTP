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

#ifndef OUTPUTLOG_H
#define OUTPUTLOG_H

#include "Output.h"

#include "PluginInterface.h"

extern const WCHAR * ftpLogTitle;

class OutputLog : public Output {
public:

public:
							OutputLog();
	virtual					~OutputLog();
	
	virtual int 			Show(bool show);
	virtual bool			IsVisible();

	virtual int				RegisterActionProc(HWND handle, ACTIONPROC ActionProc);

							//message: %T is tchar (%s or %S), %s is char, %S is wchar_t
	virtual int				OutVA(Output_Type type, const TCHAR * message, va_list vaList);
protected:
	ACTIONPROC				m_actionProc;
	HWND					m_actionHandle;
	
	bool					m_shown;
};

#endif //OUTPUTLOG_H
