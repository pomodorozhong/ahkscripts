; INITIALIZATION - ENVIROMENT
;{-----------------------------------------------
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force  ; Ensures that only the last executed instance of script is running
;}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Globel Google Search
!s::    ; <-- Google Search Using Highlighted Text
    FileAppend, %ClipboardAll%, %A_ScriptDir%\temp.clip
    Clipboard := ""
    Send ^c
    ClipWait, .5
    Query := Clipboard
    if !ErrorLevel
        Gosub GoogleSearch
    FileRead, Clipboard, *c %A_ScriptDir%\temp.clip
return

GoogleSearch:
   StringReplace, Query, Query, `r`n, %A_Space%, All 
   StringReplace, Query, Query, %A_Space%, `%20, All
   StringReplace, Query, Query, #, `%23, All
   Query := Trim(Query)
   Run  http://www.google.com/search?hl=en&q=%Query% 
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Globel Dictionary
^q::
  FileAppend, %ClipboardAll%, %A_ScriptDir%\temp.clip
  Clipboard := ""
  Send ^c
  ClipWait, .5
  Run https://youglish.com/search/%Clipboard%
  Run http://dict.youdao.com/w/eng/%Clipboard%
  FileRead, Clipboard, *c %A_ScriptDir%\temp.clip
return
