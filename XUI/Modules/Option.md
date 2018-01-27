### Option 单项选择列表

此组件在界面上显示一个子菜单项, 用于链接包含一些选项的子菜单. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|options|包含字典的数组|选项列表数组|\-|
|footerText|字符串|显示在列表选项下方的小字|可选, 可本地化|
|popoverMode|布尔型|采用悬浮样式|\>= v1.2-4|

**options** 包含若干 *选项*, *选项* 为字典, 有如下属性: 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|title|字符串|选项标题|可本地化|
|shortTitle|字符串|显示在父级菜单右侧的标题|可选, 可本地化|
|value|基本类型|选项配置值<br />若不填, 则与 **title** 一致.|可选|
|icon|字符串|选项图标文件名|可选|

|   返回类型   |   描述   |
|--------------|----------|
|字符串|选中项的 **value**|

``` lua
{
    defaults = "com.yourcompany.yourscript";
    default = "Green; it's green!";
    label = "List of Options";
    cell = "Option";
    key = "list-1";
    options = {
        {
            title = "Red; it's red!";
            shortTitle = "Red";
        };
        {
            title = "Green; it's green!";
            shortTitle = "Green";
        };
        {
            title = "Blue; great color!";
            shortTitle = "Blue";
        };
    };
};
```

![QQ20170916-182546@2x.png-23.3kB](Option/QQ20170916-182546@2x.png)
