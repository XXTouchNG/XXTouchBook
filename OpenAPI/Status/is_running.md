### 获得脚本运行状态

- 接口描述

```
POST /is_running HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功"} // 代表没有脚本在运行也没有在录制
```
```json
{"code":3,"message":"已经有脚本正在运行中"}
```
```json
{"code":9,"message":"当前正在录制"}
```
