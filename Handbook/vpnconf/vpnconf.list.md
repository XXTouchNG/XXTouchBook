### 获取当前系统 VPN 的列表 \(**vpnconf\.list**\)


#### 声明
```lua
VPN列表 = vpnconf.list()
```


#### 参数及返回值
- VPN列表
    - 表型 或 nil，获取成功返回当前系统 VPN 的顺序表，获取失败返回 nil


#### 说明
> **这个函数在 1\.2\-3 版以上方可使用**  
> 返回的 VPN 列表结构如下  
```lua
{
    {dispName = 显示名1, VPNID = VPNID1},
    {dispName = 显示名2, VPNID = VPNID2},
    ...
}
```


#### 示例  
```lua
local list = vpnconf.list()
if list then
    sys.alert(table.deep_print(list))
else
    sys.alert('获取失败，确定人品没有问题？')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`table.deep_print`](/Handbook/ext-table/table.deep_print.md)

