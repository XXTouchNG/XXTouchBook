### 音量键事件设置开关

- 接口描述

设置长按音量加键的动作
```
POST /set_hold_volume_up_action HTTP/1.1

0|1|2
```
设置长按音量减键的动作
```
POST /set_hold_volume_down_action HTTP/1.1

0|1|2
```
设置按一下音量加键的动作
```
POST /set_click_volume_up_action HTTP/1.1

0|1|2
```
设置按一下音量减键的动作
```
POST /set_click_volume_down_action HTTP/1.1

0|1|2
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
