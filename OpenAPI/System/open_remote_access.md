### 打开远程访问

- 接口描述

```
POST /open_remote_access HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"操作失败"}
```

- 说明
    - **这个 API 只有设备本机可以调用**
