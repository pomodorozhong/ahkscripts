;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; A keboard shortcut remap for "Delete Note" in Evernote 
^d::
    if WinActive("ahk_exe Evernote.exe")
    {
        Send ^{Backspace}
        return
    }