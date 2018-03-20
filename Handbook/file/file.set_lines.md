### 将一个顺序表转换逐行覆盖写入到文件中 \(**file\.set\_lines**\)


#### 声明
```lua
写入成败 = file.set_lines(文件路径, 行数组)
```


#### 参数及返回值
- 文件路径
    - 文本型，文件绝对路径
- 行数组
    - 顺序表型，需要转换写入到文件的表
- 写入成败
    - 布尔型，操作成功返回 true，操作失败返回 false


#### 说明
> 将一个顺序表转换逐行覆盖写入到文件中，文件不存在会创建文件，目录不存在会返回 false  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  
> **这个函数在 1\.2\-1 版以上将自动剔除 UTF8\-BOM** ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  


#### 示例  
```lua
local success = file.set_lines("/var/mobile/1.txt", {
    "苟利国家生死以",
    "岂因祸福避趋之",
})
if success then
    sys.alert("+1s")
else
    sys.alert("操作失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

