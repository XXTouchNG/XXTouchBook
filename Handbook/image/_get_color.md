### 获取图片对象某点颜色 \(**:get\_color**\)


#### 声明
```lua
颜色 = 图像:get_color(横坐标, 纵坐标)
```

#### 参数及返回值
- 图像
    - 图片对象，当前操作的图片对象
- 横坐标, 纵坐标
    - 整数型，需要获取颜色的点于当前图片对象上的坐标
- 颜色
    - 整数型，返回当前图片对象上的这个坐标的颜色值


#### 说明
> 获取图片对象某点颜色  


#### 示例  
```lua
local img = image.load_file("/var/mobile/1.png")
local clr = img:get_color(100, 100)
sys.alert(string.format("图像上坐标 (100, 100) 的颜色为：0x%06x", clr))
```

