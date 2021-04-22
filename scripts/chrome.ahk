;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Make Tab key to output 4 space in Trello webpage
$Tab::
    SetTitleMatchMode, 2
    if WinActive("ahk_exe chrome.exe") and WinActive(" | Trello")
    {   
        Send {Space 4}
    }
    else
    {
        Send {Tab}
    }
    return