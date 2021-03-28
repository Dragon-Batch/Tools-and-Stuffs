@echo off
set "OutPut=%~n1%~x1.bat"
set "FileName=%~n1"
set "FileExt=%~x1"
if "%OutPut%"==".bat" (
    exit 1
)

if "%~1"=="-h" (
    set CheckIfHelp=Help
) else (
    set CheckIfHelp=Args
)

goto %CheckIfHelp%

::Start Of Args Input Translator
:Args
set "Args=0"

if "%Args%"=="0" (
if /i "%~2" equ "-r" (
    set "Args=1"
) else (
    set "Args=0"
)
)

if "%Args%"=="0" (
    if /i "%~2" equ "-d" (
        set "Args=2"
    ) else (
        set "Args=0"
    )
)

if "%Args%"=="0" (
    if /i "%~2" equ "-e" (
        set "Args=3"
    ) else (
        set "Args=0"
    )
)

::Make The AddEcho File
:AddEcho
if not exist "AddEcho.exe" (
    (echo -----BEGIN CERTIFICATE----- & echo TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAgAAAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v & echo dCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJAAAAAAAAABQRQAATAECAAAAAAAAAAAA & echo AAAAAOAADwMLAQYAAAQAAAACAAAAAAAA1BAAAAAQAAAAIAAAAABAAAAQAAAAAgAA & echo BAAAAAAAAAAEAAAAAAAAAAAwAAAAAgAAa0wAAAMAAAAAABAAABAAAAAAEAAAEAAA & echo AAAAABAAAAAAAAAAAAAAABAgAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAA4IAAAPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC50ZXh0AAAA & echo 2AIAAAAQAAAABAAAAAIAAAAAAAAAAAAAAAAAACAAAGAuZGF0YQAAAFwBAAAAIAAA & echo AAIAAAAGAAAAAAAAAAAAAAAAAABAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC4BCAAAOjOAQAAiwU4IEAA & echo g8AgULgAIEAAUOhpAgAAg8QIuAAAAACIhf/f//+LBTggQABQuAAgAABQjYUA4P// & echo UOhKAgAAg8QMg/gAD4UFAAAA6XoAAAAPvoX/3///g/gAD4QjAAAAiwU4IEAAg8Ag & echo ULgGIEAAUOgMAgAAg8QIuAAAAACIhf/f//+LBTggQACDwCBQjYUA4P//UOjoAQAA & echo g8QIuAoAAABQjYUA4P//UOjjAQAAg8QIg/gAD4QLAAAAuAEAAACIhf/f///pXP// & echo /8nDAFWJ5YHsJAAAAJCNRehQ6GIBAACDxAS4AAAAAIlF5LgBAAAAUOijAQAAg8QE & echo uAAAAwBQuAAAAQBQ6JcBAACDxAiLBVAgQACLDVQgQACLFVggQACJReCNReRQiwVY & echo IUAAUFJRi0XgUOhxAQAAg8QUiwVQIEAAiw1UIEAAixVYIEAAiUXciwJQiwFQi0Xc & echo iwBQ6Jj+//+DxAxQ6EcBAACDxATJw1WJ5YHsBAAAAJCLBVAgQACLTQiJCIsFVCBA & echo AItNDIkIuAAAAwBQuAAAAQBQ6AEBAACDxAiLBVAgQACLDVQgQACLFVggQACJRfyL & echo AlCLAVCLRfyLAFDoMP7//4PEDMnDAAAAhywkVY1sJARRiemB6QAQAACFAS0AEAAA & echo PQAQAAB97CnBhQGJ4InMiwj/YASLRezD6Pf///+LAIsAw+jt////UOjr////UOid & echo AAAAg8QIw4tl6OjZ////UOiTAAAAAAAA/////xISQAAnEkAA6YcAAABVi2wkCI1E & echo JAyJRQAxwIlFBGShAAAAAIlFCLhEEkAAiUUMuDgSQACJRRAxwIlFFI1FCGSjAAAA & echo AF3DAAAAAAD/JTwgQAAAAP8lQCBAAAAA/yVEIEAAAAD/JUggQAAAAP8lTCBAAAAA & echo /yVcIEAAAAD/JWAgQAAAAP8lZCBAAAAA/yVoIEAAAAD/JWwgQAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo ZWNobyAAZWNobyAAAAAAAHQgAAAAAAAAAAAAALAgAAA4IAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAC7IAAAwiAAAMogAADSIAAA2yAAAOwgAAD5IAAAAiEAAAshAAAWIQAA & echo JiEAAC0hAAA7IQAAQyEAAAAAAAC7IAAAwiAAAMogAADSIAAA2yAAAOwgAAD5IAAA & echo AiEAAAshAAAWIQAAJiEAAC0hAAA7IQAAQyEAAAAAAABtc3ZjcnQuZGxsAAAAX2lv & echo YgAAAGZwdXRzAAAAZmdldHMAAABzdHJjaHIAAABfX3NldF9hcHBfdHlwZQAAAF9j & echo b250cm9sZnAAAABfX2FyZ2MAAABfX2FyZ3YAAABfZW52aXJvbgAAAF9fZ2V0bWFp & echo bmFyZ3MAAABleGl0AAAAX1hjcHRGaWx0ZXIAAABfZXhpdAAAAF9leGNlcHRfaGFu & echo ZGxlcjMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA & echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA= & echo -----END CERTIFICATE-----)>AddEcho.tmp 
    certutil -decode "AddEcho.tmp" "AddEcho.exe" >nul
    del /f /q "AddEcho.tmp " >nul
)
goto Convert



::Start Of Convert
:Convert
echo Converting Your File. Please Wait..
certutil -encode "%~1" "temp.txt" >nul
(
    echo @echo off
    echo if exist "%FileName%%FileExt%" goto :Args
    echo SetLocal EnableExtensions
    echo echo. 2^>temp.txt 1^>nul
    echo ^>^>temp.txt call :Extraction
    echo certutil -decode "temp.txt" "%FileName%%FileExt%" ^>nul
    echo del /q "temp.txt"
    echo goto :Args
    echo Rem Start-
)>"%OutPut%"

AddEcho.exe <temp.txt >>"%OutPut%"

(
    echo Rem End-
    echo goto :Args
    echo :Extraction
    echo set "_out="
    echo for /f "usebackq tokens=*" %%%%G in ^("%%~f0"^) do ^(
    echo   if "%%%%~G"=="Rem Start-" set "_out=yes"
    echo   if defined _out %%%%~G
    echo   if "%%%%~G"=="Rem End-" exit /b 0
    echo ^)
    echo :Args
)>>"%OutPut%"

if "%Args%"=="1" (
    echo start "" "%FileName%%FileExt%">>"%OutPut%"
)

if "%Args%"=="2" (
    echo start /wait "" "%FileName%%FileExt%">>"%OutPut%"
    echo del /f /q "%FileName%%FileExt%">>"%OutPut%"
)

if "%Args%"=="3" (
    echo start /wait "" "%FileName%%FileExt%">>"%OutPut%"
    echo del /f /q "%FileName%%FileExt%">>"%OutPut%"
    echo del /f /q "%%~0">>"%OutPut%"
)

::Start Of Cleaning Up Process
:Cleaning
echo Almost Done. Cleaning Up Convert..
del /f /q "AddEcho.exe"
del /f /q "temp.txt"

::Complete
:Complete
echo Done^!
pause >nul
goto :eof

:Help
echo =======================================================================
echo These Are The Only Arguments, Only Use One At A Time,
echo.
echo.
echo.
echo.   -r Runs The Extracted File When It Has Finished Extracting.
echo.
echo.   -d Runs The Extracted File And Waits For The Windows To Close, Then Deletes The Extracted File.
echo.
echo.   -e Runs The Extracted File And Waits For The Windows To Close, Then Deletes Both Files Effectively Erasing It.
echo.
echo.   -h Shows The Help Dialog
echo.
echo.   Example Of Using This Tool:
echo.   "Inside Batch By Kvc And Dragon_Batch.bat" "FileName.Ext" -r
echo.   "Inside Batch By Kvc And Dragon_Batch.bat" "FileName.Ext" -d
echo.   "Inside Batch By Kvc And Dragon_Batch.bat" "FileName.Ext" -e
echo.   "Inside Batch By Kvc And Dragon_Batch.bat" -h
echo =======================================================================
echo Press Any Button To Exit This Window.
pause >nul
exit /b