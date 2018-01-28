### 设置设备名
- 接口描述

```
POST /set_device_name HTTP/1.1

{"name":"设备名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":8,"message":"参数错误"}
```
