### 从进程队列词典头部弹出一个值 \(**proc\_queue\_pop\_front**\)


#### 声明
```lua
value = proc_queue_pop_front(key)
```


#### 参数及返回值
> - key
>   - 字符串型，代表键
> - value
>   - 字符串型，返回弹出的值，如果队列不存在或为空，则返回空字符串


#### 说明
> **这个函数在 1\.1\.2\-1 版以上方可使用**  
> **此函数效果等同 [proc_queue_pop](Handbook/proc/proc_queue_pop.md)**  
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程队列词典全部被保留**  
> 从进程队列词典头部弹出一个值  
> 如果队列不存在或为空，则弹出一个空字符串  


#### 示例  
```lua
local billno = proc_queue_pop_front("billnos")
if billno~="" then
    print(billno)
else
    print("no bill")
end
```

