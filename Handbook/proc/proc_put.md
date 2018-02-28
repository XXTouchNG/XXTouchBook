### 存储值到进程字典 (**proc\_put**)


#### 声明
```lua
old_value = proc_put(key, value)
```


#### 参数及返回值
> - key
>   - 字符串型，代表键
> - value
>   - 字符串型，代表需要设置的值
> - old\_value
>   - 字符串型，返回这个键位置的旧的值，如果没有则返回空字符串


#### 说明
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程词典全部被保留**  
> 存储值到进程字典并返回该键位置原来的值  
> 如果该键位置原先没有值，则返回空字符串  
> 存储空字符串代表清空该键位置  


#### 示例  
```lua
local bill = ""
while bill=="" do
    bill = proc_put("billno", "")
end
print("billno: ".. bill)
```

