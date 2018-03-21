### 深打印一个表 \(**table\.deep\_print**\)


#### 声明
```lua
表文本 = table.deep_print(关联表)
```


#### 参数及返回值
- 关联表
    - 表型，需要打印成字符串的表
- 表文本
    - 文本型，返回表的树形结构的文本，这个文本不保证格式兼容


#### 说明
> 将一个表的树形结构打印出来  
> 打印出来的结构**不保证格式兼容**，不同版本打印出来可能不一样  
> 非表型引用类型 (用户数据、函数) 不可通过 [table.load_string](/Handbook/ext-table/table.load_string.md) 反序列，只保证人类可读性  
> 这个函数会将内容输出到 [print 缓冲区](/Handbook/develop-helper/print.md)  


#### 示例  
```lua
local s = table.deep_print(_G)
sys.alert(s)
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

