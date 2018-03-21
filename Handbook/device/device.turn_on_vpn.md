### 连接到当前设置所选 VPN \(**device\.turn\_on\_vpn**\)


#### 声明
```lua
device.turn_on_vpn()
```


#### 说明
> 尝试连接到所选 VPN，如果没选，则什么也不发生  
> **注**：该函数稳定性有限，在 iOS7 上碰到 VPN 没有设置密码的情况下调用会导致进入安全模式，**推荐**使用更加稳定的解决方案 [VPN 配置模块 (vpnconf) ](/Handbook/vpnconf/README.md)  


#### 示例  
```lua
device.turn_on_vpn()
```

