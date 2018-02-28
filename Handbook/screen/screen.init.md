### 初始化旋转坐标系 (**screen\.init**)


#### 声明
```lua
原坐标系 = screen.init(坐标系)
```


#### 参数及返回值
> - 坐标系  
>   - 整数型，取值范围
>     - 0 表示竖屏 home 在下
>     - 1 表示横屏 home 在右
>     - 2 表示横屏 home 在左
>     - 3 表示竖屏 home 在上
> - 原坐标系
>   - 整数型，返回这个函数调用之前使用的坐标系


#### 说明
> 初始化取色或点击的坐标系  
> 使用以下别名调用也可以实现相同效果  
``` lua
screen.init_home_on_bottom()    -- home 在下
screen.init_home_on_right()     -- home 在右
screen.init_home_on_left()      -- home 在左
screen.init_home_on_top()       -- home 在上
```


#### 示例  
```lua
screen.init(0)    -- home 在下
screen.init(1)    -- home 在右
screen.init(2)    -- home 在左
screen.init(3)    -- home 在上
```

