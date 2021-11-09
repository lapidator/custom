' This script is meant to be launched from the Windows side, to start up a decorationless
' VcXsrv container for the environment.
'
' You may need to change this to reflect your VcXsrv install path as well as screen resolution.
' Then after the VcXsrv container is running, it pulls the WSL Ubuntu into it, along with a launch script.

Set shell = CreateObject("WScript.Shell" ) 
shell.Run """C:\Program Files\VcXsrv\vcxsrv.exe"" :0 -screen 0 @1 -ac +xinerama -engine 1 -nodecoration -wgl"
WScript.Sleep 200
shell.Run "ubuntu -c ""~/.scripts/wlaunch""", 0

' this seems to be a comment
' :0 is the screen number (via GUI it says -1 to let automatically detect)
' -screen 0 @1 where 0 is the screen number, @1 refers to the first monitor, s.th. like -screen 0 800x600+100+100@2 ; 2nd monitor offset 100,100 size 800x600 might also be possible (not sure whether I need that when changing things later, test this)
' -ac disables access control restrictions (yes, need that)
' +xinerama enables Xinerama extension (dunno what this does)
' -engine 1 overrides the server's automatically selected engine type, where 1 is Shadow GDI (dunno if I need this)
' -nodecoration is for window mode and opens a decorationless window (e.g. no title bar) (do not want that, change this)
' -wgl enables the GLX extension to use the native Windows WGL interface for hardware-accelerated OpenGL (yes, need that)

' another suggestion is s.th. like from Windows PowerShell Xlaunch.exe -run config.xlaunch
' & 'C:\Program Files\VcXsrv\xlaunch.exe' -run 'C:\Daten\Dropbox\misc\codes_scripts_PC-info\exported data\VcXsrv\fin_config.xlaunch'

' my version:
Set shell = CreateObject("WScript.Shell")
shell.Run "& ""C:\Program Files\VcXsrv\xlaunch.exe"" -run ""C:\Daten\Dropbox\misc\codes_scripts_PC-info\exported data\VcXsrv\fin_config.xlaunch"""
WScript.Sleep 200
shell.Run "debian -c ""/home/localuser/program/my/launchi3"""