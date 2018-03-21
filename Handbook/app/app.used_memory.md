### 获取应用程序当前内存消耗 \(**app\.used\_memory**\)


#### 声明
```lua
内存占用 = app.used_memory(应用程序包名 或 进程号)
```


#### 参数及返回值
- 应用程序包名
    - 文本型，需要检测的应用的 bundle identifier  
    应用包标识符，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看  
- 进程号
    - 整数型，需要检测的应用的 process identifier \(进程标识符\) 
- 内存占用
    - 实数型 或 nil，如果应用正在运行则返回其所占用的内存 \(单位 MB\) ，否则返回 nil


#### 示例  
```lua
local qqmem = app.used_memory("com.tencent.mqq")
sys.alert("当前QQ进程所占用的内存是："..qqmem.."MB")
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

