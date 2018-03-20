### cloud\_ocr 示例代码


```lua
local cloud_ocr = require('cloud_ocr')
local plat = cloud_ocr.ocr('ruokuai','平台账号','平台密码') -- 初始化一个平台对象
local text, id_or_err = plat.ocr_screen(3, 448, 628, 724, 1040) -- 使用这个平台打屏幕上的码获得结果
if text then
	sys.alert('识别成功\n'..
		'结果标签:'..id_or_err..'\n'..
		'识别结果:'..text)
else
	sys.alert('识别失败\n'..
		'错误信息:'..id_or_err)
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

