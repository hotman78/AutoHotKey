; ↑
vk1D & i::Send, {Blind}{Up}

; ↓
vk1D & k::Send, {Blind}{Down}

; ←
vk1D & j::Send, {Blind}{Left}

; →
vk1D & l::Send, {Blind}{Right}

; ; Home
; vk1D & ::Send, {Blind}{Home}

; End
vk1D & vkBB::Send, {Blind}{End}

; ↑↑↑↑
vk1D & u::Send, {Blind}{Up 4}

; ↓↓↓↓
vk1D & ,::Send, {Blind}{Down 4}

; →→→→
vk1D & .::Send, {Blind}{Right 4}

; ←←←←
vk1D & m::Send, {Blind}{Left 4}

; Enter
vk1D & Space::Send, {Blind}{Enter}

; Backspace
vk1D & n::Send, {Blind}{Backspace}

; Delete
vk1D & /::Send,{Blind}{Delete}

; 行挿入(Ctrl押下状況により、挿入位置を前後で選択)
vk1D & Enter::
  If (GetKeyState("Ctrl", "P")) {
    Send, {Up}{End}{Enter}
  } Else {
    Send, {End}{Enter}
  }
Return

; 半角英数
vk1D & vkF2::Send, {vkF2}{vk1D}

