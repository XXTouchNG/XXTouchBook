### 示例及支持的键码列表 (samples)

#### 模拟按 HOME 键
```lua
key.press("HOMEBUTTON")
```

#### 模拟长按 HOME 键
```lua
key.down("HOMEBUTTON") -- 按下 HOME 键
sys.msleep(1000) -- 等待 1 秒
key.up("HOMEBUTTON") -- 松开 HOME 键
```

#### 模拟双击 HOME 键
```lua
key.press("HOMEBUTTON")
key.press("HOMEBUTTON")
```

#### 模拟按锁屏键 (电源键)
```lua
key.press("LOCK")
```

#### 模拟按回车键
```lua
key.press("RETURN")
```

#### 其它模拟
```lua
-- 下面这个例子是模拟组合键 [command + v] 粘贴剪贴板的文本 (不是 windows 上的 control + v ) 
key.down("LEFTCOMMAND") -- 按下 command 键
sys.msleep(20) -- 等待 20 毫秒
key.press("V") -- 按一下 v 键
sys.msleep(20) -- 等待 20 毫秒
key.up("LEFTCOMMAND") -- 松开 command 键
--
key.press("VOLUMEUP") -- 按一下音量 + 键
key.press("VOLUMEDOWN") -- 按一下音量 - 键
--
key.down("VOLUMEUP") -- 按下音量 + 键
sys.msleep(1000) -- 等待 1 秒
key.up("VOLUMEUP") -- 松开音量 + 键
--
key.down("LOCK") -- 按下锁屏键 (电源键) 
sys.msleep(3000) -- 等待 3 秒
key.up("LOCK") -- 松开锁屏键 (电源键) 
--
key.press("SHOW_HIDE_KEYBOARD") -- 按一下[隐藏/显示键盘键]隐藏虚拟键盘
--
key.press("SHOW_HIDE_KEYBOARD") -- 再按一下[隐藏/显示键盘键]显示虚拟键盘
--
-- 下面这个例子是模拟组合键 [锁屏键 + HOME键] 实现截屏到相册
key.down("LOCK") -- 按下锁屏键 (电源键) 
sys.msleep(100) -- 等待 100 毫秒
key.press("HOMEBUTTON") -- 按一下 HOME 键
sys.msleep(100) -- 等待 100 毫秒
key.up("LOCK") -- 松开锁屏键 (电源键) 
--
-- iOS7、iOS8 切换输入法的组合键
key.down("LEFTCOMMAND")
sys.msleep(50)
key.press(" ")
sys.msleep(50)
key.up("LEFTCOMMAND")
--
-- iOS9 切换输入法的组合键
key.down("LEFTCONTROL")
sys.msleep(50)
key.press("SPACE")
sys.msleep(50)
key.up("LEFTCONTROL")
```
**注**：上述代码中使用了非本章函数 [`sys.msleep`](/Handbook/sys/sys.msleep.md)

#### 支持的键码列表
```lua
-- 字母键：
"A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
--
-- 数字键：
"1" "2" "3" "4" "5" "6" "7" "8" "9" "0"
--
-- 功能键：
"F1" "F2" "F3" "F4" "F5" "F6" "F7" "F8" "F9" "F10" "F11" "F12"
--
-- 其它键：
"RETURN"        --< 回车键
"ESCAPE"        --< ESC键
"BACKSPACE"     --< 退格键
"TAB"           --< 制表符键
"SPACE"         --< 空格键
"HYPHEN"        --< "-" 或 "_" 键
"EQUAL"         --< "=" 或 "+" 键
"BRACKETOPEN"   --< "[" 或 "{" 键
"BRACKETCLOSE"  --< "]" 或 "}" 键
"BACKSLASH"     --< "\" 或 "|" 键
"SEMICOLON"     --< ";" 或 ":" 键
"QUOTATION"     --< 单引号或双引号键
"ACCENT"        --< "`" 或 "~" 键
"COMMA"         --< "," 或 "<" 键
"DOT"           --< "." 或 ">" 键
"SLASH"         --< "/" 或 "?" 键
"CAPSLOCK"      --< 大小写锁定键
"PAUSE"
"INSERT"
"HOME"          --< 这个不完全等于 iOS 设备的 HOME 键
"PAGEUP"
"DELETE"
"END"
"PAGEDOWN"
"RIGHTARROW"    --< 向右箭头键
"LEFTARROW"     --< 向左箭头键
"DOWNARROW"     --< 向下箭头键
"UPARROW"       --< 向上箭头键
"LEFTCONTROL"   --< 左侧 Ctrl 键
"LEFTSHIFT"     --< 左侧 Shift 键
"LEFTALT"       --< 左侧 Alt 键
"LEFTCOMMAND"   --< 左侧 Command 键
"RIGHTCONTROL"  --< 右侧 Ctrl 键
"RIGHTSHIFT"    --< 右侧 Shift 键
"RIGHTALT"      --< 右侧 Alt 键
"RIGHTCOMMAND"  --< 右侧 Command 键
"LOCK"          --< 锁屏键，或电源键
"HOMEBUTTON"    --< 这个才等于 iOS 设备的 HOME 键
"FORWARD"       --< 多媒体下一首
"REWIND"        --< 多媒体上一首
"FORWARD2"      --< 多媒体下一首2
"REWIND2"       --< 多媒体上一首2
"EJECT"
"PLAYPAUSE"     --< 多媒体暂停键
"MUTE"          --< 静音键
"VOLUMEUP"      --< 音量 + 键
"VOLUMEDOWN"    --< 音量 - 键
"SPOTLIGHT"     --< Spotlight 键
"BRIGHTUP"      --< 屏幕亮度 + 键
"BRIGHTDOWN"    --< 屏幕亮度 - 键
"SHOW_HIDE_KEYBOARD" --< 隐藏/显示键盘键
```
