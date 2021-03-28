@echo off

set /p "IP=IP : "

:Pinger
for /f "tokens=1-6 delims= " %%a in ('start /b Ping -n 1 -w 1 -l 1 %IP% ^| find ^"Reply^"') do (
    echo [38;2;255;0;0m%%a [38;2;0;0;255m%%b [38;2;128;0;128m%%c [38;2;255;192;203m%%d [38;2;0;255;255m%%e [38;2;128;128;128m%%f
)
goto Pinger