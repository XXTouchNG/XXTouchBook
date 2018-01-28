### 禁弹出 “使用推送通知来连接 iTunes” 弹窗开关

- 接口描述

禁止 “使用推送通知来连接 iTunes” 弹窗弹出
```
POST /set_no_need_pushid_alert_on HTTP/1.1
```
不禁止 “使用推送通知来连接 iTunes” 弹窗弹出
```
POST /set_no_need_pushid_alert_off HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
