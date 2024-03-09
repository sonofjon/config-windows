#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Insert Date and Time (American)
^!a::
FormatTime, TimeString,, dddd, MMMM d, yyyy, h:mm tt
StringReplace, TimeString, TimeString, PM, pm
StringReplace, TimeString, TimeString, AM, am
SendInput %TimeString%
return

; Insert Date and Time (American) - Short version
^!+a::
FormatTime, TimeString,, M/d/yyyy ddd h:mm tt
StringReplace, TimeString, TimeString, PM, pm
StringReplace, TimeString, TimeString, AM, am
SendInput %TimeString%
return

; Insert Date and Time (European) 
^!e::
FormatTime, TimeString,, dddd, d MMMM yyyy, HH:mm
SendInput %TimeString%
return

; Insert Date and Time (European) - Short version
^!+e::
FormatTime, TimeString,, yyyy-MM-dd ddd HH:mm
SendInput %TimeString%
return
