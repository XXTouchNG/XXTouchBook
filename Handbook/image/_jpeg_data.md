### 获取图片对象的 JPEG 格式数据 \(**:jpeg\_data**\)


#### 声明
```lua
图像JPG数据 = img:jpeg_data([ 图像质量 ])
```


#### 参数及返回值
- 图像
    - 图片对象，当前操作的图片对象
- 图像质量
    - 实数型，可选参数，图片质量，取值范围 0\.0~1\.0，默认 1\.0
- 图像JPG数据
    - 字符串型，返回 JPEG 数据，对这份数据的修改不会影响图片对象


#### 说明
> 获取图片对象的 JPEG 格式数据  
> 性能上，该函数操作过程产生两次数据拷贝  


#### 示例  
```lua
-- 截全屏图像保存到文件并设置图片为 80% 质量 (关键字：有损压缩 图像压缩 图片压缩 图片质量)
file.writes('/var/mobile/1.jpg', screen.image():jpeg_data(0.8))
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)、[`file.writes`](/Handbook/file/file.writes.md)

