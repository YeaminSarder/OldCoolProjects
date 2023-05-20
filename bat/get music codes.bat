@echo off
pushd E:\My music
set /a b=0
for /f /r in (*) do call :a&echo %%i
echo %b%
pause
:a
set /a b=%b%+1
exit /b

