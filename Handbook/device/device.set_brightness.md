### 设置背光亮度 \(**device\.set\_brightness**\)


#### 声明
```lua
device.set_brightness(亮度)
```


#### 参数及返回值  
- 亮度
    - 实数型，用于设置设备的背光亮度，范围 0\.0~1\.0


#### 说明
> 该函数调用会关闭设备的自动调整背光功能  


#### 示例  
```lua
sys.toast(device.brightness())
for i = 1, 10 do
	device.set_brightness(i/10)
	sys.msleep(200)
end
for i = 10, 5, -1 do
	device.set_brightness(i/10)
	sys.msleep(200)
end
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)

