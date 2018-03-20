### 从字符串加载一个表 \(**table\.load\_string**\)


#### 声明
```lua
关联表 = table.load_string(表文本)
```


#### 参数及返回值
> - 表文本
>   - 文本型，表的树形结构的文本，只能包含静态数据，不能包含任何动态代码
> - 关联表
>   - 表型 或 nil，加载成功返回表结构，失败返回 nil


#### 说明
> **这个函数在 1\.1\.2\-6 版以上方可使用**  
> 将一个树形结构文本描述转换成一个表对象  
> 一定意义上，[table.load_string](/Handbook/ext-table/table.load_string.md) 是 [table.deep_print](/Handbook/ext-table/table.deep_print.md) 的反函数 (这取决有没有循环引用或非表引用类型)  
> 它与 [load](http://cloudwu.github.io/lua53doc/manual.html#pdf-load) 的区别在于，它不会运行文本中的代码，只会使用静态数据  
> 例如以下示例包含奇怪代码，结果是 b 为 nil  
```lua
b = table.load_string[[ {
    a = os.execute('reboot'), -- 这里的代码将不会运行，并且会返回 nil
} ]]
```


#### 示例  
```lua
local t = table.load_string[[ {
    a = 1,
    b = 2,
    c = 3,
} ]]
sys.alert(t.b)
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

