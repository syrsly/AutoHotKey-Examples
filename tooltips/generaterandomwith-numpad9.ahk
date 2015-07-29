
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
ToolTip, Random number generated is %rand%
return

Esc::ExitApp
