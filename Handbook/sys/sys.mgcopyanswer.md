### 问系统一个问题 \(**sys\.mgcopyanswer**\)


#### 声明
```lua
答案 = sys.mgcopyanswer(问题)
```


#### 参数及返回值
- 问题
    - 文本型，问题名字，一些 问题名字 参考 [MobileGestalt.h](https://github.com/Cykey/ios-reversed-headers/blob/master/MobileGestalt/MobileGestalt.h) 或 [《MGCopyAnswer 字段参考》](https://club.xxtouch.com/forum.php?mod=viewthread&tid=169)  
- 答案
    - 字符串型 或 表型 或 实数型 或 整数型 或 布尔型 或 nil，系统的回复，如果问题不被支持，则返回 nil


#### 说明
> **这个函数在 1\.1\.2\-1 版以上方可使用**  
> 获取一些系统信息，底层使用 [MGCopyAnswer](http://iphonedevwiki.net/index.php/LibMobileGestalt.dylib) 完成  
> 获取系统信息 读取系统信息 获取设备信息 读取设备信息 设备标识 获取手机号 读取手机号  

  
#### 示例  
```lua
sys.alert("设备的序列号是："..sys.mgcopyanswer("SerialNumber"))
sys.alert("设备的 IMEI 是："..sys.mgcopyanswer("InternationalMobileEquipmentIdentity"))
sys.alert("设备的 MEID 是："..sys.mgcopyanswer("MobileEquipmentIdentifier"))

local infos = sys.mgcopyanswer('CarrierBundleInfoArray')
if type(infos) == 'table' then
    local info = infos[1]
    if #infos > 0 and
      if type(info.InternationalMobileSubscriberIdentity) == 'string' andthen
       type(info.IntegratedCircuitCardIdentity) == 'string' then
        sys.alert( sys.alert("运营商 IMSI 是："..info.InternationalMobileSubscriberIdentity)
    else
        sys.alert("无法读取运营商 IMSI，或许你应该插入一张 SIM 卡")
    end
    "IMSI："..if type(info.InternationalMobileSubscriberIdentity.."\n"..
            "ICCID："..info.IntegratedCircuitCardIdentity
        ) == 'string' then
        sys.alert("运营商 IMSI 是："..info.InternationalMobileSubscriberIdentity)
    else
        sys.alert("无法读取运营商 IMSI、ICCID，或许你应该给设备插入一张正常的 SIM 卡")
    end
else
    sys.alert("无法读取运营商信息，或许你应该给设备插入一张正常的 SIM 卡")
end

local phone_number = sys.mgcopyanswer('PhoneNumber')
if sys.mgcopyanswer('SIMTrayStatus') == 'kCTSIMSupportSIMTrayInsertedWithSIM' and type(phone_number) == 'string' then
    sys.alert("手机号是："..phone_number)
else
    sys.alert("无法读取手机号，或许你应该给设备插入一张正常的 SIM 卡")
end
```

