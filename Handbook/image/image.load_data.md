### 从数据创建图片对象 (**image\.load\_data**)


#### 声明
```lua
图像 = image.load_data(图像数据)
```


#### 参数及返回值
> - 图像数据
>   - 字符串型，png 或 jpeg 格式的图片数据
> - 图像
>   - 图片对象 或 nil，返回新建的图片对象，如果数据不是图像格式则返回 nil


#### 说明
> 从数据创建图片对象  
> 该方法会产出一个新的图片对象，如需保证高效频繁使用请搭配 [image:destroy](/Handbook/image/_destroy.md) 方法使用  


#### 示例  
[`从网上下载个小图片直接转存到相册`](/Handbook/image/_save_to_album.md)  

