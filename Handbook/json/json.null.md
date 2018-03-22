### JSON 中的 NULL 常量 \(**json\.null**\)


#### 声明
```lua
json.null
```


#### 说明
> 这不是一个函数，是一个常量。以文本形式打印为 “`userdata: 0x0`”  
> 它用于表示 json 中对应的 null 值  
> **为什么它有必要存在** 因为 lua table 中的 nil 会被判定为不存在，转换成 json 之后，key 会消失，所以需要一个特定的值来表示这个 null  


#### 示例  
```lua
local tb = json.decode('{"nullvalue":null}')
if tb['nullvalue'] == json.null then
    sys.alert(json.null)
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

