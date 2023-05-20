@echo off 
title THINK BIGGER - V-1.2
:bigin
set /a a=0
set /a b=0
set /a c=0
set /a d=0
set /a e=0
set /a f=0
set /a g=0
set /a h=0
set /a i=0
set /a score=2
set /a level=2
set /a step=0
set /a col=0
:a
if /i %a% gtr %level% set /a level=%a%
if /i %b% gtr %level% set /a level=%b%
if /i %c% gtr %level% set /a level=%c%
if /i %d% gtr %level% set /a level=%d%
if /i %e% gtr %level% set /a level=%e%
if /i %f% gtr %level% set /a level=%f%
if /i %g% gtr %level% set /a level=%g%
if /i %h% gtr %level% set /a level=%h%
if /i %i% gtr %level% set /a level=%i%
if /i %a% lss 10 set aa=   &goto b
if /i %a% lss 100 set aa=  &goto b
if /i %a% lss 1000 set aa= &goto b
if /i %a% lss 10000 goto b
:b
if /i %b% lss 10 set bb=   & goto c
if /i %b% lss 100 set bb=  & goto c
if /i %b% lss 1000 set bb= & goto c
if /i %b% lss 10000 goto c
:c
if /i %c% lss 10 set cc=   & goto d
if /i %c% lss 100 set cc=  & goto d
if /i %c% lss 1000 set cc= & goto d
if /i %c% lss 10000 goto d
:d
if /i %d% lss 10 set dd=   & goto e
if /i %d% lss 100 set dd=  & goto e
if /i %d% lss 1000 set dd= & goto e
if /i %d% lss 10000 goto e
:e
if /i %e% lss 10 set ee=   & goto f
if /i %e% lss 100 set ee=  & goto f
if /i %e% lss 1000 set ee= & goto f
if /i %e% lss 10000 goto f
:f
if /i %f% lss 10 set ff=   & goto g
if /i %f% lss 100 set ff=  & goto g
if /i %f% lss 1000 set ff= & goto g
if /i %f% lss 10000 goto g
:g
if /i %g% lss 10 set gg=   & goto h
if /i %g% lss 100 set gg=  & goto h
if /i %g% lss 1000 set gg= & goto h
if /i %g% lss 10000 goto h
:h
if /i %h% lss 10 set hh=   & goto i
if /i %h% lss 100 set hh=  & goto i
if /i %h% lss 1000 set hh= & goto i
if /i %h% lss 10000 goto i
:i
if /i %i% lss 10 set ii=   & goto desplay
if /i %i% lss 100 set ii=  & goto desplay
if /i %i% lss 1000 set ii= & goto desplay
if /i %i% lss 10000 goto desplay
:desplay
set /a r=%random:~1,1%
echo %r%
if %r%==1 goto aaa
if %r%==2 goto bbb
if %r%==3 goto ccc
if %r%==4 goto ddd
if %r%==5 goto eee
if %r%==6 goto fff
if %r%==7 goto ggg
if %r%==8 goto hhh
if %r%==9 goto iii
goto a
:desplay2
set /a col=0
if %a%==0 set /a col=%col%+1
if %b%==0 set /a col=%col%+1
if %c%==0 set /a col=%col%+1
if %d%==0 set /a col=%col%+1
if %e%==0 set /a col=%col%+1
if %f%==0 set /a col=%col%+1
if %g%==0 set /a col=%col%+1
if %h%==0 set /a col=%col%+1
if %i%==0 set /a col=%col%+1
if /i %col% lss 10 color 0a
if /i %col% lss 7 color 0b
if /i %col% lss 4 color 0c
cls
ECHO              THINK AS BIG AS YOU CAN AND CAPTURE THE HIGH SCORE
Echo                            created by:yeamin serder
echo           :PRESS         .------.------.------.            SCORE: %score%
echo           :"HELP" FOR    :      :      :      :    THOUGHT LEVEL: %level%
echo           :HELP          : %aa%%a% : %bb%%b% : %cc%%c% :             STEP: %step%
echo                          :      :      :      :
echo                           ------+------+------ 
echo                          :      :      :      :
echo                          : %dd%%d% : %ee%%e% : %ff%%f% :
echo                          :      :      :      :
echo                           ------+------+------ 
echo                          :      :      :      :
echo                          : %gg%%g% : %hh%%h% : %ii%%i% :
echo                          :      :      :      :
echo                           ------'------'------
goto user

