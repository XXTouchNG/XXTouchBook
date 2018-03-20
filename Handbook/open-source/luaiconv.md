### luaiconv 编码转换扩展库


#### [luaiconv 手册地址](http://ittner.github.io/lua-iconv/#api-documentation)


#### GBK 编码转 UTF\-8 编码示例
```lua
local iconv = require("iconv")
local cd = iconv.new("utf-8", "gbk") -- 新建一个 GBK 编码到 UTF8 编码的转换器
local f = io.open("/User/1.txt", "rb")
local s = f:read("*a")
f:close()
sys.alert(cd:iconv(s))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)


#### Unicode Little Endian (UTF\-16LE)  编码转 UTF\-8 编码示例
```lua
local iconv = require("iconv")
local cd = iconv.new("utf-8", "utf-16le") -- 新建一个 UTF-16LE 编码到 UTF8 编码的转换器
local f = io.open("/User/1.txt", "rb")
local s = f:read("*a")
f:close()
sys.alert(cd:iconv(s))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

#### Unicode Big Endian (UTF\-16BE)  编码转 UTF\-8 编码示例
```lua
local iconv = require("iconv")
local cd = iconv.new("utf-8", "utf-16be") -- 新建一个 UTF-16BE 编码到 UTF8 编码的转换器
local f = io.open("/User/1.txt", "rb")
local s = f:read("*a")
f:close()
sys.alert(cd:iconv(s))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

