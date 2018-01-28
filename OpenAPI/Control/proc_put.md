### 设置进程词典条目的值

- 接口描述

```
POST /proc_put HTTP/1.1

{"key":"[键]","value":"[值]"}
```

- 可能的返回

```json
{"code":0,"message":"操作成功","key":"[键]","old_value":"[旧值]","value":"[新值]"}
```
```json
{"code":1,"message":"操作失败"}
```

- 说明
    - 存储一个以 [键] 为键，值为 [值] 的条目到设备正在运行的 XXTouch 服务进程中
    - [键] 用于提取值
    - [值] 一个字符串


- 示例代码

例如可以构造如下请求发送到设备
```
POST /proc_put HTTP/1.1
Content-Length: 45

{"key":"havonz","value":"苏泽是个好人"}
```

然后设备的脚本中如果有如下代码
```lua
sys.alert(proc_get("havonz"))
```

![download.svg](proc_put/download.svg)
