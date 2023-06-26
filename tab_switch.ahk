#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Alt+s in browser to jump to last used tab!
;   Reference: https://www.youtube.com/watch?v=Xmj3OtVC2yU
#If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe msedge.exe")
    prevTab()
    {
        send ^+a
        ; SetKeyDelay, 75   ; not considered in Input mode
	Sleep 150 ; 75 ms works on recently active (non-sleeping) tabs
                  ; 150 ms generally works on not recently active (sleeping) tabs 
        ; send {BackSpace}
        send {Enter}
    }
    !s::prevTab()
    return
#If