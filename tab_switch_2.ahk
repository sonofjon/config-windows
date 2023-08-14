#Persistent
SetTimer, CheckTabs, 1000  ; Check every 1 second

;; Alt+w in browser to jump to most recently opened tab
;;   This is a Chat-GPT generated script.
;;   It does not work at the moment.
;;   Currently, it seems to be implemented to switch to the most
;;   recently active tab, not the most recently opened tab.

tabOrder := []  ; Store tab order

return

CheckTabs:
    If WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe msedge.exe")
    {
        WinGet, activeTab, ID
        If (activeTab != lastActiveTab)
        {
            lastActiveTab := activeTab
            tabOrder.Push(activeTab)
        }
    }
return

!q::
    if (tabOrder.Length() > 0) {
        mostRecentTab := tabOrder.Pop()
        ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_id %mostRecentTab%
    }
return