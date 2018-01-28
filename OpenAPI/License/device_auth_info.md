### 获得当前设备的授权信息

- 接口描述

```
POST /device_auth_info HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"ok",
    "data":{
        "nowDate": 1517149407,
        "expireDate": 1517149407 // 过期时间 - 现在时间 小于等于 0 的话，也是过期
    }
}
```
```json
{"code":1,"message":"操作失败"}   // 连接服务器失败
```
```json
{"code":-1,"message":"..."}         // 其它任何非 0 值原因都用 message 描述
```
