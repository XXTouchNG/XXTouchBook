### LuaSocket 扩展库 (luasocket)


#### [LuaSocket 手册地址](http://w3.impa.br/~diego/software/luasocket/reference.html)

#### 连接超时示例
```lua
local socket = require("socket")
local sock = socket.tcp()
sock:settimeout(0.2) -- 设置连接超时秒数
if (sock:connect("220.181.57.217", 80)) then
    sock:close() -- 关闭连接
    sys.alert("能连上")
else
    sys.alert("超时了")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

