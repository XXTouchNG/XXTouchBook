### 保存图片对象到相册 (**:save\_to\_album**)


#### 声明
```lua
图像:save_to_album()
```


#### 参数及返回值
> - 图像
>   - 图片对象，需要保存到相册的图片对象


#### 说明
> 导出图片对象的图片到系统相册  


#### 示例 1  
```lua
-- 从网上下载个小图片直接转存到相册
local c, h, r = http.get("https://www.xxtouch.com/img/Logo.png", 10)
if (c == 200) then
    local img = image.load_data(r)
	img:save_to_album()
	sys.alert("图片已存到相册")
else
	sys.alert("下载失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`http.get`](/Handbook/http/http.get.md)  


#### 示例 2  
```lua
-- 截全屏图像保存到相册
screen.image():save_to_album()
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)  


#### 示例 3  
```lua
-- 将文件转存到相册 (这只是例子，文件不存在会报错，请在保存之前先做判断) 
image.load_file("/var/mobile/1.png"):save_to_album()
```


#### 示例 4  
```lua
-- 将文件转存到相册
img = image.load_file("/var/mobile/1.png")
if image.is(img) then
    img:save_to_album()
end
```

