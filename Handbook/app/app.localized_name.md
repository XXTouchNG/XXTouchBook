### 通过应用程序 bid 获取应用的本地化名字 \(**app\.localized\_name**\)


#### 声明
```lua
本地化名字 = app.localized_name(应用程序包名)
```


#### 参数及返回值
- 应用程序包名
    - 文本型，应用的 bundle identifier  
    应用包标识符，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看  
- 本地化名字
    - 文本型 或 nil，返回应用的本地化名字，如果应用不存在则返回 nil


#### 示例  
```lua
local name = app.localized_name("com.tencent.xin")
sys.alert(name) -- 弹出显示 “微信”
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

