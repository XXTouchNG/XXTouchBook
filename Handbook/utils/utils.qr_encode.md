### 将文本编码成二维码图片 \(**utils\.qr\_encode**\)


#### 声明
```lua
图像 = utils.qr_encode(文本内容[, {
    size = 尺寸,
    fill_color = 填充颜色,
    shadow_color = 阴影颜色,
}])
```


#### 参数及返回值
- 文本内容
    - 文本型，需要编码成二维码的文本内容
- size
    - 整数型，需要编码成二维码的边长，默认 320
- fill\_color
    - 整数型，填充二维码图像的颜色，默认 0xff000000 (黑色不透明) 
- shadow\_color
    - 整数型，二维码阴影，默认 0x00000000 (完全透明) 
- 图像
    - 图片对象，返回生成的二维码图片对象


#### 说明
> 将文本编码成一个指定尺寸背景色透明的二维码图片  


#### 示例  
- [`utils.open_code_scanner 示例`](/Handbook/utils/utils.open_code_scanner.md)  

- 生成一个尺寸为 320 蓝色的二维码存到相册  
```lua
local img = utils.qr_encode("XXTouch 真棒", {
	size = 320,
	fill_color = 0xff409bff,
	shadow_color = 0xff308bef,
})
img:save_to_album()
```
**注**：上述代码中使用了非本章函数 [`:save_to_album`](/Handbook/image/_save_to_album.md)

- 微信等 App 无法识别透明色、深色背景的二维码，可以使用 [`:replace_color`](/Handbook/image/_replace_color.md) 将背景色替换成白色以解决：
```lua
local img = utils.qr_encode("XXTouch 真棒", {
	size = 320,
	fill_color = 0xff409bff,
})
img:replace_color(0x00000000, 0xffffffff) -- 透明色替换成白色
img:save_to_album()
```
**注**：上述代码中使用了非本章函数 [`:replace_color`](/Handbook/image/_replace_color.md)、[`:save_to_album`](/Handbook/image/_save_to_album.md)

