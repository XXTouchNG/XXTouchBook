### 停止脚本接口

- 接口描述

```
POST /recycle HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"脚本即将停止"}
```

- 说明
    - 这个接口返回之时不保证脚本已完全停止，可以通过 /is_running 接口检测
