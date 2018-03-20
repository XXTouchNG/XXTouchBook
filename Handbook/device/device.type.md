### 获取设备类型 \(**device\.type**\)


#### 声明
```lua
设备类型 = device.type()
```


#### 参数及返回值  
- 设备类型
    - 文本型，返回设备类型，大约是 `"iPhone3,1"` 这种形式的字符串


#### 说明
> 获取设备类型  


#### 示例  
```lua
if device.type() == "iPhone3,1" then
    -- 是 iPhone 4
end
```

