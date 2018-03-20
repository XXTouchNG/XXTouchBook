### 获取一个文本文件的所有行 \(**file\.get\_lines**\)


#### 声明
```lua
行数组 = file.get_lines(文件路径)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 行数组
>   - 顺序表型 或 nil，返回一个顺序表，文件不存在返回 nil


#### 说明
> 获取一个文本文件的所有行，空文件返回 0 行  
> **这个函数在 1\.1\.1\-1 版以上方可使用**  
> **这个函数在 1\.2\-1 版以上将自动剔除 UTF8\-BOM** ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  


#### 常见问题  
> 如果读取到文本的第一行包含不可见字符，请检查是否处理了 UTF8\-BOM，可使用 [`string.strip_utf8_bom`](/Handbook/ext-string/string.strip_utf8_bom.md) 剔除  


#### 示例  
```lua
local lines = file.get_lines("/var/mobile/1.txt")
if lines then
    if #lines > 0 then
        lines[1] = string.strip_utf8_bom(lines[1]) -- 处理掉可能存在的 UTF8-BOM
        sys.alert("文件第一行的内容是 "..lines[1])
    else
        sys.alert("文件是空的")
    end
else
    sys.alert("操作失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`string.strip_utf8_bom`](/Handbook/ext-string/string.strip_utf8_bom.md)  

