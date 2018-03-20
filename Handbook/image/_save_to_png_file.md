### 输出图片对象到一个 PNG 格式的文件 \(**:save\_to\_png\_file**\)


#### 声明
```lua
图像:save_to_png_file(文件路径)
```

#### 参数及返回值
- 图像
    - 图片对象，需要保存到文件的图片对象
- 文件路径
    - 文本型，需要保存到图片文件的绝对路径


#### 说明
> 输出图片对象到一个 PNG 格式的文件，扩展名可以不是 PNG  


#### 示例  
```lua
-- 截全屏图像保存到文件
screen.image():save_to_png_file("/var/mobile/1.png")
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)  

