### 录制设置开关

- 接口描述

设置录制包含音量加键
```
POST /set_record_volume_up_on HTTP/1.1
```
设置录制不包含音量加键
```
POST /set_record_volume_up_off HTTP/1.1
```
设置录制包含音量减键
```
POST /set_record_volume_down_on HTTP/1.1
```
设置录制不包含音量减键
```
POST /set_record_volume_down_off HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
