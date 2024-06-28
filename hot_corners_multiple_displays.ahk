; Hot corner dimensions (in pixels)
; Adjust these values as per your preference
; You can set them to 0 if you don't want a particular corner to have an action
TopLeftCornerSize := 10
TopRightCornerSize := 10
BottomLeftCornerSize := 10
BottomRightCornerSize := 10

; Hot corner actions
; Modify these lines to define the actions for each corner
TopLeftAction := "MsgBox Top Left Corner"
TopRightAction := "MsgBox Top Right Corner"
BottomLeftAction := "MsgBox Bottom Left Corner"
BottomRightAction := "MsgBox Bottom Right Corner"

; Delay between mouse position checks (in milliseconds)
CheckInterval := 100

; Register the timer to continuously check mouse position
SetTimer, CheckMousePosition, %CheckInterval%
return

CheckMousePosition:
    CoordMode, Mouse, Screen
    MouseGetPos, MouseX, MouseY
    
    ; Get the dimensions of the virtual screen
    SysGet, VirtualScreenX, 78
    SysGet, VirtualScreenY, 79
    SysGet, VirtualScreenWidth, 76
    SysGet, VirtualScreenHeight, 77
    
    ; Calculate the coordinates of the corners relative to the virtual screen
    TopLeftX := VirtualScreenX + TopLeftCornerSize
    TopLeftY := VirtualScreenY + TopLeftCornerSize
    TopRightX := VirtualScreenX + VirtualScreenWidth - TopRightCornerSize
    TopRightY := VirtualScreenY + TopRightCornerSize
    BottomLeftX := VirtualScreenX + BottomLeftCornerSize
    BottomLeftY := VirtualScreenY + VirtualScreenHeight - BottomLeftCornerSize
    BottomRightX := VirtualScreenX + VirtualScreenWidth - BottomRightCornerSize
    BottomRightY := VirtualScreenY + VirtualScreenHeight - BottomRightCornerSize
    
    ; Check if the mouse is near a hot corner and execute the corresponding action
    if (MouseX >= VirtualScreenX && MouseX <= VirtualScreenX + VirtualScreenWidth && MouseY >= VirtualScreenY && MouseY <= VirtualScreenY + VirtualScreenHeight)
    {
        HotCornerAction(TopLeftX, TopLeftY, TopLeftAction)
        HotCornerAction(TopRightX, TopRightY, TopRightAction)
        HotCornerAction(BottomLeftX, BottomLeftY, BottomLeftAction)
        HotCornerAction(BottomRightX, BottomRightY, BottomRightAction)
    }
return

; Function to execute the action for a hot corner
HotCornerAction(x, y, action)
{
    if (x > 0 && y > 0 && action != "")
    {
        CoordMode, Mouse, Screen
        MouseGetPos, MouseX, MouseY
        if (MouseX = x && MouseY = y)
        {
            Run, %action%
        }
    }
}

; Escape key to exit the script
Esc::
ExitApp
return
