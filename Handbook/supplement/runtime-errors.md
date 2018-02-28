### 开发常见运行期错误参考 (runtime-errors)


|错误描述片段|原因|处理方式|
|------|----|----|
|attempt to perform arithmetic on a|尝试对非数值进行了数学运算 (\+、\-、\*、/) |数学运算之前，检查运算输入是否都为数字|
|attempt to compare|尝试对非法值进行了比较运算 (\>、<、\>=、<=) |比较运算之前，检查运算输入是否双方可以进行比较运算|
|attempt to concatenate a|尝试对非字符串值进行了连接 (\.\.) |在进行字符串连接之前，先确定连接双方都为字符串|
|attempt to call a|尝试调用了一个不是函数的变量|调用一个函数之前，先确定其是否为一个函数|
|attempt to index a|尝试对一个非表变量进行索引 (下标运算) |在从数组变量或关联数组变量中取值前，先确定其是否为一个表|
|attempt to yield across a C\-call boundary|尝试在不能让出的调用块中让出|[require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 一个模块的时候，请确认被 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 的模块返回之前没有调用会让出的函数 (手册上函数前带叹号) 。还有就是不要尝试在带 C 回调的函数中使用会让出的函数 (手册上函数前带叹号) 。|
|invalid order function for sorting|非法的排序函数，通常发生在排序函数的规则逻辑不够明确的情况下|调用排序函数时，明确排序规则，不要出现 a 大于 b 成立同时小于 b 也成立的规则|
|bad argument \#1 to 'xxx' \(number expected, got nil\)|调用 xxx 函数时，第 \#1 个参数的类型不正确，需要 number 却传入了 nil|参数错误，传入合适的参数就不会出错了|
|bad argument \#2 to 'xxx' \(number has no integer representation\)|调用 xxx 函数时，第 \#2 个参数无法转换成整数|参数错误，传入合适的参数就不会出错了|
|bad argument \#3 to 'xxx'|调用 xxx 函数时，第 \#3 个参数非法|参数错误，传入合适的参数就不会出错了|



- 使用 [require](http://cloudwu.github.io/lua53doc/manual.html#pdf-require) 的时候抛出 attempt to yield across a C\-call boundary 错误的权宜解决方案
    + 1、在被 require 的模块代码前加上一行 `return function()`
    + 2、在被 require 的模块代码最后加上一行 `end`
    + 3、require 的时候，后面多加一对括号，例如 `require('A')` 改成 `require('A')()`
    + 看完上面仍然不会操作的下载参考例子
    > [像dofile一样使用require.zip](res/像dofile一样使用require.zip)
  
