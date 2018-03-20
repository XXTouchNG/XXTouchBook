### 获取屏幕尺寸 \(**screen\.size**\)


#### 声明
```lua
屏宽, 屏高 = screen.size()
```


#### 参数及返回值
> - 屏宽 整数型
> - 屏高 整数型


#### 说明
> 这个函数的返回值不受当前设备的桌面或者应用的的横竖屏状态影响，也不受放大模式影响  


#### 示例  
```lua
-- 根据分辨率判断设备类型
width, height = screen.size()
if width == 640 and height == 1136 then
    -- iPhone 5, 5S, iPod touch 5
elseif width == 640 and height == 960 then
    -- iPhone 4, 4S, iPod touch 4
elseif width == 750 and height == 1334 then
    -- iPhone 6, 6S, 7, 8
elseif width == 1242 and height == 2208 then
    -- iPhone 6+, 6S+, 7+, 8+
elseif width == 768 and height == 1024 then
    -- iPad 1, 2, mini 1
elseif width == 1536 and height == 2048 then
    -- iPad 3, 4, 5, mini 2
elseif width == 320 and height == 480 then
    -- 这个应该不可能
end
```

