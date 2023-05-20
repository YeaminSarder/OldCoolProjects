docs="E:\documents"
Set ShellO = createObject("wscript.shell")
Set FSO    = createObject("scripting.fileSystemObject")

set F = FSO.openTextFile(docs & "\myAplications\lastOpened\lastOpened.txt",1)
D = F.readline
ShellO.run(D)
ShellO.exec("notepad " & D)




