### Group 分组

此组件在界面上显示一个分组区域 Section, 包含到下一个相同组件类型之间的所有组件. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|footerText|字符串|在当前组之后添加一行小字|可选, 可本地化|

*此组件不支持 **label/icon/height***

``` lua
{
    items = {
        {
            cell = "Group";
            label = "Switch";
        };
        {
            defaults = "com.yourcompany.yourscript";
            default = true;
            label = "Enabled";
            cell = "Switch";
            key = "switch1";
            icon = "res/16.png";
        };
        {
            cell = "Group";
            label = "Button";
        };
        {
            url = "https://www.xxtouch.com";
            cell = "Link";
            label = "Open XXTouch.com";
        };
        {
            cell = "Button";
            action = "OpenURL:";
            label = "Contact i.82@me.com";
            args = {
                url = "mailto://i.82@me.com";
            };
        };
    };
};
```

![QQ20170914-191445.png-44.5kB](Group/QQ20170914-191445.png)
