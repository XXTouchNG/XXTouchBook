### 断开已有的 VPN 连接 \(**device\.turn\_off\_vpn**\)


#### 声明
```lua
device.turn_off_vpn()
```


#### 说明
> 断开已经连上的 VPN 连接，如果当前没有尝试连接或已经连接的 VPN 则什么也不发生  
> **注**：该函数稳定性有限，有可能调用无效，**推荐**使用更加稳定的解决方案 [VPN 配置模块 (vpnconf) ](/Handbook/vpnconf/README.md)  


#### 示例  
```lua
device.turn_off_vpn()
```

