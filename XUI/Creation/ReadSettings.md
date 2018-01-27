### 读取配置

配置完成后, 在 **defaults** 指定的保存位置, 读取 plist 中键 **key** == "switch1" 的值, 即为开关 "switch1" 的状态. 

``` lua
function read_xui_conf(bid)
	local plist = require("plist")
	return plist.read("/var/mobile/Media/1ferver/uicfg/"..bid..".plist") or {}
end
local conf = read_xui_conf('com.yourcompany.A-Script-Bundle')
sys.alert(json.encode(conf))
local enabled = conf.enabled
```
