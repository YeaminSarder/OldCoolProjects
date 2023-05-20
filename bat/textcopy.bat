@echo off
echo what do you want to copy?
set /p "text=>"
echo how many copy do you want?
set /p "n=>"
echo insert filename
set /p "x=>"
set a=0
:loop
echo %text% >>%x%.txt
set /a a=%a% + 1
if /i %a% lss %n% goto loop
echo are you sure to save?
set /p "y=>"
if y==n del %x%.txt
echo press any key to exit
pause