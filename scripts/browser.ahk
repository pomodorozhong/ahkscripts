;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Make Tab key to output 4 space in Trello webpage
$Tab::
    SetTitleMatchMode, 2
    if WinActive("ahk_exe msedge.exe") OR WinActive("ahk_exe chrome.exe") {
        if WinActive(" | Trello") {
            Send {Space 4}
        } else {
            Send {Tab}
        }
    } else {
        Send {Tab}
    }
return