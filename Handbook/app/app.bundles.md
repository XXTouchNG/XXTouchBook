### 获取设备所有的应用的 Bundle Identifier 列表 (**app\.bundles**)


#### 声明
```lua
应用程序包名数组 = app.bundles()
```


#### 参数及返回值
> - 应用程序包名数组
>   - 顺序表型，返回很多 bid 的一个表，也包括系统自带的


#### 说明
> 获取设备所有的应用的 bundle identifier \(应用包名，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\) 列表  


#### 示例  
```lua
-- 遍历关闭所有的 app
for _,bid in ipairs(app.bundles()) do
	app.close(bid)
end
```

