### 获取屏幕上某点颜色 \(**screen\.get\_color**\)


#### 声明
```lua
颜色值 = screen.get_color(横坐标, 纵坐标)
```

#### 参数及返回值
> - 横坐标, 纵坐标
>   - 整数型，代表目标点的坐标
> - 颜色值
>   - 整数型，返回目标点颜色的 RGB 值

#### 说明
> 获取屏幕上某个坐标点的颜色  

#### 示例  
```lua
local c = screen.get_color(512, 133)
if c==0xffffff then
    sys.alert("512, 133 这个点是纯白色")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

