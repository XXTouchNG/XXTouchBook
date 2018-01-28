### 选择一个脚本文件

- 接口描述

```
POST /select_script_file HTTP/1.1

{"filename":"文件名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"操作失败"}
```
```json
{"code":4,"message":"无法读取文件"}
```
```json
{"code":8,"message":"参数错误"}
```

- 电脑端选择脚本列表示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import httplib, json

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/select_script_file", json.dumps({
    "filename" : "123.lua"
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
