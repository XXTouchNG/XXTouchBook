### 获取一个文本文件指定行的数据 (**file\.get\_line**)


#### 声明
```lua
行内容 = file.get_line(文件路径, 行号)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 行号
>   - 整数型，指定行号，0 为最后一行 \+1，负数则为倒数行号
> - 行内容
>   - 字符串型 或 nil，行数不够返回空字符串，文件不存在返回 nil


#### 说明
> 获取一个文本文件指定行的数据  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  
> **这个函数在 1\.2\-1 版以上将自动剔除 UTF8\-BOM** ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  


#### 常见问题  
> 如果读取到文本的第一行包含不可见字符，请检查是否处理了 UTF8\-BOM，可使用 [`string.strip_utf8_bom`](/Handbook/ext-string/string.strip_utf8_bom.md) 剔除  


#### 示例  
```lua
local data = file.get_line("/var/mobile/1.txt", 1)
if data then
    data = string.strip_utf8_bom(data) -- 处理掉可能存在的 UTF8-BOM
    sys.alert("`/var/mobile/1.txt` 第一行的内容是 "..data)
else
    sys.alert("`/var/mobile/1.txt` 不是文件")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`string.strip_utf8_bom`](/Handbook/ext-string/string.strip_utf8_bom.md)

