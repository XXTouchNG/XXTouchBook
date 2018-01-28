### 删除一个文件或空目录（RAW）

- 接口描述

```
POST /remove_file HTTP/1.1

{"filename":"文件名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"操作失败","detail":"具体的错误信息"}
```
```json
{"code":4,"message":"文件或目录不存在"}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
