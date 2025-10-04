; PixEz Installer
Name "PixEz"
OutFile "pixez-installer.exe"
InstallDir "$PROGRAMFILES\PixEz"
Icon "windows/runner/resources/app_icon.ico"
LicenseData "LICENSE"

Section "Main"
  SetOutPath "$INSTDIR"
  File /r "build/windows/x64/runner/Release\*.*"
  CreateDirectory "$SMPROGRAMS\PixEz"
  CreateShortCut "$SMPROGRAMS\PixEz\PixEz.lnk" "$INSTDIR\runner.exe"
  CreateShortCut "$DESKTOP\PixEz.lnk" "$INSTDIR\runner.exe"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\runner.exe"
  RMDir /r "$INSTDIR"
  Delete "$SMPROGRAMS\PixEz\PixEz.lnk"
  Delete "$DESKTOP\PixEz.lnk"
  RMDir "$SMPROGRAMS\PixEz"
SectionEnd
