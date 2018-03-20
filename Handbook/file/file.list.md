### 获取目录所有文件名列表 \(**file\.list**\)


#### 声明
```lua
文件列表 = file.list(文件路径)
```


#### 参数及返回值
> - 文件路径
>   - 文本型，目录绝对路径
> - 文件列表
>   - 顺序表型 或 nil，如果目录不存在或路径是一个文件则返回 nil，否则返回目录文件列表


#### 说明
> 获取目录所有文件名列表  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  


#### 示例  
```lua
local list = file.list("/var/mobile/")
if list then
    print("目录 `/var/mobile/` 中有"..#list.."个文件或目录")
    for _, name in ipairs(list) do
        print(name)
    end
    sys.alert(print.out())
else
    sys.alert("`/var/mobile/` 不是目录")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

