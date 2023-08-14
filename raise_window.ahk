#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Raise windows with keys

;; Press F12 to activate the System Monitor
$F12::
WinActivate, Moo0 System Monitor
; WinSet, Top, , Moo0 System Monitor   ; Fails

;; Press Shift-F12 to deactivate the System Monitor
; +$F12::
; WinSet, Bottom, , Moo0 System Monitor   ; Fails

return
