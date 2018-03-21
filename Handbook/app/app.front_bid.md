### 获取前台应用的 Bundle Identifier \(**app\.front\_bid**\)


#### 声明
```lua
应用程序包名 = app.front_bid()
```


#### 参数及返回值
- 应用程序包名
    - 文本型，返回前台应用的 bundle identifier  
        - 没有应用处于前台但桌面服务已加载返回 `"com.apple.springboard"`
        - 没有应用处于前台且桌面服务尚未启动返回 `"com.apple.backboardd"`


#### 说明
> 获取前台应用的 bundle identifier \(应用包标识符，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\)   



#### 示例  
```lua
local bid = app.front_bid()
sys.alert("前台应用的应用包名是："..bid)
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

