### 获得当前脚本的启动参数 \(**utils\.launch\_args**\)


#### 声明
```lua
启动参数关联表 = utils.launch_args()
```


#### 参数及返回值
- 启动参数关联表
    - 表型，返回一个用于描述当次启动的参数表，结构可以自行用 [table.deep_print](/Handbook/ext-table/table.deep_print.md) 打印查看


#### 说明
> **在 1\.1\.0\-1 版或以上版本 App 内启动有额外的参数**  
> 获得当前脚本的启动参数，推荐配合 [Activator](http://cydia.saurik.com/package/libactivator/) 激活脚本  


#### 示例  
```lua
sys.alert(table.deep_print(utils.launch_args()))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`table.deep_print`](/Handbook/ext-table/table.deep_print.md)  
```lua
-- 获取当前脚本文件路径 (注：不是任何情况下脚本都有一个文件路径) 
sys.alert("当前的脚本路径是："..tostring(utils.launch_args().path))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[tostring](http://cloudwu.github.io/lua53doc/manual.html#pdf-tostring)  

