
﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Ctl+Tab in chrome to jump to last used tab!
;   Reference: https://www.youtube.com/watch?v=Xmj3OtVC2yU
#If WinActive("ahk_exe Chrome.exe")
    prevChromeTab()
    {
        send ^+a
        SetKeyDelay, 39
        send {BackSpace}
        send {Enter}
    }
    ^Tab::prevChromeTab()
    return
#If