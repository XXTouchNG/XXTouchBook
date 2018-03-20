### 打开扫码器 \(**utils\.open\_code\_scanner**\)


#### 声明
```lua
打开成败 = utils.open_code_scanner()
```


#### 参数及返回值
> - 打开成败
>   - 布尔型，相机打开成功会返回 true，否则返回 false


#### 说明
> **iOS 9 以上的 iPad 无法开启扫码器**   
> 打开条码/二维码扫描器，会启动相机，与所有需要用到摄像头的应用不能同时使用  
> 这个函数调用不会返回扫描的结果  
> 扫描器的结果将通过 [系统消息](#系统回调消息) [`xxtouch.scan_code_callback`](#扫码结果回调消息) 传回  


#### 示例  
[`扫码消息回调示例`](#扫码结果回调消息)  
```lua
-- 简易二维码扫描器演示
--
proc_queue_clear("xxtouch.scan_code_callback") -- 清空消息队列
local success = utils.open_code_scanner()      -- 打开扫码相机
if not success then
	sys.alert("可以于 “设置-通用-访问限制” 中取消 “相机” 的访问限制", 0, "无法访问系统相机")
	return
end
--
local w, h = screen.size()
webview.show({ -- 屏幕上方创建一个半透明的条
	html = [[<html>
	<h2><center>二维码置入镜头范围</center></h2>
	</html>]],
	x = 0, y = 0,
	width = w, height = 100,
	alpha = 0.2, opaque = false,
	animation_duration = 0.2,
})
--
while (true) do -- 循环等待消息
	local ret = proc_queue_pop("xxtouch.scan_code_callback")
	if (ret ~= "") then
		local rt = json.decode(ret)
		if (rt.type == "org.iso.QRCode") then
			utils.close_code_scanner()
			webview.show({
				x = 0, y = 0,
				width = 0, height = 0,
				animation_duration = 0.2, opaque = false,
			})
			local choice = sys.alert(rt.string, 0, "扫描到二维码内容",
							        "取消", "拷贝", "转存相册")
			if (choice == 1) then
				pasteboard.write(rt.string)
			elseif (choice == 2) then
				utils.qr_encode(rt.string, {
					size = 320,
					fill_color = 0xff409bff,
					shadow_color = 0xff308bef,
				}):save_to_album()
				sys.alert("已经保存到相册")
			end
			break
		else
			sys.toast(
				"扫描到条码："..rt.type.."\n"..
				"条码内容为："..rt.string
			)
		end
	end
	sys.msleep(10)
end
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`proc_queue_clear`](/Handbook/proc/proc_queue_clear.md)、[`proc_queue_pop`](Handbook/proc/proc_queue_pop.md)、[`json.decode`](/Handbook/json/json.decode.md)、[`:save_to_album`](/Handbook/image/_save_to_album.md)、
[`pasteboard.write`](/Handbook/pasteboard/pasteboard.write.md)、[`webview.show`](/Handbook/webview/webview.show.md)、[`screen.size`](/Handbook/screen/screen.size.md)

