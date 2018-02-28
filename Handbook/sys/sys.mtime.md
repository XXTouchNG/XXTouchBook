### 获取当前毫秒级时间戳 (**sys\.mtime**)


#### 声明
```lua
时间戳 = sys.mtime()
```


#### 参数及返回值
> - 时间戳
>   - 整数型， 返回毫秒级 UNIX 时间戳


#### 示例  
```lua
local ms = sys.mtime()
screen.keep()
sys.alert('一次 screen.keep 耗时：'..sys.mtime()-ms..'毫秒')
```
**注**：上述代码中使用了非本章函数 [`screen.keep`](/Handbook/screen/screen.keep.md)  

