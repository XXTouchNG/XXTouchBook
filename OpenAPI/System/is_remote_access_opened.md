### 获取远程服务开启状态

- 接口描述

```
POST /is_remote_access_opened HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功","data":{"opened":true|false}}
```

- 说明
    - **这个 API 只有设备本机可以调用**
