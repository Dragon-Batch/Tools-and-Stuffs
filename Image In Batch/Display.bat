@echo off
chcp 65001>nul
echo please hold ctrl and scroll down to zoom all
echo the way out and full screen command prompt.
echo.
echo press any key to continue
pause>nul
timeout /nobreak 10
for /f "delims=*" %%a in ('type "%1"') do (
	echo %%a
)
pause>nul