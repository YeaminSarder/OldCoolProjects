set objfso=createobject("scripting.filesystemobject")
set objshell=createobject("wscript.shell")
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
strdsn=replace(strpath,"E:\My music","c:\\Users\khan\Music")
'objfso.createfolder(replace(strpath,"e:\My music","c:\\Users\khan\Music"))
if objfso.folderexists(strdsn)=false  then
'msgbox strdsn
objfso.createfolder(strdsn)
end if
set colfiles=(objfolder.files)
for each objfile in colfiles
strmusic=objfile.path
Mext=objfso.getextensionname(strmusic)
if Mext="mp3" then 
set objm=objfso.getfile (strmusic)
objm.copy strdsn,false
'else 
'msgbox "no"
end if
next
loop
end if
msgbox "done"