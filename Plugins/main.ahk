vkF0::Return

; コピーした時

OnClipboardChange:
  my_tooltip_function("copy", 300)
  Return
; 上書き保存した時
^s::
  Send, ^s
  my_tooltip_function("save", 300)
  Return

#IfWinActive
^+M::
  DetectHiddenWindows,On
  ControlSend,,^+M,ahk_exe Discord.exe 
  Return
vk1D::
  my_tooltip_function("無変換", 300)
  return