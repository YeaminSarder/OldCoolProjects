@echo off
cd "c:\\Users\khan\Documents"

pushd e:\My music
for /r /d %%i in (*) do (echo %%i >> "c:\\Users\khan\Documents\countcopy.txt")

