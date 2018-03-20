### 获取 App 的应用存档路径 \(**app\.data\_path**\)


#### 声明
```lua
存档路径 = app.data_path(应用程序包名)
```


#### 参数及返回值
> - 应用程序包名
>   - 文本型，需要定位的应用的 bundle identifier \(应用包名，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\) 
> - 存档路径
>   - 文本型 或 nil，返回应用程序的存档路径，如果应用不存在则返回 nil


#### 说明
> 获取 App 的应用存档路径  


#### 示例  
```lua
path = app.data_path("com.tencent.mqq") -- 获得 QQ 的应用存档路径
```

