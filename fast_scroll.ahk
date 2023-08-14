#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Fast scrolling

;; Change the masking key to something unassigned
;;   Reference: https://www.autohotkey.com/docs/commands/_MenuMaskKey.htm
#MenuMaskKey vkE8

;; Alt+wheel -> double speed scrolling
; !WheelDown::SendInput, {WheelDown 2}
; !WheelUp::SendInput, {WheelUp 2}

;; Alt+wheel -> PgUp/PgDn
!WheelUp::SendInput, {PgUp}
!WheelDown::SendInput, {PgDn}