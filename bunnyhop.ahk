Menu, Tray, NoStandard ; remove standard Menu items
Menu, Tray, Add , &Info, Info ;add a item named Change that goes to the Change label
Menu, Tray, Add , E&xit, ExitSub ;add a item named Exit that goes to the ButtonExit label

F1::                 
	Suspend
	Return
*space::
	Loop                                                                                                                
	{
		GetKeyState,state,space,P
		If state = U
			Break
		Send,{space down}              
		Sleep,230
		Send,{space up}  
	}
w::
	Loop                                                                                                                
	{
		GetKeyState,state,w,P
		If state = U
			Break
		Send,{space down}              
		Sleep,230
		Send,{space up}  
	}
up::
	Loop                                                                                                                
	{
		GetKeyState,state,up,P
		If state = U
			Break
		Send,{space down}              
		Sleep,230
		Send,{space up}  
	}
return

ExitSub:
TrayTip, T-Bunnyhop, , 2
ExitApp

GuiClose:
Gui, Hide
Return

Info:
SplashTextOff
Gui, Add, Text, w400 h20 vtext12, Terraria AutoBhop Info:
Gui, Add, Text, vtext13, Press W / SpaceBar / Up to Jump.
Gui, Add, Text, w400 h20 vtext14, IMPORTANT: Bind Jump to Space
Gui, Add, Button, w400 h20 default, Okay
Gui, Show
return

ButtonOkay:
Gui, Submit
Gui, Destroy