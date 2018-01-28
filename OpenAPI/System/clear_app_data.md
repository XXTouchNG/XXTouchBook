### 清理应用程序存档

- 接口描述

```
POST /clear_app_data HTTP/1.1

{"bid":"应用包名"}
```

- 可能的返回

```json
{"code":0,"message":"清理已经完成"}
```
```json
{"code":1,"message":"操作失败"}
```
```json
{"code":8,"message":"参数错误"}
```
```json
{"code":11,"message":"这个应用程序的存档不能清理"}
```

- 说明
    - 这个接口在 1.0.3-2 版以上方可使用
