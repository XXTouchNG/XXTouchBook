### 写入一个文件（RAW）

- 接口描述

```
POST /write_file HTTP/1.1

{"filename":"文件名","data":"内容的 base64 编码字符串"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":4,"message":"无法写入文件"}
```

- 电脑端写入内容到脚本文件示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import httplib, json, base64

luaf = open('r:/123.lua', 'r') # 脚本文件路径
luatext = luaf.read()

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/write_file", json.dumps({
    "filename":"lua/scripts/123.lua",
    "data":base64.b64encode(luatext)
}))

response = conn.getresponse()

if response.status == 200:
    ret = json.loads(response.read())
    print ret['message']
else:
    print response.status, response.reason
    print response.read()

conn.close()
```
    
- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
