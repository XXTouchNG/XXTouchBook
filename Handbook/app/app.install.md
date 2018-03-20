### 安装IPA安装包 \(**app\.install**\)


#### 声明
```lua
安装成败 = app.install(文件路径 [, 强行安装 ])
```


#### 参数及返回值
- 文件路径
    - 文本型，需要安装的 App 安装包 (ipa 格式) 绝对路径
- 强行安装 \*1\.1\.3\-1 新增
    - 布尔型，可选参数，是否强行安装，true 为强行安装，false 为大于当前 ipa 版本不覆盖安装，默认为 false
- 安装成败
    - 布尔型，安装成功返回 true，安装失败返回 false


#### 说明
> 后台安装一个 ipa 格式的安装包  
> **安装的完成之前脚本不能被自然终止并会一直阻塞**  
> 调用此函数前需确保在目标设备中已安装过 AppSync 插件或 [IPA补丁 (iOS7~iOS10) .deb](http://xxtouch.oss-cn-shanghai.aliyuncs.com/IPA%E8%A1%A5%E4%B8%81%EF%BC%88iOS7~iOS10%EF%BC%89.deb)  


#### 示例  
```lua
app.install("/User/1.ipa", true) -- 强行覆盖安装，用于降级安装 App
--
if app.install("/User/1.ipa") then
    -- 安装成功
else
    -- 安装失败
end
```

