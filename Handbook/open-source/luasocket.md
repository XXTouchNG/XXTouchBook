### LuaSocket 扩展库


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


#### 模拟 HTTP 请求百度首页示例  
```lua
local socket = require('socket')

local sock = socket.tcp()
local ip = assert(socket.dns.toip('www.baidu.com'), '域名解析失败')
sock:settimeout(10)
assert(sock:connect(ip, 80) == 1, '连接失败或超时')

assert(
    sock:send(
        'GET / HTTP/1.1\r\n'..
        'Host: www.baidu.com\r\n'..
        'Accept: */*\r\n'..
        'Connection: close\r\n'..
        '\r\n'
    ),
    '发送数据超时'
)

local buf = {}
repeat
    local chunk, status, partial = sock:receive(4096)
    if (chunk) then
        buf[#buf + 1] = chunk
    else
        if (partial) then
            buf[#buf + 1] = partial
        end
    end
until status == "closed"
sock:close()

sys.alert(table.concat(buf))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[table.concat](http://cloudwu.github.io/lua53doc/manual.html#pdf-table.concat)  
