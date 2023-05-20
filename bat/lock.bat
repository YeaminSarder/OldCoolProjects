@echo off
title yeamin
if exist abcd goto UNLOCK
if not exist HiddenFolder goto MDHIDDENFOLDER
:CONFIRM
echo are you sure to lock this folder?(y/n)
set/p "cho=>"
color 04
if %cho%==y goto lock
if %cho%==n color 04
echo invalid choice
color 00
goto confirm
:LOCK
color 02
ren HiddenFolder abcd
atrib +h +s abcd
ren "lock.bat" unlock.bat
echo folder locked
pause
goto end
:UNLOCK
echo enter paswoord
set/p "pass=>"
if not %pass%==1791 goto RETYPE
color 02
attrib -h -s abcd
ren abcd HiddenFolder
ren "unlock.bat" lock.bat
echo folder unlocked
goto END
:RETYPE
color 04
echo invalid password
echo what do you want to do? r-retype passwoed c-close window
set/p "w=>"
if %w%==r goto UNLOCK
goto END
:MDHIDDENFOLDER
md HiddenFolder
echo HiddenFolder created
goto END
:END