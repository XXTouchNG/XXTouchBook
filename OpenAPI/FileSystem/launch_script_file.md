### 运行已经选择的脚本

- 接口描述

```
POST /launch_script_file HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"脚本运行开始"}
```
```json
{"code":1,"message":"操作失败"}
```
```json
{"code":2,"message":"脚本有语法错误","detail":"具体的错误信息"}
```
```json
{"code":3,"message":"已有脚本正在运行中"}
```
```json
{"code":4,"message":"无法读取文件"}
```
```json
{"code":8,"message":"参数错误"}
```
```json
{"code":9,"message":"脚本已损坏"}
```
```json
{"code":10,"message":"软件需要更新方能支持使用这个脚本"}
```

- 电脑端获取已经选择脚本示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import httplib, json

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/launch_script_file", '')

response = conn.getresponse()

if response.status == 200:
    ret = json.loads(response.read())
    print ret['message']
else:
    print response.status, response.reason
    print response.read()

conn.close()
```
