### 获取前台应用的 Process Identifier (**app\.front\_pid**)


#### 声明
```lua
进程号 = app.front_pid()
```


#### 参数及返回值
> - 进程号
>   - 整数型，返回前台应用的 process identifier \(进程标识符\) ，前台没有应用返回 0


#### 说明
> 获取前台应用的 process identifier \(进程标识符\)   
> 前台没有应用返回 0 而不是桌面服务的进程号  
> 要获取桌面进程 pid 请用  
```lua
local desktop_pid = app.pid_for_bid('com.apple.springboard')
sys.alert("桌面服务的进程号是："..desktop_pid)
```


#### 示例  
```lua
local pid = app.front_pid()
sys.alert("前台应用的进程号是："..pid)
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

