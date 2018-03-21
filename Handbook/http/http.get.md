### 发起 GET 请求 \(**http\.get**\)


#### 声明
```lua
HTTP状态码, 返回头JSON文本, 返回主体 = http.get(URL [, 超时秒, 请求头, URL不ESCAPE ])
```


#### 参数及返回值
- URL
    - 文本型，需要请求的 URL 地址，该方法默认会对 URL 进行百分号 escape 处理，如不需要可参考 **URL不ESCAPE** 参数说明
- 超时秒
    - 实数型，可选参数，请求超时时间，单位秒，默认 2
    - \*1\.2\-3 版以上默认超时改为 10 秒
- 请求头
    - 表型，可选参数，发出的请求的头部信息，形式 \{field1 = value1, field2 = value2, \.\.\.\}，默认 \{\}
- **URL不ESCAPE** \*1\.1\.3\-1 新增
    - 布尔型，可选参数，true 表示不对 URL 进行 escape 直接请求，默认 false
    - 对 URL 进行自定义 escape 可参考 [lcurl 模块](/Handbook/open-source/lcurl.md) 的 [easy:escape](http://lua-curl.github.io/lcurl/modules/lcurl.html#easy:escape)、[easy:unescape](http://lua-curl.github.io/lcurl/modules/lcurl.html#easy:unescape)
- HTTP状态码
    - 整数型，返回当次请求的 http 状态码，请求超时返回 \-1
- 返回头JSON文本
    - 文本型 或 nil，请求完成返回的 JSON 形式头部信息，请求超时返回 nil
- 返回主体
    - 字符串型 或 nil，请求完成返回的内容，请求超时返回 nil


#### 说明
> 使用 HTTP/1\.1 协议的 GET 方法请求获取网络资源  
> 这个函数不会将资源存储到磁盘上，如果需要下载较大的网络资源，建议使用 [http.download](/Handbook/http/http.download.md)  
> **这个函数可能会让出，在这个函数返回之前，其它的 [线程](/Handbook/thread/README.md) 可能会得到运行机会**  
> 若服务器协议版本为 HTTP/1\.0 或 HTTP/0\.9，可使用  
```lua
返回主体 = httpGet(URL, 超时秒)
```
> 这个方法替代  


#### 示例  
```lua
local code, res_headers, body = http.get("http://www.baidu.com", 1, {
    ["User-Agent"] = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0)"; -- 模拟 IE8 的请求
    ["Cookie"] = "大佬你会不会啊？"; -- 顺带 Cookie 提交
})
if code==200 then -- 如果返回的状态码是 HTTP_OK
    sys.alert(body) -- 输出百度首页的网页 HTML
end
```


#### 示例  
```lua
-- 中文 URL 默认自动会 escape，包含中文的 URL 可直接像下面这样调用
local c, h, r = http.get("https://www.xxtouch.com/测试文本.txt")
if c==200 then -- 如果返回的状态码是 HTTP_OK
    sys.alert(r) -- 输出内容
end
--
-- 1.1.3-1 新增 no_escape (URL不ESCAPE)  参数示例，下面的例子与上面例子等效
local c, h, r = http.get("https://www.xxtouch.com/%E6%B5%8B%E8%AF%95%E6%96%87%E6%9C%AC.txt", 5, {}, true--[[这里]])
if c==200 then -- 如果返回的状态码是 HTTP_OK
    sys.alert(r) -- 输出内容
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)


#### http\.get 封装获取外网IP实例  
```
function get_ip()
	local done = false
	thread.dispatch(function()
		while (true) do
			if (done) then
				sys.toast("", -1)
				return
			else
				sys.toast("正在获取 IP 地址...", device.front_orien())
			end
			sys.msleep(2000)
		end
	end)
	while (true) do
		local c, h, b = http.get("http://ip.chinaz.com/getip.aspx?ts="..tostring(sys.rnd()), 60)
		if (c==200) then
			sys.toast("", -1)
			done = true
			return b:match('%d+%.%d+%.%d+%.%d+')
		end
	end
end
--
-- 将以上代码拷贝到自己的脚本最前面，然后在脚本中使用
sys.alert(get_ip())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`sys.rnd`](/Handbook/sys/sys.rnd.md)、[`thread.dispatch`](/Handbook/thread/thread.dispatch.md)、[`device.front_orien`](/Handbook/device/device.front_orien.md)  

