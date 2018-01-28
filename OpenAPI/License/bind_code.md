### 绑定一个授权码

- 接口描述

```
POST /bind_code HTTP/1.1

XXXXXXXXXXXXXXXX
```

- 可能的返回

```json
{"code":0,"message":"充值成功，新增授权时间 XX 天 XX 小时 XX 分钟"}       // 表示绑定成功
```
```json
{"code":1,"message":"操作失败"} // 连接服务器失败
```
```json
{"code":-1,"message":"..."}       // 其它任何非 0 值原因都用 message 描述
```
