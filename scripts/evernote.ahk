;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; A keboard shortcut remap for "Delete Note" in Evernote 
~^d::
    if WinActive("ahk_exe Evernote.exe")
    {
        Send {Delete}
        return
    }
    return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; A keboard shortcut remap for "Copy Internal Link" in Evernote 
~!c::
    if WinActive("ahk_exe Evernote.exe")
    {
        Send ^!l
        return
    }
    return