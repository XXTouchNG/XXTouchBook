### Activator 事件回调消息


#### 声明
```lua
thread.register_event("xxtouch.activator_callback", function(val)
    local ret = json.decode(val)
    sys.toast("mode:"..ret.mode.."\n"
            .."event:"..ret.event.."\n"
            .."time:"..ret.time)
end)
```


#### 状态
- val
    - 当配置了 [Activator](http://cydia.saurik.com/package/libactivator/) 回调并且触发了响应的 [Activator](http://cydia.saurik.com/package/libactivator/) 事件的时候，事件的详情会传到这里


#### 说明
> 需要安装 [Activator](http://cydia.saurik.com/package/libactivator/) 并于 [Activator](http://cydia.saurik.com/package/libactivator/) 中做好相应的配置配合使用  


#### 示例  
```lua
-- 清空消息队列
proc_queue_clear("xxtouch.activator_callback")
--
-- 开始建立监听回调
local eid = thread.register_event("xxtouch.activator_callback", function(val)
	local ret = json.decode(val)
	if ret.event=="libactivator.statusbar.tap.double" then
	    sys.toast("双击状态栏回调")
	end
end)
--
sys.msleep(20000) -- 等待 20 秒
--
-- 反注册回调函数，如果不反注册监听，那么脚本不会在此结束
thread.unregister_event("xxtouch.activator_callback", eid)
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`proc_queue_clear`](/Handbook/proc/proc_queue_clear.md)、[`thread.register_event`](/Handbook/thread/thread.register_event.md)、[`thread.unregister_event`](/Handbook/thread/thread.unregister_event.md)

