### Radio / Checkbox 单选框 / 复选框组

此组件在界面上显示若干单选框 / 复选框. 

点选**单选框**会选中当前选择的单选框, 取消同组其它单选框的选中状态. 
点选**复选框**会切换其选中 / 未选状态. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|alignment|字符串|对齐方式|可选|
|options|包含字典的数组|选项列表数组|\-|
|minCount|整数|最少选择项目数|复选框有效|
|maxCount|整数|最多选择项目数|复选框有效|

| alignment | 描述 |
|--------|------|
|Left|左对齐 (默认)|
|Center|居中|
|Right|右对齐|
|Natural|扩展空白部分使两边对齐|
|Justified|扩展标签宽度使两边对齐|

**options** 包含若干 *选项*, *选项* 为字典, 有如下属性: 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|title|字符串|选项标题|可本地化|
|value|基本类型|选项配置值<br />若不填, 则与 **title** 一致.|可选|

*此组件不支持 **label/icon/height***

|  主题键  |  描述  |
|----------|--------|
|tagTextColor|标签文字颜色|
|tagSelectedTextColor|选中标签文字颜色|
|tagBackgroundColor|标签背景颜色|
|tagSelectedBackgroundColor|选中标签背景颜色|
|tagBorderColor|标签边框颜色|
|tagSelectedBorderColor|选中标签边框颜色|

|   返回类型   |   描述   |
|--------------|----------|
|包含字符串的数组|包含所有选中项 **value** 的数组|

``` lua
{
    defaults = "com.yourcompany.yourscript";
    default = {
        "Red";
        "Green";
    };
    cell = "Checkbox";
    key = "checkbox";
    maxCount = 4;
    options = {
        {
            title = "Red";
        };
        {
            title = "Green";
        };
        {
            title = "Blue";
        };
        {
            title = "Yellow";
        };
        {
            title = "Purple";
        };
        {
            title = "Black";
        };
        {
            title = "White";
        };
    };
};
{
    defaults = "com.yourcompany.yourscript";
    default = "Fifth; please!";
    cell = "Radio";
    key = "radio";
    options = {
        {
            title = "First";
        };
        {
            title = "Second";
        };
        {
            title = "Third";
        };
        {
            title = "Fourth";
        };
        {
            title = "Fifth; please!";
        };
        {
            title = "Zero";
        };
    };
};
```

![QQ20170916-182221@2x.png-185.2kB](Radio_Checkbox/QQ20170916-182221@2x.png)
