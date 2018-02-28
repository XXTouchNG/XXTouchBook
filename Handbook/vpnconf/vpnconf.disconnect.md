### 断开当前的 VPN 连接 (**vpnconf\.disconnect**)


#### 声明
```lua
操作成败 = vpnconf.disconnect()
```


#### 参数及返回值
> - 操作成败
>   - 布尔型，操作成功 (不是断开连接成功) 返回 true，操作失败返回 false，操作失败通常是因为没有选中的配置


#### 说明
> **这个函数在 1\.2\-3 版以上方可使用**  


#### 示例  
```lua
local success = vpnconf.disconnect()
if success then
    sys.alert('操作成功，正在断开连接……')
else
    sys.alert('当前并无选中任何 VPN 配置，成功创建 VPN 之后，记得调用 vpnconf.select 选中它')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

