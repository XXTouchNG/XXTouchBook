### 获取设备信息

- 接口描述

```
POST /deviceinfo HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "devsn":"XXXXXXXXXXXX",                                // 设备序列号
        "zeversion":"0.0.1.733",                               // 服务程序版本
        "sysversion":"7.1.2",                                  // 系统版本
        "devname":"蛤蛤蛤蛤",                                   // 设备名
        "devmac":"10:11:12:13:14:15",                          // 设备 MAC 地址
        "deviceid":"1234567890123456789012345678901234567890", // 设备 UDID
        "devtype":"iPhone5,3",                                 // 设备类型
        "wifi_ip":"192.168.1.100",                             // WIFI IP 地址
        "ipaddr":"127.0.0.1",                                  // 当前访问的本机地址
        "port":46952                                           // 端口
    }
}
```
