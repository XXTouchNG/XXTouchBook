### 禁弹出 “无 SIM 卡” 弹窗开关

- 接口描述

禁止 “无 SIM 卡” 弹窗弹出
```
POST /set_no_nosim_alert_on HTTP/1.1
```
不禁止 “无 SIM 卡” 弹窗弹出
```
POST /set_no_nosim_alert_off HTTP/1.1
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```

- 说明
    - 在 1.0.4-1 版以上, 支持 iOS 9
