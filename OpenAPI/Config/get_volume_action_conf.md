### 获取音量键事件设置

- 接口描述

```
POST /get_volume_action_conf HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "hold_volume_up":"0", // 0 代表 “脚本启/停（有弹窗）”、1 代表 “脚本启/停”、2 代表 “无动作”；下同
        "hold_volume_down":"0",
        "click_volume_up":"0",
        "click_volume_down":"0",
        "activator_installed":true, // 是否安装了 Activator，如果安装了 Activator 则这里设置不生效
    }
}
```
