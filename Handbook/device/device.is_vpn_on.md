### 判断当前是否打开了 VPN 开关 \(**device\.is\_vpn\_on**\)


#### 声明
```lua
开关状态, 状态描述 = device.is_vpn_on()
```


#### 参数及返回值  
- 开关状态
    - 布尔型，VPN 开关为打开 (正在连接或已经连接成功) 状态则返回 true，否则返回 false
- 状态描述
    - 文本型 或 nil，当第一个返回值为 true 的时候，这个返回值返回一个用于描述 VPN 连接状态的字符串


#### 说明
> **注意**：  
> 当 VPN 正在连接 (还没有连接成功) 的时候，开关状态 会返回 true。  
> 状态描述 在不同的语言环境或系统版本中返回的同一状态描述不保证相同。  
    >
> 更多 VPN 相关功能尽在 [VPN 配置模块 (vpnconf) ](/Handbook/vpnconf/README.md)  


#### 示例  
```lua
while (true) do
	local is_on, stat = device.is_vpn_on()
	if (is_on) then
		sys.toast(stat)
	else
		device.turn_on_vpn()
	end
end
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)

