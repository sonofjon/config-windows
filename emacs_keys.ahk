#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Emacs navigation shortcuts

;; Google Chrome
#IfWinActive ahk_exe chrome.exe
; ^a:: SendInput, {Home}
; ^e:: SendInput, {End}
^a:: Home
^e:: End
#IfWinActive

;; Microsoft Edge
#IfWinActive ahk_exe msedge.exe
; ^a:: SendInput, {Home}
; ^e:: SendInput, {End}
^a:: Home
^e:: End
#IfWinActive