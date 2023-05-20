@echo off
:bigin
set a=0
set b=0
set c=0
set d=0
set e=0
set f=0
set g=0
set h=0
set i=0
:desplay
cls
echo                                   %a% : %b% : %c%
echo                                   --:---:--
echo                                   %d% : %e% : %f%
echo                                   --:---:--
echo                                   %g% : %h% : %i%
:human
echo IT'S YOUR TURN..
set /p "hu=>"
if %hu%==1 goto a
if %hu%==2 goto b
if %hu%==3 goto c
if %hu%==4 goto d
if %hu%==5 goto e
if %hu%==6 goto f
if %hu%==7 goto g
if %hu%==8 goto h
if %hu%==9 goto i
echo NOT VALID.ENTER AGIN
GOTO human
:a
if %a%==0 set a=1
goto cpu
:b
if %b%==0 set b=1
goto cpu
:c
if %c%==0 set c=1
goto cpu
:d
if %d%==0 set d=1
goto cpu
:e
if %e%==0 set e=1
goto cpu
:f
if %f%==0 set f=1
goto cpu
:g
if %g%==0 set g=1
goto cpu
:h
if %h%==0 set h=1
goto cpu
:i
if %i%==0 set i=1
goto cpu
:cpu
set /a w1=%a% + %b% + %c%
if %w1%==14 goto ihavewon1
set /a w1=%d% + %e% + %f%
if %w1%==14 goto ihavewon2
set /a w1=%g% + %h% + %i%
if %w1%==14 goto ihavewon3
set /a w1=%a% + %d% + %g%
if %w1%==14 goto ihavewon4
set /a w1=%b% + %e% + %h%
if %w1%==14 goto ihavewon5
set /a w1=%c% + %f% + %i%
if %w1%==14 goto ihavewon6
set /a w1=%a% + %e% + %i%
if %w1%==14 goto ihavewon7
set /a w1=%c% + %e% + %g%
if %w1%==14 goto ihavewon8
goto cpu2
:ihavewon1
if %a%==0 set a=7
if %b%==0 set b=7
if %c%==0 set c=7
goto desplay
:ihavewon2
if %d%==0 set d=7
if %e%==0 set e=7
if %f%==0 set f=7
goto desplay
:ihavewon3
if %g%==0 set g=7
if %h%==0 set h=7
if %i%==0 set i=7
goto desplay
:ihavewon4
if %a%==0 set a=7
if %d%==0 set d=7
if %g%==0 set g=7
goto desplay
:ihavewon5
if %b%==0 set b=7
if %e%==0 set e=7
if %h%==0 set h=7
goto desplay
:ihavewon6
if %c%==0 set c=7
if %f%==0 set f=7
if %i%==0 set i=7
goto desplay
:ihavewon7
if %a%==0 set a=7
if %e%==0 set e=7
if %i%==0 set i=7
goto desplay
:ihavewon8
if %c%==0 set c=7
if %e%==0 set e=7
if %g%==0 set g=7
goto desplay
:cpu2
set /a w1=%a% + %b% + %c%
if %w1%==2 goto ihave1
set /a w1=%d% + %e% + %f%
if %w1%==2 goto ihave2
set /a w1=%g% + %h% + %i%
if %w1%==2 goto ihave3
set /a w1=%a% + %d% + %g%
if %w1%==2 goto ihave4
set /a w1=%b% + %e% + %h%
if %w1%==2 goto ihave5
set /a w1=%c% + %f% + %i%
if %w1%==2 goto ihave6
set /a w1=%a% + %e% + %i%
if %w1%==2 goto ihave7
set /a w1=%c% + %e% + %g%
if %w1%==2 goto ihave8
goto desplay
:ihave1
if %a%==0 set a=7
if %b%==0 set b=7
if %c%==0 set c=7
goto desplay
:ihave2
if %d%==0 set d=7
if %e%==0 set e=7
if %f%==0 set f=7
goto desplay
:ihave3
if %g%==0 set g=7
if %h%==0 set h=7
if %i%==0 set i=7
goto desplay
:ihave4
if %a%==0 set a=7
if %d%==0 set d=7
if %g%==0 set g=7
goto desplay
:ihave5
if %b%==0 set b=7
if %e%==0 set e=7
if %h%==0 set h=7
goto desplay
:ihave6
if %c%==0 set c=7
if %f%==0 set f=7
if %i%==0 set i=7
goto desplay
:ihave7
if %a%==0 set a=7
if %e%==0 set e=7
if %i%==0 set i=7
goto desplay
:ihave8
if %c%==0 set c=7
if %e%==0 set e=7
if %g%==0 set g=7
goto desplay