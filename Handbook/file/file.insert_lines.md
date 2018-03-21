### 将一个顺序表转换逐行插入到文件指定行前 \(**file\.insert\_lines**\)


#### 声明
```lua
写入成败 = file.insert_lines(文件路径, 行号, 行数组)
```


#### 参数及返回值
- 文件路径
    - 文本型，文件绝对路径
- 行号
    - 整数型，指定行号，0 为最后一行 \+1，负数则为倒数行号
- 行数组
    - 顺序表型，需要转换插入到文件的表
- 写入成败
    - 布尔型，操作成功返回 true，操作失败返回 false


#### 说明
> 将一个顺序表转换逐行插入到文件指定行前，文件不存在会创建文件，目录不存在会返回 false  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  
> **这个函数在 1\.2\-1 版以上将自动剔除 UTF8\-BOM** ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  


#### 示例  
```lua
local success = file.insert_lines("/var/mobile/1.txt", 0, { -- 将下面两行字追加到文件末尾
    "I will do whatever it takes to serve my country even at the cost of my own life,",
    "regardless of fortune or misfortune to myself.",
})
if success then
    sys.alert("+1s")
else
    sys.alert("操作失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

