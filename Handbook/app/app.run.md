### 运行应用程序 \(**app\.run**\)


#### 声明
```lua
状态 = app.run(应用程序包名)
```


#### 参数及返回值
> - 应用程序包名
>   - 文本型，需要定位的应用的 bundle identifier \(应用包名，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\) 
> - 状态
>   - 整数型，返回运行状态
>       - 返回 0 表示启动成功
>       - 返回 其它值 表示启动失败


#### 示例  
```lua
-- 打开内置天气应用，然后退出
local r = app.run("com.apple.weather") -- 启动应用 包名可在 XXT 应用程序--更多--应用列表 中查看
sys.msleep(10 * 1000) -- 等 10 秒
if r == 0 then
    app.close("com.apple.weather") -- 退出应用
else
    sys.alert("启动失败", 3)
end
```
**注**：上述代码中使用了非本章函数 [`sys.msleep`](/Handbook/sys/sys.msleep.md)、[`sys.alert`](/Handbook/sys/sys.alert.md)

