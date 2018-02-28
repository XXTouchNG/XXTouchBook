### 向进程队列词典中压入一个值 (**proc\_queue\_push**)


#### 声明
```lua
size = proc_queue_push(key, value)
```


#### 参数及返回值
> - key
>   - 字符串型，代表键
> - value
>   - 字符串型，代表需要压入的值
> - size
>   - 整数型，压入值之后，返回该队列的尺寸，如果返回 0 ，则为压入失败


#### 说明
> **此函数效果等同 [proc_queue_push_back](/Handbook/proc/proc_queue_push_back.md)**  
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程队列词典全部被保留**  
> **进程队列词典的队列尺寸不能大于 10000，尺寸超过的队列将丢弃最先压入的值**  
> 往进程队列词典中压入一个值，压入值之后，返回该队列的尺寸  
> 不能压入空字符串  


#### 示例  
```lua
local size = proc_queue_push("billnos", "name")
if size~=0 then
    print("has "..size.." bill(s)")
else
    print("failed")
end
```

