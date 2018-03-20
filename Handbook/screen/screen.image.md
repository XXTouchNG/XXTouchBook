### 获取屏幕图像 \(**screen\.image**\)


#### 声明
```lua
图像 = screen.image([ 左, 上, 右, 下 ])
```


#### 参数及返回值
- 左, 上, 右, 下
    - 整数型，可选参数，代表图像区域，默认 全屏
- 图像
    - 图片对象，返回一个图片对象，用法参考 [图片对象模块 (image) ](#图片对象模块image)


#### 说明
> 获取屏幕上区域或全部图像  
> 该方法会产出一个新的图片对象，如需保证高效频繁使用请搭配 [image:destroy](/Handbook/image/_destroy.md) 方法使用  


#### 示例  
```lua
-- screen.image 的示例代码
--
screen.image():save_to_album() -- 全屏截图并保存到相册
--
screen.image():save_to_png_file("/User/1.png") -- 全屏截图并保存到文件 /User/1.png
--
screen.image(100, 100, 200, 200):save_to_album() -- 截取左上坐标为 100, 100 右下坐标为 200, 200 的区域图像保存到相册
--
pasteboard.write(screen.image(100, 100, 200, 200):png_data(), "public.png")
-- 截取左上坐标为 100, 100 右下坐标为 200, 200 的区域图像写入到剪贴板
```
**注**：上述代码中使用了非本章函数 [`:save_to_album`](/Handbook/image/_save_to_album.md)、[`:save_to_png_file`](/Handbook/image/_save_to_png_file.md)、[`:png_data`](/Handbook/image/_png_data.md)、[`pasteboard.write`](/Handbook/pasteboard/pasteboard.write.md)

