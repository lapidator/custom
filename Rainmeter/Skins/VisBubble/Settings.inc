;  __  __               ____             __       __       ___             
; /\ \/\ \  __         /\  _`\          /\ \     /\ \     /\_ \            
; \ \ \ \ \/\_\    ____\ \ \L\ \  __  __\ \ \____\ \ \____\//\ \      __   
;  \ \ \ \ \/\ \  /',__\\ \  _ <'/\ \/\ \\ \ '__`\\ \ '__`\ \ \ \   /'__`\ 
;   \ \ \_/ \ \ \/\__, `\\ \ \L\ \ \ \_\ \\ \ \L\ \\ \ \L\ \ \_\ \_/\  __/ 
;    \ `\___/\ \_\/\____/ \ \____/\ \____/ \ \_,__/ \ \_,__/ /\____\ \____\
;     `\/__/  \/_/\/___/   \/___/  \/___/   \/___/   \/___/  \/____/\/____/
;
; @author Malody Hoe / GitHub: madhoe / Twitter: maddhoexD
; http://madhoe.deviantart.com/art/VisBubble-for-Rainmeter-488601501
; UNIVERSAL SETTINGS
; You can override individual settings in the .ini files.
;========================================================================
;
; General FAQ:
; - HAVING PROBLEMS WITH AUDIO FREEZING?
; --- Reduce the FFTDecay value below.
; - USING TOO MUCH CPU?
; --- Reduce the NumOfItems, or FFTSize & FFTOverlap, or even increase the Update rate in individual files
;
[Variables]
; CHANGE PLAYER HERE! http://docs.rainmeter.net/manual/plugins/nowplaying
; This is to hide the visualizer when no music player is playing
Player=CAD
HideWhenNotPlaying=0
;
; The size of the circle
;[default: 256]
;[blue flower default: 215]
;[schroeder headphones default: 102]
Radius=9
;
; Color of shapes/lines/bars. ItemColor2 is for MultiLineExtrude
;[default: 255,255,255,255]
;[blue flower default: 93,120,157,255]
;[schroeder headphones default: 0,131,235,255]
ItemColor=18,18,18,255
ItemColor2=64,255,48,255
;
; For ShapeBubble or ShapeExtrude, you can specify your own shape image
ShapeFile=circle.png
;
; Width of shapes/lines/bars
;[default: 4]
;[blue flower default: 16]
;[schroeder headphones default: 24]
ItemWidth=4
;
; Number of shapes/lines/bars
;[default: 96]
;[blue flower default: 64]
;[schroeder headphones default: 38]
NumOfItems=48
;
; How much to extrude line/bar/shape or max shape size for ShapeBubble
;[default: 96]
;[blue flower default: 120]
;[schroeder headphones default: 180]
VariationMax=120
;
; The shapes extrude at a ^2 pace (You can set higher for ^n)
; ie. it's "more difficult" for the shapes to extrude
Squared=0
;
; Whether the line/bar/shape extrudes inwards or not
Inward=0
;
; Show a circle (above the lines), set to 0 to hide it
BackCircleSize=0
BackCircleColor=255,255,255,255
;
; ANGLES: In radians, you can also use Rad(<input value in deg>)
; NOTE: VALUES ARE ALWAYS CLOCKWISE, STARTING FROM 0 WHICH FACES RIGHT
; What angle does the lowest freq start at?
AngleStart=(Rad(270))
; How much angle the items fill, from 0 - 360 in rad.
AngleTotal=(Rad(360))
; Whether the AngleTotal and AngleStart affects the BackCircle, if 0 then circle will always be full
AnglesAffectBackCircle=1
;
; Set to 0 for counterCW, 1 for CW (DOES NOT affect AngleStart/AngleTotal)
ClockWise=0
;
; FFT Options: For more detailed info, read http://docs.rainmeter.net/manual-beta/plugins/audiolevel#FFTOptions
FFTSize=2048
FFTOverlap=1024
FFTAttack=40
FFTDecay=80
FreqMin=20
FreqMax=16000
Sensitivity=55
;
;
;
;=
; constants (don't edit!)
;============================
SCRIPT=#@#scripts/
INC=#@#includes/