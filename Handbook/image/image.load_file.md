### 从文件创建图片对象 (**image\.load\_file**)


#### 声明
```lua
图像 = image.load_file(文件路径)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，图片文件绝对路径
> - 图像
>   - 图片对象 或 nil，返回新建的图片对象，如果文件不存在则返回 nil


#### 说明
> 从文件创建图片对象  
> 该方法会产出一个新的图片对象，如需保证高效频繁使用请搭配 [image:destroy](/Handbook/image/_destroy.md) 方法使用  


#### 示例  
[`将文件转存到相册`](/Handbook/image/_save_to_album.md)  

