
; Generate a random number whenever the number 5 is pressed on the NumPad or the number key is pressed.
; Show the randomly generated number inside a tooltip at the mouse cursor location.

#SingleInstance force
#MaxHotkeysPerInterval 500
#UseHook
#InstallKeybdHook

SetKeyDelay, -1
Hotkey, *5, GenerateRandomTooltip
Hotkey, *NumPad5, GenerateRandomTooltip

GenerateRandomTooltip:
Random, rand, 1, 10
ToolTip, Random number generated is %rand%
return

Esc::ExitApp
