### 开机启动设置开关

- 接口描述

启用开机启动
```
POST /set_startup_run_on HTTP/1.1
```
禁用开机启动
```
POST /set_startup_run_off HTTP/1.1
```

- 可能的返回
   
```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"脚本运行的过程中无法做出该操作"}
```
