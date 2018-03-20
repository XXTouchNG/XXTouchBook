### 移除文件中指定行 \(**file\.remove\_line**\)


#### 声明
```lua
操作成败, 被删除行的内容 = file.remove_line(文件路径, 行号)
```


#### 参数及返回值
- 文件路径
    - 文本型，文件绝对路径
- 行号
    - 整数型，指定行号，0 为最后一行 \+1，负数则为倒数行号
- 操作成败
    - 布尔型，操作成功返回 true，操作失败返回 false
- 被删除行的内容
    - 字符串型，当操作成功的时候，返回被移除的行


#### 说明
> 移除文件中指定行，如果被移除的行之后还有行，那么后面行会往前移  
> **这个函数在 1\.1\.1\-1 版以上方可使用**  
> **这个函数在 1\.2\-1 版以上将自动剔除 UTF8\-BOM** ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  


#### 常见问题  
> 如果读取到文本的第一行包含不可见字符，请检查是否处理了 UTF8\-BOM，可使用 [`string.strip_utf8_bom`](/Handbook/ext-string/string.strip_utf8_bom.md) 剔除  


#### 示例  
```lua
local success, line = file.remove_line("/var/mobile/1.txt", 3)
if success then
    sys.alert("操作成功，被删除的行的内容是："..line)
else
    sys.alert("操作失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

