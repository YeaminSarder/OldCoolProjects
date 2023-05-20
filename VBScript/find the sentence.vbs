randomize
set objfso=createobject("scripting.filesystemobject")
set objtxt=objfso.opentextfile("C:\Users\khan\Documents\sentence.txt",8)
objtxt.writeline("yes"&vbenter)
objtxt.writeline("yes"&vbcr)