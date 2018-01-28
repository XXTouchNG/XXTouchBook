### 新建一个目录

- 接口描述

```
POST /mkdir HTTP/1.1

{"directory":"目录名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"操作失败","detail":"详细的错误信息"}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
