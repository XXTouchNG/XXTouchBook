### 获取设备所有的接口 IP \(**device\.ifaddrs**\)


#### 声明
```lua
接口信息数组 = device.ifaddrs()
```


#### 参数及返回值  
- 接口信息数组
    - 表型，返回设备的所有接口的信息结构如下  
```lua
{ {"接口名1", "IP1"}, {"接口名2", "IP2"}, ... }
```


#### 说明
> 获取设备所有的接口 IP  


#### 示例  
```lua
-- 获取设备的 WiFi IP
local ip = "没开 WiFi"
for i,v in ipairs(device.ifaddrs()) do
	if (v[1]=="en0") then
		ip = v[2]
	end
end
sys.alert(ip)
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

