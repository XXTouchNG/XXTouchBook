### 获取当前脚本包中的资源路径 (**xpp\.resource_path**)


#### 声明  
```lua
资源路径 = xpp.resource_path(资源文件名)
```


#### 参数及返回值  
- 资源路径
    - 文本型 或 nil，返回当前脚本包的某个资源文件的路径，如果资源不存在，则返回 nil


#### 说明  
> **这个函数在 1\.2\-3 版以上方可使用**  
用于从运行着的脚本中获取当前脚本包中的某个资源文件的路径，支持本地化  
脚本包标准参考 [XPP](/XPP/README.md)  


#### 示例  
```lua
local path = xpp.resource_path('appicon.png')
```
