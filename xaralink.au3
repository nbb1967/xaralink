#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=icon/xaraicon.ico
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Res_Comment=Created by AutoIt v3.3.16.1
#AutoIt3Wrapper_Res_Description=xaralink
#AutoIt3Wrapper_Res_Fileversion=0.1.0.6
#AutoIt3Wrapper_Res_ProductVersion=0.1.0.6
#AutoIt3Wrapper_Res_CompanyName=NyBumBum
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Run_Tidy=y
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****


#include <MsgBoxConstants.au3>


Local $nNumberOfAguments = $CmdLine[0]
Select
	Case $nNumberOfAguments = 0 ;Direct run of EXE
		MsgBox($MB_ICONERROR, "Error", "Missing arguments. This is probably a direct EXE run. This program works differently.")
		Exit
	Case $nNumberOfAguments = 1
		MsgBox($MB_ICONERROR, "Error", "Missing path")
		Exit
	Case $nNumberOfAguments > 1
		Local $bSuccess = ShellExecute($CmdLine[2])
		If Not $bSuccess Then
			MsgBox($MB_ICONERROR, "Error", "Failed to open Browser Preview")
			Exit
		EndIf
EndSelect
Exit
