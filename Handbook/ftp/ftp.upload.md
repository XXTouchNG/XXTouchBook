### FTP 文件上传 \(**ftp\.upload**\)


#### 声明
```lua
上传成败, 上传信息 = ftp.upload(本地文件路径, URL [, 连接超时秒, 断点续传模式, 分块回调函数, 缓冲区尺寸 ])
```

#### 参数及返回值
> - 本地文件路径
>   - 文本型，本地文件路径
> - URL
>   - 文本型，需要上传到的远端地址，账号及密码被包含在这一参数中
> - 连接超时秒
>   - 实数型，可选参数，连接超时时间，单位秒，默认 10
> - 断点续传模式
>   - 布尔型，可选参数，是否需要支持断点续传，是为 true，否为 false，默认 false
> - 分块回调函数
>   - 函数型
>       - 可选参数，分块回调函数，每上传完一个分块都会回调一次这个函数，默认 空函数
>       - 分块回调函数第一个参数为当前上传的信息，回调函数返回 true 则打断这次上传
> - 缓冲区尺寸
>   - 整数型，可选参数，缓冲区大小字节数，默认自动最优配置
> - 上传成败
>   - 布尔型，连接是否成功
> - 上传信息
>   - 表型 或 文本型，如果连接成功则返回表型上传信息，否则返回连接失败原因文本描述


#### 说明
```lua
-- 第二个返回值下载信息结构如下
{
    resource_size = 本地文件总字节数,
    start_pos = 本次上传从本地文件的开始的位置,
    size_upload = 本次上传的字节数,
    speed_upload = 本次上传的速度 (单位：字节/秒) ,
}
```
> 这个函数适合大文件上传，在传输的过程中停止脚本可能会缓慢  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  
> **这个函数可能会让出，在这个函数返回之前，其它的 [线程](/Handbook/thread/README.md) 可能会得到运行机会**  
        

#### 简单示例  
> 账号密码写在 URL 中，具体 URL 格式如下 \(中括号内是可选参数\)  
```lua
ftp://[账号:密码@]地址[:端口]/路径
```
> 账号或密码中包含 `@`、`:`、`/` 这三个字符可分别用 `%40`、`%3A`、`%2F` \(若还有其它 URL 中不能包含的字符可使用 URLEncode 进行编码\) 
> 例如账号是 ``havonz`` 密码是 ``11@@22`` 参考下例
```lua
local done, info = ftp.upload("/var/mobile/1.zip", "ftp://havonz:11%40%4022@192.168.31.13/1.zip")
if (done) then
    sys.alert("如果没有意外，已经上传好了")
else
    sys.alert("连接失败："..info)
end
```


#### 复杂示例  
```lua
local done, info = ftp.upload("/var/mobile/1.zip", "ftp://havonz:123456@192.168.31.13/1.zip", 10, true, function(binfo)
    local percent = math.floor(((binfo.start_pos + binfo.size_upload) / binfo.resource_size) * 100)
    sys.toast("上传进度 "..percent.."%")
end, 4096 * 1024)
--
if (done) then
	if (info.start_pos + info.size_upload < info.resource_size) then
	    sys.alert(
	        "上传中断\n本次上传 "..info.size_upload.." 字节"
	        .."\n从第 "..info.start_pos.." 字节开始上传"
	        .."\n平均速度为 "..math.floor(info.speed_upload/1024).." kB/s"
	        .."\n还有剩 "..(info.resource_size - (info.start_pos + info.size_upload)).." 字节"
	    )
	else
	    sys.alert(
	        "上传完成\n本次上传 "..info.size_upload.." 字节"
	        .."\n从第 "..info.start_pos.." 字节开始上传"
	        .."\n平均速度为 "..math.floor(info.speed_upload/1024).." kB/s"
	    )
	end
else
	sys.alert("连接失败："..info)
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`sys.toast`](/Handbook/sys/sys.toast.md)  

