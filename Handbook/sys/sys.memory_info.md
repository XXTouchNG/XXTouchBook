### 获取设备当前内存状态信息 \(**sys\.memory\_info**\)


#### 声明
```lua
内存状态 = sys.memory_info()
```

  
#### 参数及返回值
- 内存状态
    - 表型，返回的内存状态信息，里面的 key \- value 对应自己理解吧

  
#### 示例  
```lua
sys.alert(table.deep_print(sys.memory_info()))
```
**注**：上述代码中使用了非本章函数 [`table.deep_print`](/Handbook/ext-table/table.deep_print.md)  

