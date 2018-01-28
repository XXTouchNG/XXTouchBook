### 获取文件列表

- 接口描述

```
POST /file_list HTTP/1.1

{"directory":"/lua/scripts/"}
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "list":[
            {
                "name":"文件名",
                "change":1446566100,
                "size":144,
                "access":1442128726,
                "gid":20,
                "blksize":4096,
                "uid":0,
                "rdev":0,
                "blocks":8,
                "nlink":1,
                "permissions":"rw-r--r--",
                "mode":"file",
                "dev":16777219,
                "ino":4887321,
                "modification":1443063784
            },
            {
                "name":"文件夹名",
                "change":1464135126,
                "size":102,
                "access":1464135114,
                "gid":20,
                "blksize":4096,
                "uid":0,
                "rdev":0,
                "blocks":0,
                "nlink":2,
                "permissions":"rwxr-xr-x",
                "mode":"directory",
                "dev":16777219,
                "ino":9407305,
                "modification":1464135126
            },
            ...
        ]
    }
}
```

- 电脑端获取脚本列表示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import httplib, json

conn = httplib.HTTPConnection("192.168.31.72:46952") # 设备端地址及端口
conn.request("POST", "/file_list", json.dumps({
    "directory" : "/lua/scripts/"
}))

response = conn.getresponse()

if response.status == 200:
    ret = json.loads(response.read())
    if ret['code']==0:
        for finfo in ret['data']['list']:
            if finfo['name']!='.' and finfo['name']!='..':
                print(finfo['name'])
    else:
        print ret['message']
else:
    print response.status, response.reason
    print response.read()

conn.close()
```

- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
    - 开源脚本模块存放目录为 ```/var/mobile/Media/1ferver/lua/```
    - 脚本存放目录为 ```/var/mobile/Media/1ferver/lua/scripts/```
    - 插件存放目录为 ```/var/mobile/Media/1ferver/lib/```
    - 资源存放目录为 ```/var/mobile/Media/1ferver/res/```
    - 日志存放目录为 ```/var/mobile/Media/1ferver/log/```
    - UI配置存放目录为 ```/var/mobile/Media/1ferver/uicfg/```
    - 文字识别字库存放目录为 ```/var/mobile/Media/1ferver/tessdata/```