### \! 获取网络时间 \(**sys\.net\_time**\)


#### 声明
```lua
时间戳 = sys.net_time([ 超时时间 ])
```


#### 参数及返回值
> - 超时时间
>   - 实数型，可选参数，用于设置获取网络时间联网的最大等待时间 (单位：秒) ，默认 2
> - 时间戳
>   - 整数型， 成功则返回当前网络时间的时间戳，连接超时或未能成功获取网络时间返回 0


#### 说明  
> **这个方法可能会让出，在这个方法返回之前，其它的 [线程](/Handbook/thread/README.md) 可能会得到运行机会**  


#### 示例  
```lua
local nt = sys.net_time() -- 获取网络时间，默认 2 秒超时，超时返回 0
--
local nt = sys.net_time(5) -- 获取网络时间，5 秒超时，超时返回 0
if nt==0 then
    sys.alert('获取网络时间失败')
else
    sys.alert(os.date('当前网络时间\n%Y-%m-%d %H:%M:%S', nt))
end
```
**注**：上述代码中使用了 [os\.date 日期格式化相关](/Handbook/supplement/os.date.md)  

