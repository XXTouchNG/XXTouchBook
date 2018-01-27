### 根

XUI 配置的根（顶层）为字典. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|title|字符串|导航栏标题|可选, 可本地化|
|header|字符串|主标题|可选, 可本地化|
|subheader|字符串|副标题|可选, 可本地化|
|items|包含字典的数组|组件列表|\-|
|theme|字典|界面主题样式|可选|

**items** 是组件列表数组, 所有的 *组件字典* 按顺序存放在该数组中, 即可在界面上显示. 关于 *组件字典* 的说明, 参见本文后续内容. 

``` lua
return {
    subheader = "Elegant App UI provided by XXTouchApp.";
    header = "Example";
    title = "Demo";
    theme = {
        tintColor = "#FFFFFF";
    };
    items = {};
};
```
