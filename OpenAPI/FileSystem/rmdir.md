### 删除一个目录

- 接口描述

```
POST /rmdir HTTP/1.1

{"directory":"目录名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
    - 这个函数无条件删除目录，不会管目录是不是空的
