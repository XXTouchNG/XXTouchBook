### 判断一个文件或目录是否存在 \(**file\.exists**\)


#### 声明
```lua
存在信息 = file.exists(文件路径)
```


#### 参数及返回值
- 文件路径
    - 文本型，文件或目录绝对路径
- 存在信息
    - false 或 "file" 或 "directory"
         - false，路径不存在
         - "file"， 路径是一个文件
         - "directory"， 路径是一个目录


#### 说明
> 用于判断一个路径是文件还是目录还是不存在  
> **这个函数在 1\.1\.0\-1 版以上方可使用**  


#### 示例  
```lua
if file.exists("/var/mobile/1.zip") then
    sys.alert("`/var/mobile/1.zip` 存在")
else
    sys.alert("`/var/mobile/1.zip` 不存在")
end
--
if file.exists("/var/mobile/1.zip")=="file" then
    sys.alert("`/var/mobile/1.zip` 存在并且是个文件")
else
    sys.alert("`/var/mobile/1.zip` 不是文件")
end
--
if file.exists("/var/mobile/123/")=="directory" then
    sys.alert("`/var/mobile/123/` 存在并且是个目录")
else
    sys.alert("`/var/mobile/123/` 不是目录")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

