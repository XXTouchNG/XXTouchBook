### 禁弹出 “低电量” 弹窗开关

- 接口描述

禁止 “低电量” 弹窗弹出
```
POST /set_no_low_power_alert_on HTTP/1.1
```
不禁止 “低电量” 弹窗弹出
```
POST /set_no_low_power_alert_off HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
