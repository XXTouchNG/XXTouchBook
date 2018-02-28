### 输出图片对象到一个 JPEG 格式的文件 (**:save\_to\_jpeg\_file**)


#### 声明
```lua
图像:save_to_jpeg_file(文件路径 [, 图像质量 ])
```

#### 参数及返回值
> - 图像
>   - 图片对象，需要保存到文件的图片对象
> - 文件路径
>   - 文本型，需要保存到图片文件的绝对路径
> - 图像质量
>   - 实数型，可选参数，图片质量，取值范围 0\.0~1\.0，默认 1\.0


#### 说明
> 输出图片对象到一个 JPEG 格式的文件，扩展名可以不是 JPG  


#### 示例  
```lua
-- 截全屏图像保存到文件
screen.image():save_to_jpeg_file("/var/mobile/1.jpg")
```
```lua
-- 截全屏图像保存到文件并设置图片为低质量
screen.image():save_to_jpeg_file("/var/mobile/1.jpg", 0.4)
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)  

