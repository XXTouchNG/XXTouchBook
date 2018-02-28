### 屏幕找图 (**screen\.find\_image**)


#### 声明
```lua
横坐标, 纵坐标 = screen.find_image(图片 [, 相似度, 左, 上, 右, 下 ])
```

#### 参数及返回值
> - 图片
>   - 字符串型
>     - 需要找的图片，可以是 png 或是 jpeg 格式的图片数据
>   - 图片对象
>     - 或是一个图片对象 (可参考 [图片对象模块 (image) ](#图片对象模块image)) 
>   - 文本型 \*1\.1\.2\-1 新增
>     - 需要找的图片文件路径，如果不是合法路径则会以数据方式解析
> - 相似度
>   - 整数型，可选参数，需要找的图片的相似度，范围 1~100，默认为 95
> - 左, 上, 右, 下
>   - 整数型，可选参数，搜索区域，默认 全屏
> - 横坐标, 纵坐标
>   - 整数型，返回找到的图片的左上角坐标，搜索失败返回 \-1, \-1


#### 说明
> 在屏幕上寻找一个图像的位置，该函数会引用 image\.cv 模块  
> **注意：** 如果需要做多分辨率兼容，那么建议是于分辨率最小的设备上截图；大分辨率上的截图会无法在小分辨率设备上找到  


#### 示例  
[XXT 取色器 1.0.12 Windows 版.zip](res/XXT 取色器 1.0.12 Windows 版.zip)  
```lua
-- 示例 1 (使用 XXT 取色器 Shift + 鼠标左键框选图像上的区域 可直接生成这样的代码) ：
x, y = screen.find_image( -- 原图位置 左上: 354, 274 | 右下: 358, 284
"\x89\x50\x4e\x47\x0d\x0a\x1a\x0a\x00\x00\x00\x0d\x49\x48\x44\x52\x00\x00\x00\x04\x00\x00\x00\x0a\x08\x02\x00\x00\x00\x1c\x99\x68\x59\x00\x00\x00\x61\x49\x44\x41\x54\x78\xda\x63\x78\xfd\xf4\xda\xff\xff\xff\xff\xfd\xfb\xf7\xed\xcb\x5b\x86\xf7\xaf\x1f\xfc\x87\x01\x86\x2f\x1f\x5f\x02\xa9\xef\xa7\xce\x7c\xdd\xb1\x9b\xe1\xe7\xf7\xcf\x40\xce\xeb\xb2\xea\x7b\xb2\x6a\x0c\x7f\xff\xfe\x01\x72\x9e\x78\x06\x82\x38\x20\xdd\xbf\x7e\xdd\x57\xd4\x82\x72\x7e\xdd\xba\x0d\x64\x41\x39\x08\xd3\x80\x38\x6b\xe3\x7f\x86\x2a\x30\x02\x72\x8c\xa6\x40\x39\x00\xd5\x7b\x5f\x2e\xfd\xba\xd5\x32\x00\x00\x00\x00\x49\x45\x4e\x44\xae\x42\x60\x82"
, 95, 0, 0, 639, 1135)
--
-- 示例 2：
img = image.load_file("/User/1.png")
x, y = screen.find_image(img)
x, y = screen.find_image(img, 95)
--
-- 示例 4 (1.1.2-1 新增) ：
x, y = screen.find_image("/User/1.png", 95, 0, 0, 639, 1135)
```
**说明**：在 Lua 源码中，字符串中 `\x` 开头，后面跟两位 16 进制数表示以该数字编码的单个字节。例如：`\x58` 表示 `X` 这个字符，可打印字符部分参考[《ASCII 编码》](https://baike.baidu.com/item/ASCII/309296)  


#### 复杂示例  
```lua
-- 从网上下载个小图片 (一部分 XXTouch 图标) 然后从屏幕上找到它并点击
local c, h, r = http.get("https://www.xxtouch.com/img/find_image_test.png", 10)
if (c == 200) then
    local img = image.load_data(r)
    if img then
        x, y = screen.find_image(img, 95)
        if x~=-1 then
            touch.tap(x, y)
        else
            sys.alert("没有在屏幕上找到 XXTouch 图标")
        end
    else
        sys.alert("可能下载到了一个假图片")
    end
else
	sys.alert("下载失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`image.load_data`](/Handbook/image/image.load_data.md)、[`touch.tap`](/Handbook/touch/touch.tap.md)、[`http.get`](/Handbook/http/http.get.md)  

