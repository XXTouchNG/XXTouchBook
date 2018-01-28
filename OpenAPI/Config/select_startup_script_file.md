### 选择开机启动脚本

- 接口描述

```
POST /select_startup_script_file HTTP/1.1

{"filename":"文件名"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":1,"message":"脚本运行的过程中无法做出该操作"}
```
