@echo off
:a
if %time:~3,2%==15 goto o
if %time:~3,2%==30 goto o
if %time:~3,2%==45 goto o
if %time:~3,2%==00 goto o
goto a
:o
cscript "spe.vbs" //nologo
goto a