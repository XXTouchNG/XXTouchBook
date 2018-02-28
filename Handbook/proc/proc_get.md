### 查看进程字典存储的值 (**proc\_get**)


#### 声明
```lua
value = proc_get(key)
```


#### 参数及返回值
> - key
>   - 字符串型，代表键
> - value
>   - 字符串型，返回该键位置存储的值，如果该键位置没有值则返回空字符串


#### 说明
> **这个函数已不推荐使用，可以尝试使用 [proc_put](/Handbook/proc/proc_put.md) 来代替**  
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程词典全部被保留**  
> 从进程词典的指定键位中读取值  
> 如果该键位置原先没有值，则返回空字符串  


#### 示例  
```lua
local bill = proc_get("billno")
if bill~="" then
    print("has a bill: ".. bill)
else
    print("no bill")
end
```