:aaa
if %a%==0 (set /a a=2) else goto a
goto desplay2
:bbb
if %b%==0 (set /a b=2) else goto a
goto desplay2
:ccc
if %c%==0 (set /a c=2) else goto a
goto desplay2
:ddd
if %d%==0 (set /a d=2) else goto a
goto desplay2
:eee
if %e%==0 (set /a e=2) else goto a
goto desplay2
:fff
if %f%==0 (set /a f=2) else goto a
goto desplay2
:ggg
if %g%==0 (set /a g=2) else goto a
goto desplay2
:hhh
if %h%==0 (set /a h=2) else goto a
goto desplay2
:iii
if %i%==0 (set /a i=2) else goto a
goto desplay2
:user
if %col%==0 if not %a%==%b% if not %b%==%c% if not %d%==%e% if not %e%==%f% if not %g%==%h% if not %h%==%i% if not %a%==%d% if not %d%==%g% if not %b%==%e% if not %e%==%h% if not %c%==%f% if not %f%==%i% goto gameover
set /a score=%score%+%level%
set /a step=%step%+1
set /p "cho=>"
if %cho%==w goto up
if %cho%==s goto down
if %cho%==a goto left
if %cho%==d goto right
:right
if %b%==0 set /a b=%a%&set /a a=0
if %c%==0 set /a c=%b%&set /a b=%a%&set /a a=0
if %b%==%c% set /a c=%b%+%b%&set /a b=%a%&set /a a=0
if %a%==%b% set /a b=%a%+%a%&set /a a=0

if %e%==0 set /a e=%d%&set /a d=0
if %f%==0 set /a f=%e%&set /a e=%d%&set /a d=0
if %e%==%f% set /a f=%e%+%e%&set /a e=%d%&set /a d=0
if %d%==%e% set /a e=%d%+%d%&set /a d=0

if %h%==0 set /a h=%g%&set /a g=0
if %i%==0 set /a i=%h%&set /a h=%g%&set /a g=0
if %h%==%i% set /a i=%h%+%h%&set /a h=%g%&set /a g=0
if %g%==%h% set /a h=%g%+%g%&set /a g=0
goto a
:left
if %b%==0 set /a b=%c%&set /a c=0
if %a%==0 set /a a=%b%&set /a b=%c%&set /a c=0
if %b%==%a% set /a a=%b%+%b%&set /a b=%c%&set /a c=0
if %c%==%b% set /a b=%c%+%c%&set /a c=0

if %e%==0 set /a e=%f%&set /a f=0
if %d%==0 set /a d=%e%&set /a e=%f%&set /a f=0
if %e%==%d% set /a d=%e%+%e%&set /a e=%f%&set /a f=0
if %f%==%e% set /a e=%f%+%f%&set /a f=0

if %h%==0 set /a h=%i%&set /a i=0
if %g%==0 set /a g=%h%&set /a h=%i%&set /a i=0
if %h%==%g% set /a g=%h%+%h%&set /a h=%i%&set /a i=0
if %i%==%h% set /a h=%i%+%i%&set /a i=0
goto a
:down
if %d%==0 set /a d=%a%&set /a a=0
if %g%==0 set /a g=%d%&set /a d=%a%&set /a a=0
if %d%==%g% set /a g=%d%+%d%&set /a d=%a%&set /a a=0
if %a%==%d% set /a d=%a%+%a%&set /a a=0

if %e%==0 set /a e=%b%&set /a b=0
if %h%==0 set /a h=%e%&set /a e=%b%&set /a b=0
if %e%==%h% set /a h=%e%+%e%&set /a e=%b%&set /a b=0
if %b%==%e% set /a e=%b%+%b%&set /a b=0

if %f%==0 set /a f=%c%&set /a c=0
if %i%==0 set /a i=%f%&set /a f=%c%&set /a c=0
if %f%==%i% set /a i=%f%+%f%&set /a f=%c%&set /a c=0
if %c%==%f% set /a f=%c%+%c%&set /a c=0
goto a
:up
if %d%==0 set /a d=%g%&set /a g=0
if %a%==0 set /a a=%d%&set /a d=%g%&set /a g=0
if %d%==%a% set /a a=%d%+%d%&set /a d=%g%&set /a g=0
if %g%==%d% set /a d=%g%+%g%&set /a g=0

if %e%==0 set /a e=%h%&set /a h=0
if %b%==0 set /a b=%e%&set /a e=%h%&set /a h=0
if %e%==%b% set /a b=%e%+%e%&set /a e=%h%&set /a h=0
if %h%==%e% set /a e=%h%+%h%&set /a h=0

if %f%==0 set /a f=%i%&set /a i=0
if %c%==0 set /a c=%f%&set /a f=%i%&set /a i=0
if %f%==%c% set /a c=%f%+%f%&set /a f=%i%&set /a i=0
if %i%==%f% set /a f=%i%+%i%&set /a i=0
goto a
:gameover
echo TYPE "Y" TO REPLAY...
ECHO     ....   ...   .   .  .....     ...   .   .  .....  ....
ECHO    .      .   .  .. ..  .        .   .  .   .  .      .   .
ECHO    .      .....  . . .  .....    .   .  .   .  .....  ....
ECHO    . ...  .   .  .   .  .        .   .   . .   .      . .
ECHO    . . .  .   .  .   .  .        .   .    .    .      .  .
ECHO     .. .  .   .  .   .  .....     ...     .    .....  .   .
SET /P "Z=>"
IF %Z%==y GOTO bigin
if %Z%==save goto save
:save
set /p "name=what's your name? >"
echo %date%
echo %time%
echo player:%name%
echo schore:%score%
echo level:%level%
echo step:%step%>>"%name%.txt"