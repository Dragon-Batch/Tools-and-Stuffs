@echo off
setlocal enabledelayedexpansion
if /i "%1"=="-help" goto help
if /i "%1"=="-Help" goto help
if /i "%1"=="-h" goto help
if /i "%1"=="-H" goto help
if /i "%1"=="" goto help

set "Choice=%~1"
set "Symbol=%~2"
chcp 65001>nul

if "█"==" " (
    set "Symbol=█"
)

for /l %%a in (0 1 1) do (
    set "3x5_1=███ █ ███████ ████████████████"
    set "3x5_2=█ ███   █  ██ ██  █    ██ ██ █"
    set "3x5_3=█ █ █ ███ ███████████  ███████"
    set "3x5_4=█ █ █ █    █  █  ██ █  ██ █  █"
    set "3x5_5=████████████  ███████  ███████"

    set "5x5_1=█████  █  ███████████   ██████████████████████████"
    set "5x5_2=█   █  █      █    ██   ██    █        ██   ██   █"
    set "5x5_3=█   █  █  █████████████████████████    ███████████"
    set "5x5_4=█   █  █  █        █    █    ██   █    ██   █    █"
    set "5x5_5=█████  █  ██████████    ███████████    ███████████"

    set "5x7_1= ███   █   ███  ███   █ ██████ ███ █████ ███  ███ "
    set "5x7_2=██  █ ██  █   ██   █ █  ██    █   █    ██   ██   █"
    set "5x7_3=██  █  █     █     ██   ██    █        ██   ██   █"
    set "5x7_4=█ █ █  █    █  ████ █████ ███ ████    █  ███  ████"
    set "5x7_5=█ █ █  █   █       █    █    ██   █   █ █   █    █"
    set "5x7_6=█  ██  █  █    █   █    ██   ██   █  █  █   ██   █"
    set "5x7_7= ███  ███ █████ ███     █ ███  ███   █   ███  ███ "

    set "7x7_1= █████    █    ████   █████   █  █ ███████ █████ ███████ █████  █████ "
    set "7x7_2=██   ██  ██   █    █ █     █ █   █ █      █            ██     ██     █"
    set "7x7_3=█ █   █ █ █       █        ██    █ █      █           █ █     ██     █"
    set "7x7_4=█  █  █   █      █     ████ ██████ ██████ ██████     █   █████ ███████"
    set "7x7_5=█   █ █   █     █          █    █        ██    █    █   █     █      █"
    set "7x7_6=██   ██   █    █     █     █    █        ██     █  █    █     █      █"
    set "7x7_7= █████  █████ ███████ █████     █  ██████  █████  █      █████  █████ "
)

if "%Choice%"=="3x5" (
    set "Output1="
    set "Output2="
    set "Output3="
    set "Output4="
    set "Output5="
    goto 3x5
)
if "%Choice%"=="5x5" (
    set "Output1="
    set "Output2="
    set "Output3="
    set "Output4="
    set "Output5="
    goto 5x5
)
if "%Choice%"=="5x7" (
    set "Output1="
    set "Output2="
    set "Output3="
    set "Output4="
    set "Output5="
    set "Output6="
    set "Output7="
    goto 5x7
)
if "%Choice%"=="7x7" (
    set "Output1="
    set "Output2="
    set "Output3="
    set "Output4="
    set "Output5="
    set "Output6="
    set "Output7="
    goto 7x7
)


:3x5
if "%3"=="" goto eof
set /a "Math=%3*3"
if %Math% gtr 27 echo Malformed Input & exit /b
if %Math% lss 0 echo Malformed Input & exit /b
Set "TempVar1=%3"
if "%TempVar1:~2,1"=="" echo Malformed Input & exit /b
set "Output1=%Output1% !3x5_1:~%Math%,3!"
set "Output2=%Output2% !3x5_2:~%Math%,3!"
set "Output3=%Output3% !3x5_3:~%Math%,3!"
set "Output4=%Output4% !3x5_4:~%Math%,3!"
set "Output5=%Output5% !3x5_5:~%Math%,3!"
shift
goto 3x5

