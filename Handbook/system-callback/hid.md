### HID 事件消息 (hid)


#### 声明
```lua
thread.register_event("xxtouch.hid_event", function(val)
    local event = json.decode(val)
    if event.event_type=="touch" then
        if event.event_name=="touch.on" then
            sys.toast("触摸接触位置: ("..event.x..", "..event.y..")\n"..event.time)
        elseif event.event_name=="touch.move" then
            sys.toast("触摸移动到位置: ("..event.x..", "..event.y..")\n"..event.time)
        elseif event.event_name=="touch.off" then
            sys.toast("触摸从位置: ("..event.x..", "..event.y..") 离开屏幕\n"..event.time)
        end
    else
        if event.event_name=="key.down" then
            sys.toast("按下按键: "..event.key_name.."\n"..event.time)
        elseif event.event_name=="key.up" then
            sys.toast("抬起按键: "..event.key_name.."\n"..event.time)
        end
    end
end)
```


#### 状态
> - val
>   - 注册监听则所有的 hid 事件信息都会传递到这里，极度影响脚本运行效率，不需要了请及时反注册  
>   - HID 事件中所有的触摸坐标都是以竖屏 HOME 键在下为初始化坐标系，如果需要，可以使用 [screen.rotate_xy](/Handbook/screen/screen.rotate_xy.md) 转换后使用  



#### 示例  
```lua
-- 清空消息队列
proc_queue_clear("xxtouch.hid_event")
--
-- 建立监听回调
local eid = thread.register_event("xxtouch.hid_event", function(val)
    local event = json.decode(val)
    if event.event_type=="touch" then
        if event.event_name=="touch.on" then
            sys.toast("触摸接触位置: ("..event.x..", "..event.y..")\n"..event.time)
        elseif event.event_name=="touch.move" then
            sys.toast("触摸移动到位置: ("..event.x..", "..event.y..")\n"..event.time)
        elseif event.event_name=="touch.off" then
            sys.toast("触摸从位置: ("..event.x..", "..event.y..") 离开屏幕\n"..event.time)
        end
    else
        if event.event_name=="key.down" then
            sys.toast("按下按键: "..event.key_name.."\n"..event.time)
        elseif event.event_name=="key.up" then
            sys.toast("抬起按键: "..event.key_name.."\n"..event.time)
        end
    end
end)
--
touch.on(100, 100):off()
sys.msleep(1000)
key.press('homebutton')
--
sys.msleep(20000) -- 等待 20 秒
--
-- 反注册回调函数，如果不反注册监听，那么脚本不会在此结束
thread.unregister_event("xxtouch.hid_event", eid)
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`proc_queue_clear`](/Handbook/proc/proc_queue_clear.md)、[`thread.register_event`](/Handbook/thread/thread.register_event.md)、[`thread.unregister_event`](/Handbook/thread/thread.unregister_event.md)

