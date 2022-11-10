; Capslock切换输入法
SetStoreCapslockMode Off

^Capslock Up::
Send {Capslock}
Return

Capslock Up::
SetCapsLockState Off
Send ^{Space}
Return

; 英文标点

; ` ·
Capslock & ` Up::
SetCapsLockState On
Send ``
SetCapsLockState Off
Return

; ! ！
Capslock & 1 Up::
SetCapsLockState On
Send +1
SetCapsLockState Off
Return

; ( （
Capslock & 9 Up::
SetCapsLockState On
Send +9
SetCapsLockState Off
Return

; ) ）
Capslock & 0 Up::
SetCapsLockState On
Send +0
SetCapsLockState Off
Return

; _ ——
Capslock & - Up::
SetCapsLockState On
Send +-
SetCapsLockState Off
Return

; \ 、
Capslock & \ Up::
SetCapsLockState On
Send \
SetCapsLockState Off
Return

; ' ‘
Capslock & ' Up::
SetCapsLockState On
Send '
SetCapsLockState Off
Return

; , ，
Capslock & , Up::
SetCapsLockState On
Send {,}
SetCapsLockState Off
Return
; . 。
Capslock & . Up::
SetCapsLockState On
Send {.}
SetCapsLockState Off
Return
; / 、
Capslock & / Up::
SetCapsLockState On
Send /
SetCapsLockState Off
Return
; ? ？
Shift & Capslock & / Up::
SetCapsLockState On
Send +/
SetCapsLockState Off
Return

; IJKL方向键
Capslock & I Up::Send {Up}
Capslock & J Up::Send {Left}
Capslock & K Up::Send {Down}
Capslock & L Up::Send {Right}

; 大小写判断
; if GetKeyState("CapsLock", "T") {
;     MsgBox A
; } else {
;     MsgBox a
; }

; 单击 双击 长按
; Capslock::
;     KeyWait CapsLock T0.5
;     If (A_TimeSinceThisHotkey > 300)
;     {
;         ; 长按
;         ; DoSomthing
;         press_time := 0
;     }
;     Else
;     {
;         If (press_time > 0)
;         {
;             press_time += 1
;             Return
;         }

;         press_time := 1
;         SetTimer NotLongPress, -300
;     }
; Return

; NotLongPress:
;     If (press_time = 1)
;     {
;         ; 单击
;         ; DoSomthing
;     }
;     Else
;     {
;         ; 双击
;         ; DoSomthing
;     }
;     press_time := 0
; Return
