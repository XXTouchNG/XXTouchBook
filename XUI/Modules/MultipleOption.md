### MultipleOption 多项选择列表

此组件在界面上显示一个子菜单项, 用于链接包含一些选项的子菜单. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|options|包含字典的数组|选项列表数组|\-|
|footerText|字符串|显示在列表选项下方的小字|可选, 可本地化|
|maxCount|整数|最多选择项目数|\-|
|popoverMode|布尔型|采用悬浮样式|XXT 版本 \>= v1.2-4|

**options** 包含若干 *选项*, *选项* 为字典, 有如下属性: 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|title|字符串|选项标题|可本地化|
|value|基本类型|选项配置值<br />若不填, 则与 **title** 一致.|可选|
|icon|字符串|选项图标文件名|可选|

|   返回类型   |   描述   |
|--------------|----------|
|包含字符串的数组|包含所有选中项 **value** 的数组|

``` lua
{
    defaults = "com.yourcompany.yourscript";
    default = {
        "Red; it's red!"; "Green; it's green!"
    };
    label = "List of Multiple Options";
    cell = "MultipleOption";
    key = "list-2";
    maxCount = 2;
    options = {
        {
            title = "Red; it's red!";
        };
        {
            title = "Green; it's green!";
        };
        {
            title = "Blue; great color!";
        };
    };
};
```

![QQ20170916-182611@2x.png-25.2kB](MultipleOption/QQ20170916-182611@2x.png)
