### 卸载一个应用 \(**app\.uninstall**\)


#### 声明
```lua
卸载成败 = app.uninstall(应用程序包名)
```


#### 参数及返回值
> - 应用程序包名
>   - 文本型，需要卸载的应用的 bundle identifier \(应用包名，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看\) 
> - 卸载成败
>   - 布尔型，卸载成功返回 true，卸载失败返回 false


#### 说明
> 后台卸载一个应用程序  
> **卸载的过程脚本不能被自然终止并会一直阻塞**  


#### 示例  
```lua
if app.uninstall("com.tencent.mqq") then
    -- 卸载成功
else
    -- 卸载失败
end
```

