## XUI 支持的 API

`.xui` 脚本是一个特殊的 Lua 脚本，同时还支持调用很少一部分的服务模块，主要用于设备类型判断、界面重载、配置数据读写等目的。以下是 `.xui` 脚本中支持的 API 列表，未在此列表中列出的 API 均不能在 `.xui` 脚本中使用：


### XPP 与 XUI 模块

- (v1.2-10) [XPP 脚本包模块](/Handbook/xpp/index.html) `xpp`
- (v1.2-10) [XUI 脚本配置界面模块](/Handbook/xui/index.html) `xui`


### 扩展字符串模块 (string)

- (v1.2-10) [比较两个版本号大小](/Handbook/ext-string/string.compare_version.html) `string.compare_version`


### 应用程序模块 (app)

- (v1.2-10) [前台打开一个 URL](/Handbook/app/app.open_url.html) `app.open_url`


### 屏幕模块（screen）

- [获取屏幕尺寸](/Handbook/screen/screen.size.html) `screen.size`


### 系统模块（sys）

- [获取系统版本](/Handbook/sys/sys.version.html) `sys.version`
- [获取 XXTouch 版本](/Handbook/sys/sys.xtversion.html) `sys.xtversion`


### 设备相关模块（device）

- [获取设备类型](/Handbook/device/device.type.html) `device.type`
- [获取设备名](/Handbook/device/device.name.html) `device.name`


### PLIST 文件读写模块 (plist)

- [读取 plist 文件](/Handbook/plist/plist.read.html) `plist.read`
- [写入 plist 文件](/Handbook/plist/plist.write.html) `plist.write`


### JSON 模块 (json)

- [将 Lua 值转成 JSON 字符串](/Handbook/json/json.encode.html) `json.encode`
- [将 JSON 字符串转换成 Lua 值](/Handbook/json/json.decode.html) `json.decode`
- [JSON 中的 NULL 常量](/Handbook/json/json.null.html) `json.null`

