### 通过应用程序 bid 获取应用的图标数据 \(**app\.png\_data\_for\_bid**\)


#### 声明
```lua
PNG图片数据 = app.png_data_for_bid(应用程序包名)
```


#### 参数及返回值
> - 应用程序包名
>   - 文本型，应用的 bundle identifier \(应用包名，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\) 
> - PNG图片数据
>   - 字符串型 或 nil，应用的图标的 png 数据 (二进制数据) ，如果应用不存在则返回 nil


#### 示例  
```lua
-- 将微信的图标保存到相册
image.load_data(app.png_data_for_bid("com.tencent.xin")):save_to_album()
```
**注**：上述代码中使用了非本章函数 [`image.load_data`](/Handbook/image/image.load_data.md)、[`:save_to_album`](/Handbook/image/_save_to_album.md)

