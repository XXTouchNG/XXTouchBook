### 获取当前设备的进程列表 \(**app\.all\_procs**\)


#### 声明
```lua
进程信息数组 = app.all_procs()
```


#### 参数及返回值
> - 进程信息数组
>   - 顺序表型，返回进程列表，结构是这样 \{\{pid = pid1, name = name1\}, \{pid = pid2, name = name2\}, ...\}


#### 示例  
```lua
proc_list = app.all_procs()
```
