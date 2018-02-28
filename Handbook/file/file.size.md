### 获得一个文件的尺寸 (**file\.size**)


#### 声明
```lua
尺寸 = file.size(文件路径)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，文件绝对路径
> - 尺寸
>   - 整数型 或 nil，如果文件不存在或文件名是一个目录则返回 nil，否则返回文件尺寸 (单位: 字节) 


#### 说明
> 获得一个文件的尺寸  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  


#### 示例  
```lua
local fsize = file.size("/var/mobile/1.zip")
if fsize then
    sys.alert("`/var/mobile/1.zip` 的尺寸为："..fsize.."字节")
else
    sys.alert("`/var/mobile/1.zip` 不是文件")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

