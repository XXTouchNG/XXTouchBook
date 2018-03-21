### 大漠找字/文字识别 模块


- 工具下载
> [大漠综合工具.zip](http://static.zybuluo.com/xxtouch/yv2hetf34597w9m25aetw7sa/%E5%A4%A7%E6%BC%A0%E7%BB%BC%E5%90%88%E5%B7%A5%E5%85%B7.zip)


#### 说明
> 大漠找字识字不用我解释是什么了吧？  
> 这个模块使用废弃的 [matrix_dict 模块](https://www.zybuluo.com/xxtouch/note/520999#matrixdict字库对象-模块-已废弃) 封装，源代码开放。  
> 安装 XXTouch 之后可以在设备 ```/var/mobile/Media/1ferver/lua/dm.lua``` 查看源代码  
> **这个模块在 1\.1\.0\-1 版以上方可使用**  


#### 示例  
```lua
-- 看例子！！
local dm = require("dm")                    -- 引用 dm 库
dm.SetPath("/var/mobile/Media/1ferver/res") -- 设置字库查找目录，默认 /var/mobile/Media/1ferver/res
dm.SetDict(0, "dm_soft.txt")                -- 设置一个编号对应的字库文件
dm.UseDict(0)                               -- 选择字库编号，默认 0
--
local found, x, y = dm.FindStr(0, 0, 307, 215, "相机", "4d4226-404010", 1.0)
local text = dm.Ocr(0, 0, 307, 215, "4d4226-404010", 1.0)
sys.alert(table.deep_print({found, x, y, text}))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`table.deep_print`](/Handbook/ext-table/table.deep_print.md)  

