### 将数据覆盖写入到文件 \(**file\.writes**\)


#### 声明
```lua
写入成败 = file.writes(文件路径, 待写入内容)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 待写入内容
>   - 字符串型，需要写入的数据
> - 写入成败
>   - 布尔型，操作成功返回 true，操作失败返回 false


#### 说明
> 将数据覆盖写入到文件，文件不存在会创建文件，目录不存在会返回 false  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  


#### 示例  
```lua
local success = file.writes("/var/mobile/1.txt", "苟")
if success then
    sys.alert("写入成功")
else
    sys.alert("写入失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

