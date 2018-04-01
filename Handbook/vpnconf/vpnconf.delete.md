### 删除一个 VPN 配置 \(**vpnconf\.delete**\)


#### 声明
```lua
操作成败 = vpnconf.delete(显示名或VPNID)
```


#### 参数及返回值
- 显示名或VPNID
    - 文本型，删除一个 VPN，多个同显示名 VPN 不保证删除哪个。如果需要精确删除可传入 VPNID
- 操作成败
    - 布尔型，操作成功返回 true，操作失败返回 false，操作失败通常是因为指定配置不存在


#### 说明
> **这个函数在 1\.2\-3 版以上方可使用**  
> VPNID 可通过 [vpnconf.list](/Handbook/vpnconf/vpnconf.list.md) 函数获得  


#### 示例  
```lua
local success = vpnconf.delete('1个测试VPN')
if success then
    sys.alert('操作成功')
else
    sys.alert('操作失败，确认你要删除的 VPN 配置存在？')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)


#### 遍历删除所有 VPN 配置示例   
```lua
-- 删除所有VPN 删除全部VPN VPN全部删除 全部VPN删除
local vpnlist = vpnconf.list()
if vpnlist then
    for _,v in ipairs(vpnlist) do
    	if (vpnconf.delete(v.VPNID)) then
    		sys.log('成功删除：'..v.dispName..'('..v.VPNID..')')
    	else
    		sys.log('无法删除：'..v.dispName..'('..v.VPNID..')')
    	end
    end
    sys.alert('操作完成！')
else
    sys.alert('获取列表失败，确定人品没有问题？')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`sys.log`](/Handbook/sys/sys.log.md)

