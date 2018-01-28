### 远程启动脚本接口

- 接口描述

```
POST /spawn HTTP/1.1
spawn_args: {"脚本启动参数":...}

[脚本正文]
```

- 可能的返回

```json
{"code":1,"message":"操作失败"}
```
```json
{"code":2,"message":"脚本有语法错误","detail":"具体的错误信息"}
```
```json
{"code":3,"message":"已经有脚本正在运行中"}
```
```json
{"code":233,"message":"什么情况？"}
```

- 说明
    - [脚本启动参数] 是一个不包含换行符的可打印字符串
    - [脚本正文] 是脚本内容，可以是文本也可以是加密的二进制数据
    - 脚本端可以通过 proc_get 或是 proc_take 获取脚本启动参数
    - 脚本将不会作为文件存到设备上，只是会运行
    - 上一条的例外，设备启用 脚本守护模式 的情况下，设备会缓存与设备相关的脚本数据


- 示例

例如可以构造如下请求发送到设备
```
POST /spawn HTTP/1.1
spawn_args: {"server_ip":"192.168.31.13","port":55555}
Content-Length: 123

local args = proc_get("spawn_args")
args = json.decode(args)

sys.alert("帐号服务器的 IP 为："..args.server_ip.."\n端口为："..args.port)
```

![download.svg](spawn/download.svg)

- 例子的 Python 语言实现（适用于 Python 2.7.x）：

```python
# -*- coding: utf-8 -*-

import httplib, json

spawn_args = {
    "server_ip": "192.168.31.13", # 电脑端 IP 地址
    "port": 55555,                # 电脑端端口
}

data = r'''
local args = proc_get("spawn_args")
args = json.decode(args)
sys.alert("帐号服务器的 IP 为："..args.server_ip.."\n端口为："..args.port)
'''

headers = {
    "Content-type": "text/lua",
    "spawn_args": json.dumps(spawn_args),
}

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/spawn", data, headers)

response = conn.getresponse()
print response.status, response.reason

data = response.read()
print data

conn.close()
```
