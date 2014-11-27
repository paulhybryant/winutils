!include "FileFunc.nsh"
!include "MUI.nsh"
!include "LogicLib.nsh"

!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

# Set the name of the installer
Outfile "CreateShortCut.exe"
InstallDir "$DESKTOP"

Section
SetAutoClose true
SetOutPath "$INSTDIR"
SetOverwrite ifnewer
${GetParameters} $R0
${If} $R0 == ""
    MessageBox MB_OK "No target specified, exiting."
    goto exit
${EndIf}
${GetBaseName} "$R0" $R1
CreateShortCut "$DESKTOP\$R1.lnk" "$R0"

exit:
SectionEnd