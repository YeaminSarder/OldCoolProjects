@echo off
echo are you sure to fall in a loop?
set/p "a=>"
if a==y goto b
:b
:confirm
echo a
goto confirm
