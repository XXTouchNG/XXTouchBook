### 清理 GPS 伪装信息

- 接口描述

```
POST /clear_gps HTTP/1.1

{"bid": "com.xxx.xxx"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - bid 参数可选，在 1.1.3-1 版以上方可使用，用于清除指定应用的 GPS 伪装信息
