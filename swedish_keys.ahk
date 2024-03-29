#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Swedish keys with AltGr (or Right Alt) plus [, ;, '
;;   Note, to make this work, you have to save this file in Windows
;;   with notepad.exe as UTF-8 with BOM. Reference:
;;   https://www.autohotkey.com/docs/FAQ.htm#nonascii

>![::Send, å
>!+[::Send, Å
>!'::Send, ä
>!+'::Send, Ä
>!;::Send, ö
>!+;::Send, Ö

;; Alternative implementation
;;   Using scan codes, hence should avoid encoding issues, but alas,
;;   it requires the same fix in notepad.exe as above. 
; ; right alt + [
; >!SC01A::Send, å
; >!+SC01A::Send, Å
; ; right alt + '
; >!SC028::Send, ä
; >!+SC028::Send, Ä
; ; right alt + ;
; >!SC027::Send, ö
; >!+SC027::Send, Ö
