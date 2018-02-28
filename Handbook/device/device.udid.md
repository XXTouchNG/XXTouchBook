### 获取设备UDID (**device\.udid**)


#### 声明
```lua
udid = device.udid()
```


#### 参数及返回值  
> - udid
>   - 文本型，返回设备的 UDID


#### 说明
> UDID 参考资料：https://www.theiphonewiki.com/wiki/UDID  


#### 示例  
```lua
sys.alert("设备的 UDID 是："..device.udid())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

