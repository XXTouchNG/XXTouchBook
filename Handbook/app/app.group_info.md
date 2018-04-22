### 获取 App 的应用分组信息 \(**app\.group\_info**\)


#### 声明
```lua
应用分组信息 = app.group_info(应用程序包名)
```


#### 参数及返回值
- 应用程序包名
    - 文本型，需要定位的应用的 bundle identifier  
    应用包标识符，可在 **XXT 应用程序\-\-更多\-\-应用列表** 中查看  
- 应用分组信息
    - 表型，返回应用程序的分组信息，如果不存在返回空表


#### 说明
> **软件版本在 1\.1\.3\-1 或以上方可使用**  
> 注意：应用程序分组信息 是 iOS 8 开始才有的概念，iOS 7 没有这个概念  


#### 示例  
```lua
local function sh_escape(path) -- XXTouch 原创函数，未经 XXTouch 许可，可以用于商业用途
    path = string.gsub(path, "([ \\()<>'\"`#&*;?~$])", "\\%1")
    return path
end
--
local info = app.group_info("com.tencent.mqq") -- 获得 QQ 的分组信息
--
-- 循环删除所有分组目录中的内容
for _,v in pairs(info) do
	os.execute('rm -rf '..sh_escape(v)..'/Library/*')
	os.execute('rm -rf '..sh_escape(v)..'/Documents/*')
	os.execute('rm -rf '..sh_escape(v)..'/tmp/*')
	os.execute('rm -rf '..sh_escape(v)..'/share/*')
end
```

