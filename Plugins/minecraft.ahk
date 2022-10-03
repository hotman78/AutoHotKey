SetTitleMatchMode, 2
#IfWinActive, Minecraft
^LButton::
  my_tooltip_function("mine", 300)
  Send,{LButton down}
  KeyWait, LButton, D
  my_tooltip_function("exit", 300)
  Return

; 1に人参棒(サンダーボルト)、2にマナリフレッシュ
; ManaLabel:=Func("Mana")
; ThunderLabel:=Func("Thunder")

Thunder(){
    IfWinActive, Minecraft
    {
        my_tooltip_function("Thunder", 300)
        Send,1
        MouseClick,RIGHT
    }
    Return
}

Mana(){
    IfWinActive, Minecraft
    {
        my_tooltip_function("Mana", 300)
        Send,2
        MouseClick,RIGHT
    }
    Return
}

^u::
    my_tooltip_function("start", 300)
    Thunder()
    SetTimer, Thunder, 3000
    Sleep, 500
    Mana()
    SetTimer, Mana, 60000
    Return

^i::
    my_tooltip_function("exit", 300)
    SetTimer, Thunder, Off
    SetTimer, Mana, Off
    Return