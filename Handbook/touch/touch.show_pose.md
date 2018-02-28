### 设置触摸圆点显示 (**touch\.show\_pose**)


#### 声明
```lua
touch.show_pose(是否显示)
```

#### 参数及返回值
> - 是否显示
>   - 布尔型，true 为显示；false 为不显示


#### 说明
> 设置 touch 模块函数调用时是否显示圆点在屏幕上  
> **打开圆点显示会极大降低 touch 模块函数的效率，并且长时间使用会影响系统稳定性，建议仅用于调试环境**   

#### 示例  
```lua
touch.show_pose(true)
touch.tap(100, 100)
```

