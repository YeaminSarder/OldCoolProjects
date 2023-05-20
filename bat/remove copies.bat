SETLOCAL ENABLEDELAYEDEXPANSION
@echo off
cd "C:\Users\Yeamin\Music"
set a=0

 for /R "./music" %%I in (*) do (if exist "C:\Users\Yeamin\Music\sim\%%~nI%%~xI" del "C:\Users\Yeamin\Music\sim\%%~nI%%~xI" )

echo %a%
goto :EOF
:work

set p=%~1
pushd "%p:~0,-1%"
if exist %~2 echo hi
popd

goto :EOF




pause