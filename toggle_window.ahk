#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; TODO: Works on regular windows, but not on Moo0 System Monitor

; Press F12 to raise or lower the System Monitor
$F12::
; Get the active window handle and title
WinGet, activeWindowHwnd, ID, A
WinGetTitle, activeWindowTitle, A
; MsgBox, %activeWindowTitle%
; MsgBox, %activeWindowHwnd%

; Get the "system monitor" window handle and title
WinGet, sysMonitorHwnd, ID, % "Moo0 System Monitor"
WinGetTitle, sysMonitorTitle, % "ahk_id " sysMonitorHwnd
; MsgBox, %sysMonitorTitle%
; MsgBox, %sysMonitorHwnd%

; If the active window is "system monitor" then activate the previously active window
if (activeWindowTitle = sysMonitorTitle) {
        ; MsgBox, Test 1
        Send, {Alt down}{Tab}{Alt up}
}
; Otherwise activate the "system monitor" window
else {
        ; MsgBox, Test 2
	WinActivate, %sysMonitorTitle%
}
return
