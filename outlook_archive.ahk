#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Archive message with Backspace in all panes

#IfWinActive, ahk_exe OUTLOOK.EXE

;; Only operate on the main window
SetTitleMatchMode, 2 ; Use a more flexible window title matching
#IfWinActive, Outlook
Backspace::

;; Navigate to message list to performe the archive action
; Send, ^1   ; switch to the message list
; Sleep, 200   ; ensure the switch is complete
; Send, {Backspace}   ; archive
; ; Send, ?   ; TODO: switch back to the message pane

;; Using quick action
Send, ^+1   ; perform quick action 1 (which you must set up manually to archive!)

return
#IfWinActive ; Reset context sensitivity