### lcurl 模块


**这个模块在 1\.1\.0\-1 版以上方可使用**

#### [lcurl 手册地址](http://lua-curl.github.io/lcurl/modules/lcurl.html)

#### URIEncode 和 URIDecode
```lua
-- URL编码 URI编码 百分号编码 URLEncode URLDecode URLEscape URIEscape PercentEscape
local curl = require('lcurl')
local e = curl.easy()
--
print(e:escape('abcd$%^&*()'))                 -- 输出 "abcd%24%25%5E%26%2A%28%29"
--
print(e:unescape('abcd%24%25%5E%26%2A%28%29')) -- 输出 "abcd$%^&*()"
--
sys.alert(print.out())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

#### 模拟触摸精灵 httpGet 实现示例
```lua
function httpGet(url) -- 也能请求 ftp 资源 (此函数已内置，不需要再拷贝到自己脚本中，只是 lcurl 使用实例而已) 
	if (url:sub(1, 6) ~= "ftp://" and
		url:sub(1, 7) ~= "http://" and
		url:sub(1, 8) ~= "https://") then
		url = "http://"..url
	end
	local curl = require("curl.safe")
	local buffer_t = {}
	local write_f = function(s)
		buffer_t[#buffer_t + 1] = s
	end
	local noerr, err = pcall(function()
		curl.easy()
			:setopt(curl.OPT_URL, url)
			:setopt(curl.OPT_CONNECTTIMEOUT, 60)
			:setopt_writefunction(write_f)
		:perform()
	end)
	if (noerr) then
		return table.concat(buffer_t)
	else
		return nil, err
	end
end
```
**注**：上述代码中使用了非本章函数 [table.concat](http://cloudwu.github.io/lua53doc/manual.html#pdf-table.concat)
