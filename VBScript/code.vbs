set objfso=createobject("scripting.filesystemobject")
objfso.deletefolder "E:\My music codes\*"
set objshell=createobject("wscript.shell")

intcode=1


set objtext2=objfso.opentextfile("countcopy.txt",1)

do until objtext2.atendofstream
str1=objtext2.readline
set objtext=objfso.opentextfile("countfiles.txt",1)
do until objtext.atendofstream
if str1 = objtext.readline then
e=1
exit do
end if
loop
if e=0 then
e=2
msgbox "Code creation failed!"&vbcr&str1 & "  not found.Edit that."
exit do
else
e=0

end if
loop

'set objfile=objfso.getfile("C:\Users\khan\Documents\countcopy.txt")
'objfile.delete True

if not e=2 then
set objtext=objfso.opentextfile("countfiles.txt",1)
do until objtext.atendofstream
set objfolder=objfso.getfolder(objtext.readline)
strpath=(objfolder.path)
if not objfolder.files.count=0 then
objfso.createfolder(replace(strpath,"My music","My music codes") & "(" & intcode & ")")
else
objfso.createfolder(replace(strpath,"My music","My music codes"))
end if
intcode = objfolder.files.count + intcode
loop
wscript.echo "CODE CREATION WAS SUCCESSFUL"
end if
set objtext2=nothing 
set objfile=objfso.getfile("C:\Users\khan\Documents\countcopy.txt")
objfile.delete True
objshell.run "C:\Users\khan\Documents\Code.bat"