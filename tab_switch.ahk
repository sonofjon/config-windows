

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