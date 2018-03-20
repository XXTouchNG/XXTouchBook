### 获取屏幕上某点颜色 RGB \(**screen\.get\_color\_rgb**\)


#### 声明
```lua
红, 绿, 蓝 = screen.get_color_rgb(横坐标, 纵坐标)
```

#### 参数及返回值
- 横坐标, 纵坐标
    - 整数型，代表目标点的坐标
- 红, 绿, 蓝
    - 整数型，返回目标点颜色的 `红、绿、蓝` 值，取值范围 0~255

#### 说明
> 获取屏幕上某个坐标点的颜色并拆分成 红\(R\) 绿\(G\) 蓝\(B\) 形式  
  
#### 示例  
```lua
local r, g, b = screen.get_color_rgb(512, 133)
if r==0xff and g==0xff and b==0xff then
    sys.alert("512, 133 这个点是纯白色")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

