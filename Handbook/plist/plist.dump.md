### 取 Lua 表的属性表数据 \(**plist\.dump**\)


#### 声明
```lua
属性表数据 = plist.dump(关联表[, 属性表数据格式])
```


#### 参数及返回值
- 关联表
    - 表型，需要转换成属性表数据的 Lua 表
- 属性表数据格式
    - 文本型，可选参数，只能是 "binary" 或者 "XML"，默认为 "XML"
- 属性表数据
    - 字符串型 或 nil，转换成功返回数据内容，转换失败返回 nil


#### 说明
> plist\.load 的反函数，将表转换成属性表数据  
> **这个函数在 1\.2\-3 版以上方可使用**  


#### 示例
```lua
local tab = {
    arr = {
        46,
        99,
        7,
    };
    dict = {
        a = 55;
        b = 65;
        c = 9;
    };
}
--
local xplist = plist.dump(tab)
sys.alert(xplist) -- 输出 XML 格式的属性表数据
--
local bplist = plist.dump(tab, "binary")
sys.alert(bplist) -- 二进制格式的属性表数据，打印出来会乱码
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)