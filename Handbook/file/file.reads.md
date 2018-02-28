### 读取一个文件中的所有数据 (**file\.reads**)


#### 声明
```lua
内容 = file.reads(文件路径)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 内容
>   - 字符串型 或 nil，文件不存在返回 nil，否则返回整个文件的数据


#### 说明
> 读取一个文件中的所有数据  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  


#### 示例  
```lua
local data = file.reads("/var/mobile/1.zip")
if data then
    sys.alert("`/var/mobile/1.zip` 的尺寸为："..#data.."字节")
else
    sys.alert("`/var/mobile/1.zip` 不是文件")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

