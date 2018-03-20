### 写入 plist 文件 \(**plist\.write**\)


#### 声明
```lua
plist = require("plist") -- 需要先引入 plist 模块
plist.write(文件路径, 关联表)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，需要写入的 plist 文件的绝对路径
> - 关联表
>   - 表型，这个表的树形结构将会转换成 plist


#### 说明
> 将一个表的树形结构写入到 plist 文件中  
> **请注意不要传入有引用环的表，会导致脚本无法终止甚至卡死**   
> **使用该函数操作文件会导致文件所有者变 root，如果需要更改用户级应用的 plist 需要在修改后将权限修正方可生效**  


#### 示例  
```lua
local plist = require("plist")
local plfilename = "/var/mobile/Library/Caches/com.apple.mobile.installation.plist" --设置plist路径
local tmp2 = plist.read(plfilename)                --读取plist文件内容并返回一个TABLE
tmp2["Metadata"]["ProductBuildVersion"] = "havonz" --将表中ProductBuildVersion键值改为havonz
plist.write(plfilename, tmp2)                      --将修改后的表写入PLIST文件
os.execute("chown mobile:mobile "..plfilename)     -- 修正文件权限
os.execute("chmod 644 "..plfilename)
```

