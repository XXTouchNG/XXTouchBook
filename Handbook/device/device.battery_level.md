### 获取当前设备电池剩余电量 \(**device\.battery\_level**\)


#### 声明
```lua
电量 = device.battery_level()
```


#### 参数及返回值  
> - 电量
>   - 实数型，当前设备电池剩余电量，范围 0\.0~1\.0


#### 示例  
```lua
sys.alert("当前设备电池剩余电量："..(device.battery_level() * 100).."%")
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

