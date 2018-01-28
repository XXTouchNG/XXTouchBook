### 获取当前已经选择的脚本文件

- 接口描述

```
POST /get_selected_script_file HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "filename":"当前选择的文件名"
    }
}
```

- 电脑端选择脚本示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import httplib, json

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/get_selected_script_file", '')

response = conn.getresponse()

if response.status == 200:
    ret = json.loads(response.read())
    print ret['message']
    if ret['code'] == 0:
        print ret['data']['filename']
else:
    print response.status, response.reason
    print response.read()

conn.close()
```
    
- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/lua/scripts/```
