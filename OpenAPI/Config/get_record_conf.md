### 获取录制设置

- 接口描述

```
POST /get_record_conf HTTP/1.1
```

- 可能的返回

```json
{
    "code":0,
    "message":"操作成功",
    "data":{
        "record_volume_up":true,  // 录制是否也包括音量上键
        "record_volume_down":true // 录制是否也包括音量下键
    }
}
```
