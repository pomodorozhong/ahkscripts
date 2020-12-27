;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Text Expanders
; Reference: https://www.autohotkey.com/docs/Hotstrings.htm

::ttime::
SendInput % "{TEXT}" . A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min
Return

::ref::Reference
::todo::To-Do