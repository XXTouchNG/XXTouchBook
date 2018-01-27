# XXTouch UI (XUI) 界面库使用手册

在阅读本文前, 您需要对 Lua 语法有所了解, 并能理解 数值/布尔型/字符串/数组/字典 等基本数据类型.

 - 适用于 **v1\.2\-1** 及以上平台版本
 - 支持 iPhone/iPad 横竖屏, 支持 iOS 7 及以上系统版本
 - XUI 不与原有的对话框 \( dialog \) 和 WebView UI 冲突
 - XUI 为 [脚本应用包 \( XPP \)](https://www.zybuluo.com/xxtouch/note/738353) 提供界面扩展

XUI 用于在 XXTouch 上提供配置界面, 采用 iOS 系统原生组件. 本手册提供了 XUI 界面布局的规范. XUI 是 [脚本应用包 \( XPP \)](https://www.zybuluo.com/xxtouch/note/738353) 的一部分, 用来为脚本包创建配置, 不能独立使用. 

如需使用 XUI, 您需要创建指定格式的 xui / json / plist 文件, 在脚本包中激活. 保存的配置项, 可以通过 plist 库进行读取. 
