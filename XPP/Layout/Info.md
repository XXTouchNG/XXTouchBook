### Info.lua

XXTouch 需要 **Info.lua** 返回一个用于描述当前脚本应用包元信息的 Lua 表常量。它不应该包含常量值以外的 Lua 代码

以下是一个典型的 **Info.lua** 示例：

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

**Info.lua** 返回的表通常包含以下键值对：

| 键 | 必选 | 描述 |
|----|:----------:|------|
|BundleIdentifier|\*|唯一标识符|
|BundleVersion|\*|版本号|
|BundleName|\*|名称|
|Executable|\*|可执行入口脚本文件 \( **\.lua**, **\.xxt** \) |
|BundleDisplayName||显示名称|
|BundleIconFile||应用图标|
|MainInterfaceFile||XUI 入口配置 \( **\.xui**, **\.xuic** \) |
|MinimumSystemVersion||最低系统版本要求|
|MaximumSystemVersion||最高系统版本要求|
|MinimumXXTVersion||最低 XXTouch 版本要求|
|SupportedResolutions||设备分辨率支持数组|
|PackageControl||附加信息|
