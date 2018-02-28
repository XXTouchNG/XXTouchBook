### 检测应用程序是否正在运行 (**app\.is\_running**)


#### 声明
```lua
状态 = app.is_running(应用程序包名)
```


#### 参数及返回值
> - 应用程序包名
>   - 文本型，需要定位的应用的 bundle identifier \(应用包名，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\) 
> - 状态
>   - 布尔型，是否正在运行


#### 说明
> 本函数用于检查一个应用程序是否正在运行，它不区分前后台  
> 如果要判断一个应用是否在前台运行，可以使用 [app.front_bid](/Handbook/app/app.front_bid.md) 获取前台应用 bid 进行对比，如下  
```lua
if "com.tencent.mqq" == app.front_bid() then
    sys.alert('QQ 正在前台运行')
end
```
> **注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)


#### 示例  
```lua
if app.is_running("com.tencent.mqq") then
    sys.alert('QQ 正在运行')
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