:5x5
if "%3"=="" goto eof
set /a "Math=%3*5"
if %Math% gtr 45 echo Malformed Input & exit /b
if %Math% lss 0 echo Malformed Input & exit /b
Set "TempVar1=%3"
if "%TempVar1:~2,1"=="" echo Malformed Input & exit /b
set "Output1=%Output1% !5x5_1:~%Math%,5!"
set "Output2=%Output2% !5x5_2:~%Math%,5!"
set "Output3=%Output3% !5x5_3:~%Math%,5!"
set "Output4=%Output4% !5x5_4:~%Math%,5!"
set "Output5=%Output5% !5x5_5:~%Math%,5!"
shift
goto 5x5

:5x7
if "%3"=="" goto eof
set /a "Math=%3*5"
if %Math% gtr 45 echo Malformed Input & exit /b
if %Math% lss 0 echo Malformed Input & exit /b
Set "TempVar1=%3"
if "%TempVar1:~2,1"=="" echo Malformed Input & exit /b
set "Output1=%Output1% !5x7_1:~%Math%,5!"
set "Output2=%Output2% !5x7_2:~%Math%,5!"
set "Output3=%Output3% !5x7_3:~%Math%,5!"
set "Output4=%Output4% !5x7_4:~%Math%,5!"
set "Output5=%Output5% !5x7_5:~%Math%,5!"
set "Output6=%Output6% !5x7_6:~%Math%,5!"
set "Output7=%Output7% !5x7_7:~%Math%,5!"
shift
goto 5x7

:7x7
if "%3"=="" goto eof
set /a "Math=%3*7"
if %Math% gtr 63 echo Malformed Input & exit /b
if %Math% lss 0 echo Malformed Input & exit /b
Set "TempVar1=%3"
if "%TempVar1:~2,1"=="" echo Malformed Input & exit /b
set "Output1=%Output1% !7x7_1:~%Math%,7!"
set "Output2=%Output2% !7x7_2:~%Math%,7!"
set "Output3=%Output3% !7x7_3:~%Math%,7!"
set "Output4=%Output4% !7x7_4:~%Math%,7!"
set "Output5=%Output5% !7x7_5:~%Math%,7!"
set "Output6=%Output6% !7x7_6:~%Math%,7!"
set "Output7=%Output7% !7x7_7:~%Math%,7!"
shift
goto 7x7










:eof

if "%Choice%"=="3x5" (
    for /l %%a in (0 1 5) do (
        set "Output%%a=!Output%%a:█=%Symbol%!"
    )
    echo !Output1!
    echo !Output2!
    echo !Output3!
    echo !Output4!
    echo !Output5!
)
if "%Choice%"=="5x5" (
    for /l %%a in (0 1 5) do (
        set "Output%%a=!Output%%a:█=%Symbol%!"
    )
    echo !Output1!
    echo !Output2!
    echo !Output3!
    echo !Output4!
    echo !Output5!

)
if "%Choice%"=="5x7" (
    for /l %%a in (0 1 7) do (
        set "Output%%a=!Output%%a:█=%Symbol%!"
    )
    echo !Output1!
    echo !Output2!
    echo !Output3!
    echo !Output4!
    echo !Output5!
    echo !Output6!
    echo !Output7!
)
if "%Choice%"=="7x7" (
    for /l %%a in (0 1 7) do (
        set "Output%%a=!Output%%a:█=%Symbol%!"
    )
    echo !Output1!
    echo !Output2!
    echo !Output3!
    echo !Output4!
    echo !Output5!
    echo !Output6!
    echo !Output7!
)
setlocal disabledelayedexpansion
exit /b

:help
echo.
echo This Is The Help Menu.
echo.
echo Arguments:
echo There Are Three Number Sizes.
echo 3x5, 5x5, 5x7 And 7x7.
echo.
echo You Can Specify Any Character For The Number To Be Made Of.
echo Note You Cannot Put Characters That You Have To Have ^^ Before.
echo.
echo The Numbers At The End Have To Be Separated By A Space.
echo.
echo Example: %0 ^"3x5^" ^"X^" 1 2 3
echo would produce:
echo.
%0 "3x5" "X" 1 2 3
echo.
exit /b