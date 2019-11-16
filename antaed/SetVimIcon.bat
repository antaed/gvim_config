@echo off
SET icoPath=C:\Users\andre\vimfiles\bitmaps\vimfile.ico

rem https://docs.microsoft.com/en-us/windows/win32/shell/how-to-assign-a-custom-icon-to-a-file-type
@reg add "HKEY_CLASSES_ROOT\Applications\gvim.exe\DefaultIcon" /v "" /t REG_EXPAND_SZ /d "%icoPath%" /f
pause

taskkill /f /im explorer.exe
cd /d %userprofile%\AppData\Local
del IconCache.db /a
cd /d %userprofile%\AppData\Local\Microsoft\Windows\Explorer
del IconCache*.db /a
start explorer.exe
