@echo off
:: Check for Administrator rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

title Enable Windows Photo Viewer (All Image Formats)
echo.
echo === Enable Windows Photo Viewer and Set Default for All Images ===
echo.

REM --- Enable Photo Viewer in right-click menu ---
reg add "HKCR\Applications\photoviewer.dll\shell\open" /ve /d "@photoviewer.dll,-3043" /f
reg add "HKCR\Applications\photoviewer.dll\shell\open\command" /ve /d "\"%SystemRoot%\System32\rundll32.exe\" \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %%1" /f
reg add "HKCR\Applications\photoviewer.dll\shell\open\DropTarget" /v Clsid /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}" /f
reg add "HKCR\Applications\photoviewer.dll\shell\print\command" /ve /d "\"%SystemRoot%\System32\rundll32.exe\" \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_PrintTo %%1" /f
reg add "HKCR\Applications\photoviewer.dll\shell\print\DropTarget" /v Clsid /d "{60fd46de-f830-4894-a628-6fa81bc0190d}" /f

REM --- Set default app for common image formats ---
for %%E in (.jpg .jpeg .png .bmp .gif .tif .tiff .webp .ico) do (
    reg add "HKCU\Software\Classes\%%E" /ve /d "PhotoViewer.FileAssoc.Tiff" /f
)

echo.
echo ✅ Windows Photo Viewer has been enabled and set as default for:
echo    JPG, JPEG, PNG, BMP, GIF, TIF, TIFF, WEBP, ICO
echo.
pause
exit
