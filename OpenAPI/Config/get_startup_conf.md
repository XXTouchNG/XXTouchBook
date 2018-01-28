### 获取开机启动设置

- 接口描述

```
POST /get_startup_conf HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "startup_run":true, // true - 已启用开机启动；false - 未启用开机启动
        "startup_script":"开机启动的脚本名"
    }
}
```
```json
{"code":5,"message":"配置文件有误"}
```
