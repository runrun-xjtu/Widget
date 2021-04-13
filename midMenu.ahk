Process, priority, , High

Menu, MyMenu, Add, 截屏, MenuHandler
Menu, MyMenu, Add 
Menu, MyMenu, Add, 打开浏览器, MenuHandler         
Menu, MyMenu, Add, 打开记事本,MenuHandler
Menu, MyMenu, Add, 打开资源管理器,MenuHandler
Menu, MyMenu, Add 
Menu, MyMenu, Add, 窗口置顶/取消置顶, MenuHandler 
Menu, MyMenu, Add, 显示桌面, MenuHandler  
Menu, MyMenu, Add, 关闭菜单, MenuHandler
return 

MenuHandler:
if A_ThisMenuItem = 打开浏览器
{Run www.baidu.com
return
}

if A_ThisMenuItem = 打开记事本
{Run Notepad
return
}

if A_ThisMenuItem = 打开资源管理器
{send #e
return
}

if A_ThisMenuItem = 窗口置顶/取消置顶               ;窗口命令
{WinSet,AlwaysOnTop,toggle,A
return
}

if A_ThisMenuItem = 显示桌面
{send #d
return
}
if A_ThisMenuItem = 截屏
{
send #+s
return
}


~MButton::            
sleep 150                             ;中键控制
                                   
GetKeyState, state, MButton
if state= D     ;MsgBox state= %state%
{
 return                       
}
if state= U
{Menu, MyMenu, Show
state := D
}
return

9:: 
send +9
send +0
send {Left}
return

*[:: 
send [
send ]
send {Left}
return

*+[:: 
send +[
send +]
send {Left}
return
                                   
GetKeyState, state, Alt
if state= D     ;MsgBox state= %state%
{
send {End}                       
}
return

~RButton::                                              
GetKeyState, state, LButton
if state= D     ;MsgBox state= %state%
{send {LWin}
return
}
if state= U
{return
}

~LButton::                                              
GetKeyState, state, RButton
if state= D     ;MsgBox state= %state%
{send {LWin}
return
}
if state= U
{return
}

Home:: send {PrintScreen}
