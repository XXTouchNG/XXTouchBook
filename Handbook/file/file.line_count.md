### 统计一个文本文件的总行数 \(**file\.line\_count**\)


#### 声明
```lua
行数 = file.line_count(文件路径)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 行数
>   - 整数型 或 nil，返回文件总行数，空文件将返回 0，文件不存在返回 nil


#### 说明
> 统计一个文本文件的总行数，空文件将返回 0  
> **这个函数在 1\.1\.1\-1 版以上方可使用**  


#### 示例  
```lua
local linecount = file.line_count("/var/mobile/1.txt")
if linecount then
    sys.alert("`/var/mobile/1.txt` 一共有 "..linecount.." 行")
else
    sys.alert("`/var/mobile/1.txt` 不是文件")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

