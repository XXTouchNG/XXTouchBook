### 获得用户偏好配置

- 接口描述

```
POST /get_user_conf HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "no_nosim_alert":true|false,     // “无 SIM 卡” 弹窗设置，true 为不弹，默认 false
        "no_low_power_alert":true|false, // “低电量” 弹窗设置，true 为不弹，默认 false
        "no_idle":true|false,
        // 失眠模式，true 为不休眠，默认 false （该设置只在远程开启的情况下生效）
        "script_on_daemon":true|false,
        // 守护模式，true 为服务非正常死亡复活会启动最后正在运行的脚本，默认 false
        "script_end_hint":true|false,    // 脚本停止提示文字开关，true 为提示，默认为 false
    }
}
```

- 说明
    - no_idle、script_on_daemon 字段在 1.0.3-3 以上版本方可使用
    - script_end_hint 字段在 1.0.5-1 以上版本方可使用
