### 创建一个 VPN 配置 \(**vpnconf\.create**\)


#### 声明
```lua
创建成败 = vpnconf.create(配置表)
```


#### 参数及返回值
> - 配置表
>   - 表型，用于描述需要创建的 VPN 配置的描述的字典
> - 创建成败
>   - 布尔型，创建成功返回 true，创建失败返回 false，创建失败通常是因为参数不全或错误


#### 说明
> **这个函数在 1\.2\-3 版以上方可使用**  
> 用于快速创建一个 VPN 配置，不支持 IKEv2 类型创建，如果是旧版 XXTouch 或需要创建 IKEv2 类型的 VPN 可使用 [VPN 扩展模块](https://club.xxtouch.com/forum.php?mod=viewthread&tid=61)  

#### 配置表支持的字段及意义

|字段名            |类型          |意义|
|-----------------|-------------|----|
|dispName         |文本型        |VPN 的显示名|
|VPNType          |文本型        |VPN 的类型，支持 `"PPTP"`、`"L2TP"`、`"IPSec"`|
|server           |文本型        |服务器地址|
|authorization    |文本型        |账号|
|password         |文本型        |密码|
|secret           |文本型，可选参数|密钥，PPTP 可不填|
|encrypLevel      |整数型，可选参数|加密级别，默认 `1`|
|group            |文本型，可选参数|群组名称，默认 `""`|
|VPNSendAllTraffic|整数型，可选参数|是否发送所有流量，默认 `1`|


#### 示例  
```lua
local success = vpnconf.create{
    dispName = '1个测试VPN',       -- VPN 的显示名
    VPNType = "L2TP",              -- VPN 的类型，支持 PPTP、L2TP、IPSec、IKEv2
    server = 'www.xxtouch.com',    -- 服务器地址
    authorization = 'havonz',      -- 账号
    password = '123456',           -- 密码
    secret = 'XXTOUCH',            -- 密钥，PPTP 可不填
    encrypLevel = 1,               -- 加密级别，选填，默认 1
    group = '',                    -- 群组名称，选填，默认 ""
    VPNSendAllTraffic = 1,         -- 是否发送所有流量，选填，默认 1
}
if success then
    sys.alert('创建成功')
else
    sys.alert('创建失败，确定人品没有问题？')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

