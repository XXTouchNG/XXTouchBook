### webview 使用示例 (samples)

#### 一个演示
```lua
local html = [=[
<!DOCTYPE html>
<html>
	<head>
	<script src="/js/jquery.min.js"></script>
	<script src="/js/jquery.json.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
        $("#toast_content").val("toast内容");
        $("#close_page").click(function(){
			$.post(
				"/proc_queue_push",
				'{"key": "来自webview的消息","value": "关闭页面"}',
				function(){}
			);
		});

		$("#show_toast").click(function(){
			$.post(
				"/proc_put",
				$.toJSON({
					key:"toast内容",
					value:$("#toast_content").val()
				}),
				function(){}
			);
			$.post(
				"/proc_queue_push",
				'{"key": "来自webview的消息","value": "显示toast"}',
				function(){}
			);
		});

		$("#slide_down").click(function(){
			$.post(
				"/proc_queue_push",
				'{"key": "来自webview的消息","value": "往下滑动"}',
				function(){}
			);
			$(this).hide();
		});

		$("#full_vertical").click(function(){
			$.post(
				"/proc_queue_push",
				'{"key": "来自webview的消息","value": "竖屏全屏"}',
				function(){}
			);
		});

		$("#full_landscape").click(function(){
			$.post(
				"/proc_queue_push",
				'{"key": "来自webview的消息","value": "横屏全屏"}',
				function(){}
			);
		});
	});
	</script>
	</head>
	<body>
		<p>动脚webview演示</p>
		<p><button id="close_page" type="button">点我关闭页面</button></p>
		<p><button id="show_toast" type="button">显示一个toast</button><input type="text" id="toast_content" /></p>
		<p><button id="full_vertical" type="button">竖屏全屏</button><button id="full_landscape" type="button">横屏全屏</button></p>
		<p><button id="slide_down" type="button">视图往下滑动</button></p>
		<select>
			<option value="o1">第1个选项</option>
			<option value="o2">第2个选项</option>
			<option value="o3">第3个选项</option>
			<option value="o4">第4个选项</option>
		</select>
	</body>
</html>
]=]
--
local w, h = screen.size()
--
local factor = 1 -- 默认高度为 2x 设备所设
if w == 1242 or w == 1080 then
	factor = 1.5 -- iPhone 6(S)+ 的分辨率是 3x 的
elseif w == 320 or w == 768 then
	factor = 0.5 -- 3Gs 以前的 iPhone 的分辨率是 1x 的
end
--
webview.show{ -- 重置 webview 位置到左上角
	x = 0,
	y = 0,
	width = w - 40 * factor,
	height = (500) * factor,
	alpha = 0,
	animation_duration = 0,
}
--
webview.show{ -- 从左上角用0.3秒的时间滑动出来
	html = html,
	x = 20 * factor,
	y = 50 * factor,
	width = (w - 40 * factor),
	height = (500) * factor,
	corner_radius = 10,
	alpha = 0.7,
	animation_duration = 0.3,
}
--
proc_queue_clear("来自webview的消息", "") -- 清空需要监听的字典的值
local eid = thread.register_event( -- 注册监听字典状态有值事件
	"来自webview的消息",
	function(val)
		if val == "关闭页面" then
			webview.show{
				x = 20 * factor,
				y = 500 * factor * 2,
				width = (w - 40 * factor),
				height = (500 - 70) * factor,
				corner_radius = 10,
				alpha = 0,
				animation_duration = 0.8,
			}
			sys.msleep(800)
			webview.destroy()
			sys.toast("页面线程结束")
			return true -- 返回 true 停止当前监听
		elseif val == "往下滑动" then
			webview.show{
				x = 20 * factor,
				y = (50 + 300) * factor, -- 纵坐标 + 300
				width = (w - 40  * factor),
				height = (500 - 70) * factor, -- 往下滑动按钮被隐藏了，高度调整
				corner_radius = 10,
				alpha = 0.7,
				animation_duration = 0.5, -- 耗时 0.5 秒
			}
		elseif val == "竖屏全屏" then
			webview.show{} -- 此处将会把 webview 置为全屏
		elseif val == "横屏全屏" then
			webview.show{rotate=90} -- 此处将会把 webview 置为横屏全屏
		elseif val == "显示toast" then
			sys.toast(proc_get("toast内容"))
		end
	end
)
--
sys.msleep(3000)
sys.toast("主线程结束")
```
**注**：上述代码中使用了非本章函数 [`screen.size`](/Handbook/screen/screen.size.md)、[`proc_queue_clear`](#/Handbook/proc/proc_queue_clear.md)、[`thread.register_event`](/Handbook/thread/thread.register_event.md)、[`proc_get`](/Handbook/proc/proc_get.md)、[`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)

