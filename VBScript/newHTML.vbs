docs="E:\documents"

set ShellO=createobject("wscript.shell")						'runs shellcommands
'Set WMIO = GetObject("winmgmts:\\.\root\cimv2")					'the wmi object //used to get classes
Set FSO = CreateObject("scripting.FilesyStemObject")					'the file system object


name= inputbox("Name: ","New HTML File by AI Yeamin")

if not name="" then
path= inputbox("Path: ","New HTML File by AI Yeamin",docs)
if not path="" then

set f1=FSO.getfile(docs & "\htmlBase.html")
fullname=path&"\"&name&".html"
f1.copy fullname, false


ShellO.run (path & "\" & name & ".html")
ShellO.Exec ("notepad.exe "&path & "\" & name & ".html")
set f2=FSO.openTextFile(docs & "\myAplications\lastOpened\lastOpened.txt",2)
f2.writeline(path & "\" & name & ".html")
end if
end if