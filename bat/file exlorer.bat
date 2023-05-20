@echo off
:bigin
dir /w
echo Type your command here
set /p "com=>"
if %com%==' goto open
if %com%==dt goto delthat
echo command not available
goto bigin
:open
set /p "comm=>"
cd %comm%
cls
goto bigin
:delthat
cd ..
rd /s "%comm%"
echo DELITED
goto bigin