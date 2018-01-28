### 导入一张照片到系统相册

- 接口描述

```
POST /image_to_album HTTP/1.1

[图像数据]
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"操作失败"}
```

- 电脑端导入图片到设备相册示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import httplib, json

imgf = open('r:/1.png', 'rb') # 图片文件路径
imgdata = imgf.read()

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/image_to_album", imgdata)

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
    - 这个接口在 1.0.6-1 版以上方可使用
    - 支持的数据格式有 PNG、JPG
