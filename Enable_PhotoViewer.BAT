@echo off
title Enable Windows Photo Viewer
echo.
echo === Enabling Windows Photo Viewer ===
echo.

:: Check admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: --- Add Photo Viewer registry entries ---
reg add "HKCR\Applications\photoviewer.dll\shell\open" /ve /d "@photoviewer.dll,-3043" /f
reg add "HKCR\Applications\photoviewer.dll\shell\open\command" /ve /d "\"%SystemRoot%\System32\rundll32.exe\" \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %%1" /f
reg add "HKCR\Applications\photoviewer.dll\shell\open\DropTarget" /v Clsid /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}" /f
reg add "HKCR\Applications\photoviewer.dll\shell\print\command" /ve /d "\"%SystemRoot%\System32\rundll32.exe\" \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_PrintTo %%1" /f
reg add "HKCR\Applications\photoviewer.dll\shell\print\DropTarget" /v Clsid /d "{60fd46de-f830-4894-a628-6fa81bc0190d}" /f

echo.
echo ✅ Windows Photo Viewer has been enabled in "Open with" menu.
echo.
echo 👉 To make it default, go to Settings > Apps > Default Apps > Photo viewer.
echo.
pause
exit
