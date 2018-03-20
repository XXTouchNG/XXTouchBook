### 获取剪贴板中的数据 \(**pasteboard\.read**\)


#### 声明
```lua
数据 = pasteboard.read([ 通用类型标识 ])
```

  
#### 参数及返回值
> - 通用类型标识
>   - 文本型，可选参数，[Uniform Type Identifiers](https://developer.apple.com/library/ios/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html)，默认 自动判断格式
>   - **存在 通用类型标识 参数的情况下，会强制以该 通用类型标识 格式读取剪贴板中数据，若是剪贴板中数据无法以该 通用类型标识 读取，则返回空字符串**
> - 数据
>   - 字符串型，返回剪贴板中的数据，可能是文本，也可能是二进制数据，如果不能以该方式读取，则返回 `""` (空文本) 

  
#### 示例  
```lua
sys.alert("剪贴板中的内容："..pasteboard.read())
--
sys.alert("剪贴板中的内容："..pasteboard.read('public.text')) -- 富文本也强行以文本方式读取剪贴板
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

