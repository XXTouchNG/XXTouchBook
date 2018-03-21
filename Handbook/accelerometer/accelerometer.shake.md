### 模拟摇一摇 \(**accelerometer\.shake**\)


#### 声明
```lua
accelerometer.shake()
```

#### 说明
> 对 accelerometer\.simulate 的封装，模拟摇一摇手机  
> **这个函数不支持 iOS 10 及以上版本操作系统**  

#### 示例  
```lua
for i = 1, 10 do -- 摇十下
    accelerometer.shake()
    sys.msleep(1000)
end
```
**注**：上述代码中使用了非本章函数 [`sys.msleep`](/Handbook/sys/sys.msleep.md)

