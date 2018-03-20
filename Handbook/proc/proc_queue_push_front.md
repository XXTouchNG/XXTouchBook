### 向进程队列词典头部压入一个值 \(**proc\_queue\_push\_front**\)


#### 声明
```lua
size = proc_queue_push_front(key, value)
```

#### 参数及返回值
> - key
>   - 字符串型，代表键
> - value
>   - 字符串型，代表需要压入的值
> - size
>   - 整数型，压入值之后，返回该队列的尺寸，如果返回 0 ，则为压入失败


#### 说明
> **这个函数在 1\.1\.2\-1 版以上方可使用**  
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程队列词典全部被保留**  
> **进程队列词典的队列尺寸不能大于 10000，尺寸超过的队列将丢弃最先压入的值**  
> 往进程队列词典头部压入一个值，压入值之后，返回该队列的尺寸  
> 不能压入空字符串  


#### 示例  
```lua
local size = proc_queue_push_front("billnos", "name")
if size~=0 then
    print("has "..size.." bill(s)")
else
    print("failed")
end
```

