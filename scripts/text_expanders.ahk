;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Text Expanders
; Reference: https://www.autohotkey.com/docs/Hotstrings.htm

PasteThings(text)
{
    FileAppend, %ClipboardAll%, %A_ScriptDir%\temp.clip
    Clipboard := text
    Send ^v
    Sleep, 100
    FileRead, Clipboard, *c %A_ScriptDir%\temp.clip
    
    return
}

::ttime::
    text := A_YYYY . "-" . A_MM . "-" . A_DD . " " . A_Hour . ":" . A_Min
    PasteThings(text)
return

::ref::
    text := "Reference"
    PasteThings(text)
return

::todo::
    text := "To-Do"
    PasteThings(text)
return

::ggmail::
    text := "pomodorozhong@gmail.com"
    PasteThings(text)
return

; to make emoji work, this file must be save in "UTF8 with BOM".
::pointdd::
    text := "👇"
    PasteThings(text)
return

; to make emoji work, this file must be save in "UTF8 with BOM".
::pointuu::
    text := "☝️"
    PasteThings(text)
return