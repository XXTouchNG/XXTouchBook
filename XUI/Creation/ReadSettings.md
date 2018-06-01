### 读取配置

配置完成后, 在 `defaults` 指定的保存位置, 读取 plist 中键 `key` == "switch1" 的值, 即为开关 "switch1" 的状态. 读取、写入及更新 XUI 配置, 可参见 [XUI 脚本配置界面模块](/Handbook/xui/index.html).

``` lua
local switch1 = xui.get("com.yourcompany.A-Script-Bundle", "switch-1")
if (switch1) then
	-- ...
end
```

