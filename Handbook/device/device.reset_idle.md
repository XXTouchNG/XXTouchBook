### 重置自动锁屏倒计时 \(**device\.reset\_idle**\)


#### 声明
```lua
device.reset_idle()
```


#### 说明
> 重置自动锁屏倒计时 (使屏幕常亮)   


#### 示例  
```lua
-- 派发一个每 29 秒重置 IDLE 倒计时的任务
thread.dispatch(function()
    while 1 do
        device.reset_idle()
        sys.msleep(29 * 1000)
    end
end)
```
**注**：上述代码中使用了非本章函数及方法 [`thread.dispatch`](/Handbook/thread/thread.dispatch.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)

