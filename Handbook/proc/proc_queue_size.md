### 获取进程队列词典的尺寸 \(**proc\_queue\_size**\)


#### 声明
```lua
size = proc_queue_size(key)
```


#### 参数及返回值
> - key
>   - 字符串型，代表键
> - size
>   - 整数型，返回该进程队列词典中的有效条目数


#### 说明
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程队列词典全部被保留**  
> 获取进程队列词典的尺寸  


#### 示例  
```lua
local size = proc_queue_size("billnos")
if size~=0 then
    print("has "..size.." bill(s)")
else
    print("no bill")
end
```

