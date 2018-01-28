### 获取设备已安装应用程序信息

- 接口描述

```
POST /applist HTTP/1.1

{"no_icon": true|false}
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":[
        {
            "bid":"com.xxx.xxx.1",
            "name":"应用本地化名字",
            "bundle_path":"应用包路径",
            "data_path":"应用数据路径",
            "icon":"应用程序图标数据（base64 编码）"
        },
        {
            "bid":"com.xxx.xxx.2",
            "name":"应用本地化名字",
            "bundle_path":"应用包路径",
            "data_path":"应用数据路径",
            "icon":"应用程序图标数据（base64 编码）"
        },
    ]
}
```
```json
{"code":8,"message":"参数错误"}
```

- 说明
    - no_icon 参数可选，在 1.1.3-1 版以上方可使用，用于获取除 icon 数据以外所有的信息
