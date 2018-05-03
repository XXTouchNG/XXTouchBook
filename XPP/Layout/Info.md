### 元信息

XPP 脚本包中需要一个名为 `Info.lua` 的脚本，返回一个用于描述当前脚本应用包元信息的 Lua 表常量。它通常不应该包含常量值以外的 Lua 代码

以下是一个典型的 `Info.lua` 示例：

```lua
return {
    BundleIdentifier = "com.yourcompany.yourscript";
    BundleVersion = "0.0.1";
    BundleName = "Your Name";
    BundleDisplayName = "\U4f60\U7684\U540d\U5b57";
    BundleIconFile = "appicon.png";
    Executable = "xui-script.lua";
    MainInterfaceFile = "xui-demo.xui";
    MinimumSystemVersion = "10.0";
    MaximumSystemVersion = "10.2";
    MinimumXXTVersion = "1.1.2";
    SupportedResolutions = {
    	{
    		width = 640;
    		height = 1136;
    	};
    };
	PackageControl = {
    	AuthorName = "i_82";
    	AuthorEmail = "i.82@me.com";
    	Description = "";
    	Homepage = "https://82flex.com";
	};
};
```

`Info.lua` 返回的表通常包含以下键值对，各键值对的详细解释参见各子章节：

| 键 | 必选 | 建议 | 描述 |
|----|:---:|-----|------|
|BundleIdentifier|\*|\*|唯一标识符|
|BundleVersion|\*|\*|版本号|
|BundleName|\*|\*|名称|
|Executable||\*|可执行入口脚本文件名 \( **\.lua**, **\.xxt** \) |
|BundleDisplayName||\*|显示名称|
|BundleIconFile||\*|应用图标|
|MainInterfaceFile||\*|XUI 入口配置文件名 \( **\.xui**, **\.xuic** \) |
|MinimumSystemVersion|||最低系统版本要求|
|MaximumSystemVersion|||最高系统版本要求|
|MinimumXXTVersion|||最低 XXTouch 版本要求|
|SupportedResolutions|||设备分辨率支持数组|
|PackageControl|||附加信息|

*你应当尽可能完善这些信息，完善的显示名称、应用图标、配置界面有助于你的脚本观感更好，获得更高的认可度。* 


**XPP 脚本包支持哪些脚本？**

XPP 脚本包中支持的可执行服务脚本格式有: `.lua` 与 `.xxt`. 脚本从脚本包中获取资源与配置, 与单独运行并无太大区别. 如需指定 XPP 脚本包的入口脚本, 参见 Info.lua 的 [Executable](Info/Executable.html) 字段.


**如何指定 XPP 的配置界面？**

如需指定 XPP 脚本包配置时的配置界面文件, 参见 Info.lua 的 [MainInterfaceFile](Info/MainInterfaceFile.md) 字段. 如需编写配置界面 XUI 文件, 参见 [XUI 界面库使用手册](/XUI).


**如何处理 XPP 中的资源？**

XPP 脚本包中的脚本/资源/模块/数据需放置于 XPP 目录中, 通过相对路径访问.
XPP 脚本包运行时所产生的临时文件/数据, 请勿存放在 XPP 脚本包中, 应存放于 XXTouch 缓存目录、临时目录等位置.
