### 设置自动锁屏分钟数 \(**device\.set\_autolock\_time**\)


#### 声明
```lua
device.set_autolock_time(分钟数)
```


#### 参数及返回值  
- 分钟数
    - 整数型，用于设置设备自动锁屏分钟数，设置为 0 则永不锁屏


#### 说明
> **这个函数在 1\.1\.2\-1 版以上方可使用**  
> 只能设置为设备有的分钟等级  


#### 示例  
```lua
device.set_autolock_time(0)
```

