### 问系统一个问题 (**sys\.mgcopyanswer**)


#### 声明
```lua
答案 = sys.mgcopyanswer(问题)
```


#### 参数及返回值
> - 问题
>   - 文本型，问题名字，一些 问题名字 参考 [MobileGestalt.h](https://github.com/Cykey/ios-reversed-headers/blob/master/MobileGestalt/MobileGestalt.h)
> - 答案
>   - 字符串型 或 表型 或 实数型 或 整数型 或 布尔型 或 nil，系统的回复，如果问题不被支持，则返回 nil


#### 说明
> **这个函数在 1\.1\.2\-1 版以上方可使用**  
> 获取一些系统信息，底层使用 MGCopyAnswer 完成  
> 获取系统信息 读取系统信息 获取设备信息 读取设备信息 设备标识  

  
#### 示例  
```lua
sys.alert("设备的序列号是："..sys.mgcopyanswer("SerialNumber"))
sys.alert("设备的IMEI是："..sys.mgcopyanswer("InternationalMobileEquipmentIdentity"))
sys.alert("设备的MEID是："..sys.mgcopyanswer("MobileEquipmentIdentifier"))
```

