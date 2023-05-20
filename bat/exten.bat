SETLOCAL ENABLEDELAYEDEXPANSION
set /p "ddd=>Drop file here.."
set /p "xxx=>Type ext:"

set eee=%ddd%
set ddd=%ddd:*\=%
set ddd=%ddd:*\=%
set ddd=%ddd:*\=%
set ddd=%ddd:*\=%
set ddd=%ddd:*\=%
set ddd=%ddd:*\=%
set ttt=%ddd:*.=.%
set ddd=!ddd:%ttt%=%xxx%!
ren %eee% "%ddd%"
pause