### 写入内容到脚本文件

- 接口描述

```
POST /write_script_file HTTP/1.1

{"filename":"文件名", "data":"文件内容"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":4,"message":"无法写入文件"}
```
```json
{"code":8,"message":"参数错误"}
```

- 电脑端写入内容到脚本文件示例（适用于 Python 2.7.x）：

```python
# -*- coding: utf-8 -*-
import httplib, json, base64

luaf = open('r:/123.lua', 'r') # 脚本文件路径
luatext = luaf.read()

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/write_script_file", json.dumps({
    "filename":"123.lua",
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
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/lua/scripts/```
    - 如果脚本是二进制数据比如加密的脚本，则需要将脚本内容使用 base64 算法编码
    - **如果文件不存在，则会创建文件**
