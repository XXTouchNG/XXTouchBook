### Slider 数值拖拽滑块

此组件在界面上显示一个滑块, 用于数值的选择和调整. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|min|数值|滑块最小值|\-|
|max|数值|滑块最大值|\-|
|step|数值|调节歩长, 滑块会自动紧贴最近的步长值|\-|
|showValue|布尔型|是否显示当前滑块的值|可选|

*此组件不支持 **label/icon***

|  主题键  |  描述  |
|----------|--------|
|tintColor|滑块进度底色|
|thumbColor|开关中心色|

|   返回类型   |   描述   |
|--------------|----------|
|数值|组件数值|

``` lua
{
    showValue = true;
    defaults = "com.yourcompany.yourscript";
    min = 0.1;
    default = 0.5;
    max = 1;
    step = 0.1;
    label = "Slider";
    cell = "Slider";
    key = "slider";
    isSegmented = true;
};
```

![QQ20170914-192324.png-9.1kB](Slider/QQ20170914-192324.png)
