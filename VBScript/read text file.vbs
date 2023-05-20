Const ForReading = 1
filename=inputbox("which file to read?")
set objFSO = CreateObject("Scripting.FileSystemObject")
set objTextFile = objFSO.OpenTextFile(filename ,ForReading)
do until objTextFile.AtEndOfStream
'for i=1 to 2
strTextLine = objTextFile.readline
wscript.echo strTextLine
'next
loop