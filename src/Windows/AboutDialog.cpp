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
#include "AboutDialog.h"

#include "resource.h"
#include "symbols.h"
#include <libssh/libssh.h>
#include <openssl/ssl.h>

AboutDialog::AboutDialog() :
	Dialog(IDD_DIALOG_ABOUT),
	m_donateIcon(NULL)
{
}

AboutDialog::~AboutDialog() {
}

int AboutDialog::Create(HWND hParent) {
	m_donateIcon = (HICON)::LoadImage(m_hInstance, MAKEINTRESOURCE(IDB_BITMAP_PAYPAL), IMAGE_BITMAP, 16, 16, LR_LOADMAP3DCOLORS);

	int res = Dialog::Create(hParent, true, TEXT("About SynFTP"));
	if (res == -1)
		return -1;

	return res;
}

INT_PTR AboutDialog::DlgMsgProc(UINT uMsg, WPARAM wParam, LPARAM lParam) {
	return Dialog::DlgMsgProc(uMsg, wParam, lParam);
}

INT_PTR AboutDialog::OnInitDialog() {
	const TCHAR * sshVersion = TEXT(SSH_STRINGIFY(LIBSSH_VERSION));
	const TCHAR * sslVersion = TEXT(OPENSSL_VERSION_TEXT);
	const TCHAR * synFTPVersion = TEXT(IDT_VERSION_TEXT);

	::SetDlgItemText(m_hwnd, IDC_STATIC_SSHVERSION, sshVersion);
	::SetDlgItemText(m_hwnd, IDC_STATIC_SSLVERSION, sslVersion);
	::SetDlgItemText(m_hwnd, IDC_STATIC_SYNFTPVERSION, synFTPVersion);

	const TCHAR * aboutMessage = 
		TEXT("SynFTP, Copyright 2012-2014\r\n")
		TEXT("Created by Harry\r\n")
		TEXT("Modified by tbeu\r\n")
		TEXT("\r\n")
		TEXT("Enjoy the comfort of transferring your files from your favorite editor! =)")
		TEXT("\r\n\r\n")
		TEXT("SynFTP works because of the effort put in the following libraries:\r\n")
		TEXT("- OpenSSL\r\n")
		TEXT("- libssh\r\n")
		TEXT("- Ultimate TCP/IP\r\n")
		TEXT("- TinyXML\r\n")
		TEXT("\r\n");
		//TEXT("And not to forget:\r\n")
		//TEXT("Silk icons from famfamfam\r\n");

	::EnableWindow(GetDlgItem(m_hwnd, IDC_EDIT_ABOUTMSG), TRUE);
	::SetDlgItemText(m_hwnd, IDC_EDIT_ABOUTMSG, aboutMessage);

	::SetFocus(GetDlgItem(m_hwnd, IDC_BUTTON_CLOSE));
	::SendMessage(GetDlgItem(m_hwnd, IDC_EDIT_ABOUTMSG), EM_SETSEL, 0, 0);

	::SendMessage(GetDlgItem(m_hwnd, IDC_BUTTON_DONATE), BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)m_donateIcon);

	Dialog::OnInitDialog();

	return FALSE;
}

INT_PTR AboutDialog::OnCommand(int ctrlId, int notifCode, HWND idHwnd) {
	INT_PTR result = 0;

	switch(ctrlId) {
		case IDC_BUTTON_CLOSE: {
			EndDialog(m_hwnd, 0);
			result = TRUE;
			break; }
		case IDC_BUTTON_VISIT: {
			ShellExecute(NULL, TEXT("open"), TEXT("http://sourceforge.net/projects/nppftp"), NULL, NULL, SW_SHOWNORMAL);
			result = TRUE;
			break; }
		case IDC_BUTTON_DONATE: {
			ShellExecute(NULL, TEXT("open"), TEXT("http://sourceforge.net/projects/nppftp/donate"), NULL, NULL, SW_SHOWNORMAL);
			result = TRUE;
			break; }
		default: {
			result = Dialog::OnCommand(ctrlId, notifCode, idHwnd);
			break; }
	}
	return result;
}

INT_PTR AboutDialog::OnNotify(NMHDR * pnmh) {
	INT_PTR result = 0;

	result = Dialog::OnNotify(pnmh);

	return result;
}
