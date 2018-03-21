### 通过应用程序 bid 获取其 pid \(**app\.pid\_for\_bid**\)


#### 声明
```lua
进程号 = app.pid_for_bid(应用程序包名)
```


#### 参数及返回值
- 应用程序包名
    - 文本型，需要检测的应用的 bundle identifier  
    应用包标识符，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看  
- 进程号
    - 整数型，如果应用程序正在运行，则返回其 pid，否则返回 0


#### 示例  
```lua
local qqpid = app.pid_for_bid("com.tencent.mqq")
if qqpid~=0 then
    sys.alert("当前QQ正在运行，进程号是："..qqpid)
else
    sys.alert("当前QQ没有在运行")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

