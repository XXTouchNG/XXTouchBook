### 读取配置

配置完成后, 在 `defaults` 指定的保存位置, 读取 plist 中键 `key` == "switch1" 的值, 即为开关 "switch1" 的状态. 

``` lua
local __xui_conf = function(defaults)
	return "/var/mobile/Media/1ferver/uicfg/"..defaults..".plist"
end

local __xui_read = function(defaults)
	local plist = require("plist")
	return plist.read(__xui_conf(defaults)) or {}
end

local __xui_write = function(defaults, dict)
    local plist = require("plist")
    plist.write(__xui_conf(defaults), dict)
end;

_G['xui'] = {
	reload = xpp.ui_reload;
	dismiss = xpp.ui_dismiss;
	setup = xpp.ui_setup;
	show = xpp.ui_show;
	read = __xui_read;
	write = __xui_write;
    get = function(defaults, key)
    	return __xui_read(defaults)[key]
    end;
    set = function(defaults, key, value)
	    local dict = __xui_read(defaults)
	    dict[key] = value
	    __xui_write(defaults, dict)
    end;
}

local defaultsKey = "com.yourcompany.A-Script-Bundle"
local switch1 = xui.get(defaultsKey, "switch-1")
```

