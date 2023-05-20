'set objshell=createobject("wscript.shell")						'runs shellcommands
'Set WMIO = GetObject("winmgmts:\\.\root\cimv2")					'the wmi object //used to get classes
'Set FSO = CreateObject("scripting.FilesyStemObject")					'the file system object


'Set BatteryC = WMIO.ExecQuery("Select * from Win32_Battery")				'wmi battery class