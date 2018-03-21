### 从图片对象创建拷贝图片对象 \(**:copy**\)


#### 声明
```lua
图像2 = 图像1:copy()
```


#### 参数及返回值
- 图像1
    - 图片对象，原始图片对象
- 图像2
    - 图片对象，返回新建的图片对象


#### 说明
> 从图片对象创建拷贝图片对象  
> 该方法会产出一个新的图片对象，如需保证高效频繁使用请搭配 [image:destroy](/Handbook/image/_destroy.md) 方法使用  


#### 示例  
```lua
scrn = screen.image()
img2 = scrn:copy()
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)  

