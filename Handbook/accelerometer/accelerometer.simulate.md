### 模拟加速计数据 \(**accelerometer\.simulate**\)


#### 声明
```lua
accelerometer.simulate(横坐标, 纵坐标, 垂直坐标, 附加选项)
```

#### 参数及返回值
- 横坐标
    - 实数型， x 轴加速度
- 纵坐标
    - 实数型， y 轴加速度
- 垂直坐标
    - 实数型， z 轴加速度
- 附加选项
    - 整数型
         - 0 为普通
         - 1 为摇晃

#### 说明
> 模拟加速器数据  
> **这个函数不支持 iOS 10 及以上版本操作系统**  

#### 示例  
```lua
for i = 1, 100 do
    accelerometer.simulate(i, i, i, 0)
end
```

