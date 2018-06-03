### 清理 IDFA/V \(**clear\.idfav**\)


#### 声明
```lua
旧IDFAV信息 = clear.idfav([ 新IDFAV信息 ])
```


#### 参数及返回值
- 新IDFAV信息
    - 文本型，可选参数，表示指定使用这些信息作为设备的新的 idfav 信息，不传入参数表示清理后让系统自动生成。1\.2\-10 版新增可传入 "read" 表示不清理仅读取设备的 IDFAV 信息
- 旧IDFAV信息
    - 文本型 或 nil，返回设备原来的 idfav 信息，如果操作失败，则返回 nil


#### 说明
> 重置设备 IDFA 和 IDFV 等标识信息  
> 传入了不正确的 idfav 信息的情况下，会操作失败返回 nil  
> 不传入参数的情况下，会清除掉设备原来的 idfav 信息，iOS系统会在之后重新随机分配 idfav  
> 返回的 idfav 信息文本可以自行保存在文件中，等到需要恢复的时候，再当作参数传回即可  


#### 示例  
```lua
function close_all_app() -- 定义一个遍历关闭所有的 app 的函数
    for _,bid in ipairs(app.bundles()) do
    	app.close(bid)
    end
end
--
-- 备份 idfav 信息
close_all_app() -- 关闭所有应用
local old_idfavs = clear.idfav()
local f = io.open("/var/mobile/Media/1ferver/res/old_idfavs.txt", "wb")
if f then
    f:write(old_idfavs)
    f:close()
    clear.caches() -- 清理一下系统缓存
    sys.alert("备份成功")
else
    clear.idfav(old_idfavs) -- 无法备份的情况下立马恢复
    clear.caches() -- 清理一下系统缓存
    sys.alert("备份失败")
end
--
-- 从文件中恢复 idfav 信息
local f = io.open("/var/mobile/Media/1ferver/res/old_idfavs.txt", "rb")
if f then
    local old_idfavs = f:read("*a")
    f:close()
    close_all_app() -- 关闭所有应用
    local current_idfavs = clear.idfav(old_idfavs)
    if current_idfavs then
        f = io.open("/var/mobile/Media/1ferver/res/current_idfavs.txt", "wb")
        f:write(current_idfavs) -- 将现有的 idfav 信息保存到另一个文件
        f:close()
        clear.caches() -- 清理一下系统缓存
        sys.alert("恢复 idfav 信息成功")
    else
        sys.alert("恢复 idfav 信息失败")
    end
else
    sys.alert("文件打开失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`app.close`](/Handbook/app/app.close.md)、[`app.bundles`](/Handbook/app/app.bundles.md)

