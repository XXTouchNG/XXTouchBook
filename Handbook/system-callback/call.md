### 电话呼入呼出回调消息 (call)


#### 声明
```lua
thread.register_event("xxtouch.call_callback", function(val)
	if (val == "in") then
		-- 有电话呼入
	elseif (val == "out") then
	    -- 有电话呼出
	elseif (val == "disconnected") then
		-- 电话被挂断
	end
end)
```


#### 状态
> - in
>   - 来电呼入的时候，以 xxtouch\.call\_callback 标识的进程队列词典会推入这个值
> - out
>   - 呼出电话的时候，以 xxtouch\.call\_callback 标识的进程队列词典会推入这个值
> - disconnected
>   - 当来电或去电挂断的时候，以 xxtouch\.call\_callback 标识的进程队列词典会推入这个值


#### 说明
> 当收到系统电话呼入呼出消息的时候，这个消息标识的进程队列词典会推入一个状态  


#### 示例  
```lua
-- 清空消息队列
proc_queue_clear("xxtouch.call_callback")
--
sys.toast("脚本从现在开始监听来电事件，二十秒后取消监听")
--
-- 开始建立监听回调
local eid = thread.register_event("xxtouch.call_callback", function(val)
	if (val == "in") then
		sys.toast("来电话了")
	elseif (val == "out") then
		sys.toast("正在打电话出去")
	elseif (val == "disconnected") then
		sys.toast("电话挂断了")
	end
end)
--
sys.msleep(20000) -- 等待 20 秒
--
-- 反注册回调函数，如果不反注册监听，那么脚本不会在此结束
thread.unregister_event("xxtouch.call_callback", eid)
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`proc_queue_clear`](/Handbook/proc/proc_queue_clear.md)、[`thread.register_event`](/Handbook/thread/thread.register_event.md)、[`thread.unregister_event`](/Handbook/thread/thread.unregister_event.md)

