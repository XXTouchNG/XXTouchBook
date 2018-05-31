### 将 Lua 值转成 JSON 字符串 \(**json\.encode**\)


#### 声明
```lua
JSON文本, 错误信息 = json.encode(值)
```


#### 参数及返回值
- 值
    - 表型 或 文本型 或 数值型 或 布尔型 或 json\.null，需要转换成 json 文本的 lua 值
- **JSON文本**
    - 文本型 或 nil，转换成功则返回一个 json 字符串，否则返回 nil
- 错误信息
    - 文本型 或 nil， 转换失败 **JSON文本** 的值为 nil 的情况下，这个返回值则是具体的错误信息


#### 说明
> 将 lua 中的数据值转成 json 形式可以方便与其它语言交互传输  
> **注意** 不是任何 lua 值都可以转成 json。例如：用户数据或函数及包含用户数据或函数的表  
这个函数可以在 XUI 中使用  


#### 示例  
```lua
local tb = {
    ["膜"] = "图样图森破桑叹斯乃衣服",
    ["蛤"] = "比你们高到不知道哪里去了",
    moha = {
        1,0,0,4,6,9,5,1,0,0,
    },
    nullvalue = json.null,
}
local jsonstr = json.encode(tb)
sys.alert(jsonstr)
--
local tmp = json.decode(jsonstr)
sys.alert(tmp.moha[5])
sys.alert(tostring(tmp.nullvalue))
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

