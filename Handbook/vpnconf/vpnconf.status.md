### 获取当前选择的 VPN 的状态 (**vpnconf\.status**)


#### 声明
```lua
状态 = vpnconf.status()
```


#### 参数及返回值
> - 状态
>   - 表型 或 nil，操作成功返回状态描述表，没有选择任何 VPN 返回 nil


#### 说明
> **这个函数在 1\.2\-3 版以上方可使用**  
> 返回的状态表结构如下  
```lua
{
	text = 当前状态的文字描述,
	connected = 是否已经连接成功,
}
```


#### 示例  
```lua
local status = vpnconf.status()
if status then
    sys.alert(table.deep_print(status))
else
    sys.alert('当前并无选中任何 VPN 配置，成功创建 VPN 之后，记得调用 vpnconf.select 选中它')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`table.deep_print`](/Handbook/ext-table/table.deep_print.md)

