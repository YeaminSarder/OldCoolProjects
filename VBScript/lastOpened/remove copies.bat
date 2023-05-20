cd "C:\Users\Yeamin\Music"
set a=0

for /R ./sim %%~nI in (*.mp3) do (for /R ./music %%J in (.) do (echo %j%%I%))
pause