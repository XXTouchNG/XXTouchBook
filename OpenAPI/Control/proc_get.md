### 查看进程词典条目的值

- 接口描述

```
POST /proc_get HTTP/1.1

{"key":"[键]"}
```

- 可能的返回

```json
{"code":0,"key":"[键]","value":"[值]"}
```
```json
{"code":1,"message":"操作失败"}
```

- 说明
    - 查看一个设备正在运行的 XXTouch 服务进程中以 [键] 为键的条目的值
    - 当设备正在运行的 XXTouch 服务进程中以 [键] 为键的条目没有值的时候，返回失败


- 示例代码

例如当设备的脚本中执行如下代码
```lua
proc_put("taozi", "桃子是个好人")
```

然后构造如下请求发送到设备
```
POST /proc_get HTTP/1.1
Content-Length: 15

{"key":"taozi"}
```

则会返回的数据如下
```json
{"code":0,"key":"taozi","value":"桃子是个好人"}
```
