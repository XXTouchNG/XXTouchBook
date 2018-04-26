### 对字符串进行 base64 编码 \(**string\.base64\_encode**\)


#### 声明
```lua
b64文本 = string.base64_encode(数据内容)
```


#### 参数及返回值
- 数据内容
    - 字符串型，原始字符串
- b64文本
    - 文本型，返回字符串的 base64 编码文本


#### 说明
> 对字符串 (或二进制数据块) 进行 base64 编码  


#### 示例  
```lua
-- 取屏幕区域 png 格式数据进行 base64 编码
b64s = screen.image(0, 0, 100, 100):png_data():base64_encode()

-- 读取文件数据并进行 base64 编码
b64s = file.reads('/var/mobile/1.png'):base64_encode()
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)、[`:png_data`](/Handbook/image/_png_data.md)、[`file.reads`](/Handbook/file/file.reads.md)


#### 更多示例
[`本章最后`](/Handbook/ext-string/samples.md)  

