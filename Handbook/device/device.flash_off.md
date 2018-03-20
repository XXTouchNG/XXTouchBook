### 关闭设备闪光灯 \(**device\.flash\_off**\)


#### 声明
```lua
是否成功 = device.flash_off()
```


#### 参数及返回值  
> - 是否成功
>   - 布尔型，设备可以打开相机并且有闪光灯硬件返回 true，否则返回 false


#### 说明
> **iPad Pro 的闪光灯无法开启**  
> 如果闪光灯是开启状态，那么该函数会关闭闪光灯，否则什么都不发生  


#### 示例  
```lua
if device.flash_off() then
    -- 设备有闪光灯
else
    -- 设备没闪光灯
end
```

