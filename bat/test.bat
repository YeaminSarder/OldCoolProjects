for /l %%c in (1,1,5) do ( set c=%%c & call :s)
:s
set /a n%c% = %c%+1
echo n%c%
pause