### 获取图片对象的 PNG 格式数据 \(**:png\_data**\)


#### 声明
```lua
图像PNG数据 = 图像:png_data()
```


#### 参数及返回值
> - 图像
>   - 图片对象，当前操作的图片对象
> - 图像PNG数据
>   - 字符串型，返回 PNG 数据，对这份数据的修改不会影响图片对象


#### 说明
> 获取图片对象的 PNG 格式数据  
> 性能上，该函数操作过程产生两次数据拷贝  


#### 示例  
```lua
file.writes('/var/mobile/1.png', screen.image():png_data())
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)、[`file.writes`](/Handbook/file/file.writes.md)

