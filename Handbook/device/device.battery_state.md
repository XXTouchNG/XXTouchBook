### 获取当前设备充电状态 \(**device\.battery\_state**\)


#### 声明
```lua
充电状态 = device.battery_state()
```


#### 参数及返回值  
- 充电状态
    - 文本型，充电状态，有这么几种状态
      - 返回 "Full" 表示连接了电源并已经充满
      - 返回 "Charging" 表示连接了电源并正在充电中
      - 返回 "Unplugged" 表示没有接电源
      - 返回 "Unknown" 表示未知状态


#### 示例  
```lua
状态表 = {
	Full = "连接并已充满",
	Charging = "连接并在充电",
	Unplugged = "没插电源",
	Unknown = "未知状态",
}
--
sys.alert("当前设备电池充电状态："..状态表[device.battery_state()])
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

