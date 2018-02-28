## 保护脚本，正确接受 require \(secure\-require\)


- 为何 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 可能带来安全风险？
  - XXTouch 加密的脚本模块可以被其它脚本或者模块以 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 方式引用
  - 当您的加密脚本被 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 时，全局环境是不可信的，您的脚本调用的函数可能已经被替换


- 如何正确使用 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 呢？
  - XXTouch 保证部分模块的函数会在 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 之前恢复初始状态，这包括
  - os、io、string、device、http、file、table 模块所有函数
  - 您可以深拷贝全局环境到模块内局部环境以确保安全调用上述模块中所有函数
  - 例如  
```lua
-- 在脚本的最前面加上这个代码
local _ENV = table.deep_copy(_ENV)
-- 下面就是脚本的主体内容
--
-- 最后您可能还需要返回一些导出函数或者常量
```
  - 并且保证当一个模块被 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 方式引用的时候，全局变量 been\_require 会无条件置为 true
  - 您可以通过这个全局变量的状态来判断自己是不是正在被 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require)
  - 例如  
```lua
-- 在脚本的最前面加上这个代码
if been_require then
    return -- 如果被 require 就直接退出
end
-- 下面就是脚本的主体内容
```

