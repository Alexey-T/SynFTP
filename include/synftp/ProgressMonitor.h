/*
    SynFTP: FTP/SFTP functionality for SynWrite
    Copyright (C) 2010  Harry (harrybharry@users.sourceforge.net)

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

#ifndef PROGRESSMONITOR_H
#define PROGRESSMONITOR_H

class ProgressMonitor {
public:
							ProgressMonitor() {};
	virtual					~ProgressMonitor() {};

	virtual int				OnDataReceived(long received, long total) = 0;
	virtual int				OnDataSent(long sent, long total) = 0;
protected:
};

#endif //PROGRESSMONITOR_H
