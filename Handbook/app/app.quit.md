### 模拟使用上划退出应用程序 \(**app\.quit**\)


#### 声明
```lua
app.quit(应用程序包名)
```


#### 参数及返回值
- 应用程序包名
    - 文本型，需要退出的应用的 bundle identifier  
    应用包标识符，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看  
    传入 `"*"` 表示退出所有  


#### 说明
> 这个当然也是强杀，但是与 [app.close](/Handbook/app/app.close.md) 不同的是，应用在退出前会收到通知；并且它会清除掉多任务切换界面的标签  
> **请不要在锁屏状态使用，该函数可能不能良好退出 root 权限的 App，使用该函数退出 root 权限程序可能会导致屏幕卡住点图标无响应等现象，root 权限的 App 推荐使用 [app.close](/Handbook/app/app.close.md) 强杀**  


#### 示例  
```lua
-- 退出所有的 App
app.quit("*")
--
-- 退出QQ，如果QQ正在运行的话
app.quit("com.tencent.mqq")
```
