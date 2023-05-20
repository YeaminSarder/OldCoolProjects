
if exist "Lock.bat" (ren f f.{645FF040-5081-101B-9F08-00AA002F954E} & ren "Lock.bat" "Unlocks.bat" )
if exist "Unlock.bat" (ren f.{645FF040-5081-101B-9F08-00AA002F954E} f & ren "Unlock.bat" "Locks.bat" )
if exist "Locks.bat" ren "Locks.bat" "Lock.bat"
if exist "Unlocks.bat" ren "Unlocks.bat" "Unlock.bat"
pause