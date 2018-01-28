### 删除一个脚本文件

- 接口描述

```
POST /remove_script_file HTTP/1.1

{"filename":"文件名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":4,"message":"无法读取文件"}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/lua/scripts/```
