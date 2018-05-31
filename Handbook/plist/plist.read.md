### 读取 plist 文件 \(**plist\.read**\)


#### 声明
```lua
plist = require("plist") -- 需要先引入 plist 模块
关联表 = plist.read(文件路径)
```


#### 参数及返回值
- 文件路径
    - 文本型，需要读取的 plist 文件的绝对路径
- 关联表
    - 表型 或 nil，读取成功则返回 plist 的树形结构对应的一个表，否则返回 nil


#### 说明
> 读取 plist 文件转换成表  
plist 文件中的非通用数据类型值不支持读取，会被忽略  
这个函数可以在 XUI 中使用  


#### 示例  
```lua
local plist = require("plist")
local plfilename = "/var/mobile/Library/Caches/com.apple.mobile.installation.plist" --设置plist路径
local tmp2 = plist.read(plfilename)                 --读取plist文件内容并返回一个TABLE
sys.alert(tmp2['Metadata']['ProductBuildVersion'])  --显示ProductBuildVersion的键值
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

