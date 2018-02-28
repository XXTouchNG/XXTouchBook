### 将 JSON 字符串转换成 Lua 值 (**json\.decode**)


#### 声明
```
值, 错误信息 = json.decode(JSON文本)
```

#### 参数及返回值
> - JSON文本
>   - 文本型，需要转换成表的 json 文本
> - **值**
>   - 表型 或 文本型 或 数值型 或 布尔型 或 json\.null 或 nil，转换成功则返回一个与 json 字符串结构相对应的 lua 值，否则返回 nil
> - 错误信息
>   - 文本型 或 nil， 转换失败 **值** 为 nil 的情况下，这个返回值则是具体的错误信息


#### 说明
> 将 json 文本转换成 lua 的中对应的数据值  


#### 示例  
```lua
print(json.decode('true'))
print(json.decode('17'))
print(json.decode('"哈哈"'))
print(json.decode('null'))
print(json.decode(''))
table.deep_print(json.decode('{}'))
table.deep_print(json.decode('{"娘子":"啊哈","你好":"世界"}'))
table.deep_print(json.decode('[]'))
table.deep_print(json.decode('[1, 0, 0, "4695100"]'))
--
sys.alert(print.out())
```
**注**：上述代码中使用了非本章函数 [`table.deep_print`](/Handbook/ext-table/table.deep_print.md) 、[`print.out`](/Handbook/develop-helper/print.md)、[`sys.alert`](/Handbook/sys/sys.alert.md)
```lua
-- 使用 json.decode 转换 Unicode 编码为文字
sys.alert(json.decode([["\u82cf\u6cfd"]]))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

