### 获得前台应用画面旋转方向

- 接口描述

```
POST /device_front_orien HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功","data":{"orien":0}} // 0 为 home 在下; 1 为 home 在右; 2 为 home 在左; 3 为 home 在上; 4 未知
```
