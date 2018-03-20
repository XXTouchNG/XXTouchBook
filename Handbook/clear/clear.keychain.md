### 清理某个或某组钥匙串信息 \(**clear\.keychain**\)


#### 声明
```lua
clear.keychain(信息关联名)
```


#### 参数及返回值
- 信息关联名
    - 文本型，一般传入公司反域名，例如 `"com.tencent"`，切不可乱传参数


#### 说明
> 清理某个应用程序或分组的钥匙串信息，若不懂请直接用 [`clear.all_keychain`](/Handbook/clear/clear.all_keychain.md)  
> **警告：这个函数调用产生的效果不可逆转**  
> **警告：切不可乱传参数！！！**  
> **警告：该函数在给不正确的参数的情况下可能产生极其严重的后果！！！**  


#### 示例  
```lua
clear.keychain("com.tencent") -- 清理掉与 com.tencent 相关的 keychain 信息
```

