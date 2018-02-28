### LuaFileSystem 扩展库 (luafilesystem)


#### [LuaFileSystem 手册地址](http://keplerproject.github.io/luafilesystem/manual.html)

#### 获取路径中所有文件名示例
```lua
local lfs = require("lfs")
for filename in lfs.dir("/var/mobile") do
	if (filename ~= ".." and filename ~= ".") then
		print(filename)
	end
end
sys.alert(print.out())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)


#### 获取文件 (夹) 属性示例
```lua
local lfs = require("lfs")
--
local attr = lfs.attributes("/var/mobile")
--
print("类型", attr.mode)
print("最后访问时间", os.date("%Y-%m-%d %H:%M:%S", attr.access))
print("最后修改时间", os.date("%Y-%m-%d %H:%M:%S", attr.modification))
print("最后状态变更时间", os.date("%Y-%m-%d %H:%M:%S", attr.change))
--
sys.alert(print.out())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)
    

#### 获取及切换脚本当前目录示例
```lua
local lfs = require 'lfs'
--
sys.alert(lfs.currentdir()) -- 输出 "/"
--
lfs.chdir('/var/mobile/Media/1ferver/lua/scripts')
--
sys.alert(lfs.currentdir()) -- 输出 "/var/mobile/Media/1ferver/lua/scripts"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

