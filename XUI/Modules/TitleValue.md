### TitleValue 键值对显示; 代码片段选择器

此组件在界面上显示 key - value 对, 类似 设置 -> 通用 -> 关于中系统参数键值对的显示. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|value|基本类型|右侧显示值|可选|
|snippet|字符串|选择器脚本文件名|可选|

此组件可以左划将已存的配置值置空, 但不能覆盖 XUI 中提供的 value. 

如果为此组件设置了 **defaults** 和 **key**, 则此组件可用来显示配置项的实际值；同时设置 **snippet** 属性, 则能够为此组件增加 XUI 内选择器的功能, 激活选择器组, 并将返回结果存入此组件的配置项内. 

``` lua
{
    default = true;
    cell = "Switch";
    key = "switch1";
    defaults = "com.yourcompany.yourscript";
    label = "Sosh!";
};
{
    cell = "TitleValue";
    label = "Version";
    value = "1.1.3";
}; -- 显示固定值
{
    cell = "TitleValue";
    label = "Dynamic";
    key = "switch1";
    defaults = "com.yourcompany.yourscript";
}; -- 显示配置值
{
    cell = "TitleValue";
    label = "Application";
    key = "applications";
    defaults = "com.yourcompany.yourscript";
    snippet = "snippets/app.snippet";
}; -- 显示选择器组
```

![QQ20170914-192446.png-36.5kB](TitleValue/QQ20170914-192446.png)
