### 设置文本文件指定行的内容 (**file\.set\_line**)


#### 声明
```lua
写入成败 = file.set_line(文件路径, 行号, 待写入内容)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 行号
>   - 整数型，指定行号，0 为最后一行 \+1，负数则为倒数行号
> - 待写入内容
>   - 字符串型，需要设置为指定行的数据
> - 写入成败
>   - 布尔型，操作成功返回 true，操作失败返回 false


#### 说明
> 设置文本文件指定行的内容，行数不够用空行补足，文件不存在会创建文件，目录不存在会返回 false  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  
> **这个函数在 1\.2\-1 版以上将自动剔除 UTF8\-BOM** ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  


#### 示例  
```lua
local success = file.set_line("/var/mobile/1.txt", 3, "哈哈哈")
if success then
    sys.alert("操作成功")
else
    sys.alert("操作失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

