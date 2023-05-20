'                          *OBJECTS* 
set objfso     = createobject        ( "scripting.filesystemobject" )
set objtxtR    = objfso.opentextfile ("C:\Users\khan\Documents\TimeLeftLog.txt",1)

set objS       = createobject        ( "sapi.spvoice" )
set objShell   = createobject        ( "wscript.shell" )

do until objtxtR.atendofstream
   dateT=objtxtR.readline
   limit=objtxtR.readline
loop

set objtxtW    = objfso.opentextfile ("C:\Users\khan\Documents\TimeLeftLog.txt",2)

if not strcomp(dateT,Date)=0 then
   objtxtW.writeline Date
   objtxtW.writeline 100
   set objtxtR    = objfso.opentextfile ("C:\Users\khan\Documents\TimeLeftLog.txt",1)

   do until objtxtR.atendofstream
      dateT=objtxtR.readline
      limit=objtxtR.readline
      exit do
   loop
End If 

objS.speak "It is " & time & " now. And " & "time left:" & limit & " minutes"

Do
   limit= limit - 1
   objtxtw.writeline Date
   objtxtw.writeline limit
   t=split ( time , ":" )
   min=t(1)

   if min=15  or min=30 or min=45 or min=00 then
      objS.speak "It is " & time & " now. And " & "time left:" & limit & "minutes"
   end if

   select case limit
          case 15
               objS.speak "It's your last quarter hour."
    	  case 10
               objS.speak "Ther's only 10 minutes"
	  case 5
	       objS.speak "Five minutes more!"
	  case 0
	       objS.speak "Time's up!"
	       exit do
   end select 
wscript.sleep 60000
loop
objShell.run "C:\Windows\System32\shutdown.exe /s "