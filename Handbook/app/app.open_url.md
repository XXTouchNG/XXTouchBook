### 前台打开一个 URL \(**app\.open\_url**\)


#### 声明
```lua
app.open_url(URL)
```

#### 参数及返回值
- URL
    - 文本型，需要打开的 URL ，可以打开 [URL Scheme](https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/Introduction/Introduction.html) \([“URL Scheme” 的相关应用](/Handbook/supplement/url-scheme.md)\)  


#### 说明
> 前台打开一个 URL，可以打开 [URL Scheme](https://developer.apple.com/library/ios/featuredarticles/iPhoneURLScheme_Reference/Introduction/Introduction.html) \([“URL Scheme” 的相关应用](/Handbook/supplement/url-scheme.md)\)  
> 部分 URL 用该 API 跳转可能不是想要的效果，可试试  
```lua
local function sh_escape(path) -- XXTouch 原创函数，未经 XXTouch 许可，可以用于商业用途
	path = string.gsub(path, "([ \\()<>'\"`#&*;?~$])", "\\%1")
	return path
end
os.execute('uiopen '..sh_escape('http://www.google.com'))
os.execute('uiopen '..sh_escape('prefs:root=General&path=ACCESSIBILITY'))
```


#### 示例  
```lua
app.open_url("http://www.google.com") -- 用 Safari 打开 Google 的主页，当然，不一定打得开
--
app.open_url("prefs:root=General&path=ACCESSIBILITY") -- 跳转到 设置--通用--辅助功能
```

