;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Ctrl + F8 to Toggle click simulator
; When It's "On", mouse click will be simulate by pressing "z" and "x".
^f8::
    is_click_simulator_enable := !is_click_simulator_enable

    status_text := ""
    if (is_click_simulator_enable = true){
        Hotkey, z, LeftClickTriggerByKeyboard, On
        Hotkey, x, RightClickTriggerByKeyboard, On
        status_text := "On"
    }
    else{
        Hotkey, z, Off
        Hotkey, x, Off
        status_text := "Off"
    }

    text :=
    MsgBox % "Click Simulator is " status_text
return

Hotkey, x, RightClickTriggerByKeyboard, Off
return

RightClickTriggerByKeyboard:
    MouseClick, right
return

Hotkey, z, LeftClickTriggerByKeyboard, Off
return

LeftClickTriggerByKeyboard:
    MouseClick, left
return
