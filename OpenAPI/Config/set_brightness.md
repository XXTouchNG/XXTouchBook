### 设置设备的屏幕背光度

- 接口描述

```
POST /set_brightness HTTP/1.1

{"level":范围0.0~1.0}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - 这个接口在 1.0.2-1 版以上方可使用
