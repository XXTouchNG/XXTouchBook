### 发起 HEAD 请求 (**http\.head**)


#### 声明
```lua
HTTP状态码, 返回头JSON文本 = http.head(URL [, 超时秒, 请求头, URL不ESCAPE ])
```


#### 参数及返回值
> - URL
>   - 文本型，需要请求的 URL 地址，该方法默认会对 URL 进行 escape 处理，如不需要可参考 **URL不ESCAPE** 参数说明
> - 超时秒
>   - 实数型，可选参数，请求超时时间，单位秒，默认 2
> - 请求头
>   - 表型，可选参数，发出的请求的头部信息，形式 \{field1 = value1, field2 = value2, \.\.\.\}，默认 \{\}
> - **URL不ESCAPE** \*1\.1\.3\-1 新增
>   - 布尔型，可选参数，true 表示不对 URL 进行 escape 直接请求，默认 false
>   - 对 URL 进行自定义 escape 可参考 [lcurl 模块](/Handbook/open-source/lcurl.md) 的 [easy:escape](http://lua-curl.github.io/lcurl/modules/lcurl.html#easy:escape)、[easy:unescape](http://lua-curl.github.io/lcurl/modules/lcurl.html#easy:unescape)
> - HTTP状态码
>   - 整数型，返回当次请求的 http 状态码，请求超时返回 \-1
> - 返回头JSON文本
>   - 文本型 或 nil，请求完成返回的 JSON 形式头部信息，请求超时返回 nil


#### 说明
> 使用 HTTP/1\.1 协议的 HEAD 方法请求获取网络资源的头部信息  
> HEAD 协议通常和 GET 请求会获得同样的返回头，但 HEAD 请求不会返回实际主体内容  
> **这个函数在 1\.1\.1\-1 版以上方可使用**  
> **这个函数可能会让出，在这个函数返回之前，其它的 [线程](/Handbook/thread/README.md) 可能会得到运行机会**  


#### 示例  
```
local c, h = http.head("https://www.xxtouch.com/测试文本.txt")
if c==200 then -- 如果返回的状态码是 HTTP_OK
    sys.alert(h) -- 输出请求到的头信息
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

