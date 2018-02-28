### thread 示例代码 (samples)


```lua
tmid = thread.dispatch( -- 派发一个异步任务
	function()
	    sys.msleep(2700)
		sys.toast("这是第 2.7 秒")
	end
)
--
tid = thread.dispatch( -- 派发一个异步任务
	function()
		sys.msleep(300)
		for i=1,10 do
			sys.toast("线程 2: "..i)
			sys.msleep(1000)
		end
		sys.toast("应该运行不到这里")
	end
)
--
-- iPhone 5C 双指合拢缩小相册图片示例
--
thread.dispatch(function() -- 派发一个滑动任务
	touch.on(59,165)
	    :move(297,522)
	    :msleep(500)
    :off()
end)
--
thread.dispatch(function() -- 再派发一个滑动任务
	touch.on(580,1049)
	    :move(371,1049)
	    :msleep(500)
    :off()
end)
--
proc_queue_clear("来自远方的消息")
eid = thread.register_event( -- 注册监听字典状态有值事件
	"来自远方的消息",
	function(val)
		sys.toast("收到消息："..val)
	end
)
--
sys.msleep(300)
thread.wait(tmid)
--
for i=1,10 do
	sys.toast("线程 1: "..i)
	sys.msleep(400)
end
--
thread.kill(tid) -- 杀死 线程 2
thread.unregister_event("来自远方的消息", eid) -- 取消一个字典状态有值事件
--
sys.toast("完了")
```
**注**：上述代码中使用了非本章函数及方法  [`proc_queue_clear`](/Handbook/proc/proc_queue_clear.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`sys.toast`](/Handbook/sys/sys.toast.md)、[`touch.on`](/Handbook/touch/touch.on.md)、[`:move`](/Handbook/touch/_move.md)、[`:msleep`](/Handbook/touch/_msleep.md)、[`:off`](/Handbook/touch/_off.md)

