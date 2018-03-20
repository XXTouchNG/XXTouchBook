### 写内容进剪贴板 \(**pasteboard\.write**\)


#### 声明
```lua
pasteboard.write(数据 [, 通用类型标识 ])
```

  
#### 参数及返回值
- 数据
    - 字符串型，需要写入到剪贴板的内容
- 通用类型标识
    - 文本型，可选参数，[Uniform Type Identifiers](https://developer.apple.com/library/ios/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html)，默认 "public\.utf8\-plain\-text"

  
#### 示例  
```lua
pasteboard.write("演示啊") -- 将“演示啊” (不含引号) 写入到剪贴板中
--
pasteboard.write(screen.image():png_data(), 'public.png') -- 将当前屏幕截图写入到剪贴板
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)

