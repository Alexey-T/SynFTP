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
//#include "Output.h"

int OutputMsg(const TCHAR * msg, ...) {
	va_list vaList;
	va_start(vaList, msg);
	int ret = -1;
	if (_MainOutput)
		ret = _MainOutput->OutVA(Output_System, msg, vaList);
	va_end(vaList);

	return ret;
}

int OutputClnt(const TCHAR * msg, ...) {
	va_list vaList;
	va_start(vaList, msg);
	int ret = -1;
	if (_MainOutput)
		ret = _MainOutput->OutVA(Output_Client, msg, vaList);
	va_end(vaList);

	return ret;
}

int OutputErr(const TCHAR * msg, ...) {
	va_list vaList;
	va_start(vaList, msg);
	int ret = -1;
	if (_MainOutput)
		ret = _MainOutput->OutVA(Output_Error, msg, vaList);
	va_end(vaList);

	return ret;
}

int MessageBoxOutput(const TCHAR * msg) {
	if (!_MainOutputWindow)
		return -1;

	MessageBox(_MainOutputWindow, TEXT("SynFTP"), msg, MB_OK);
	return 0;
}
