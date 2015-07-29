
; Generate a random number whenever the number 9 is pressed on the NumPad.
; Show the randomly generated number inside a tooltip at the mouse cursor location.

#SingleInstance force
#MaxHotkeysPerInterval 500
#UseHook
#InstallKeybdHook

SetKeyDelay, -1
Hotkey, *NumPad9, GenerateRandomTooltip

GenerateRandomTooltip:
Random, rand, 1, 10
rand1 := "image"
rand2 := "image2"
rand3 := "fart"
rand4 := "run"
rand5 := "cloak"
rand6 := "sit"
rand7 := "wee"
rand8 := "Xbox"
rand9 := "forget"
rand10 := "send"
randgen := var rand%rand%
ToolTip, Random string generated is "%randgen%"
return

Esc::ExitApp
