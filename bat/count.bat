@echo off
:bigin
set /a a=0
echo see how fast your windows can count
echo till what do you want to count?
set /p "till=>"
:updown
echo count down or count up?(1/2)
echo press 3 to set count delay.
set /p "cho=>"
if %cho%==3 goto countdelay
if %cho%==1 goto down
if %cho%==2 goto up
:check
set /a endtime=%time:~9,1% + %delay%
if /i %endtime% geq 10 (set/a endtime=%endtime%-10)
:check2
if /i %time:~9,1% neq %endtime% goto check2
if %ch%==1 goto down2
if %ch%==2 goto up2
:down
cls
echo %till%
set /a till=%till% - 1
if /i %till% neq 0 goto down
echo press any key to do it again
pause
goto bigin
:down2
cls
echo %till%
set /a till=%till% - 1
if %till%==0 goto bigin
goto check
:up
set /a a=0
:upp
cls
set /a a= %a% + 1
echo %a%
if %a%==%till% goto bigin
goto upp
:up2
cls
set /a a= %a% + 1
echo %a%
if %a%==%till% goto bigin
goto check
:countdelay
echo set count delay
set /p "delay=>"
echo count down/up?(1/2)
set /p "ch=>"
goto check