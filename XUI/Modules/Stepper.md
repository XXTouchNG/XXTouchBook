### Stepper 数值调节按钮

此组件在界面上显示一个调节器, 用于数值的选择和调整. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|min|数值|调节最小值|\-|
|max|数值|调节最大值|\-|
|step|数值|调节歩长|\-|
|isInteger|布尔型|值是否显示为整数|可选|
|autoRepeat|布尔型|长按是否连续调整|可选|

|   返回类型   |   描述   |
|--------------|----------|
|数值|组件数值|

``` lua
{
    defaults = "com.yourcompany.yourscript";
    min = 1;
    default = 5;
    max = 10;
    autoRepeat = true;
    label = "Stepper";
    cell = "Stepper";
    key = "stepper";
    isInteger = true;
};
```

![QQ20170914-192349.png-10.8kB](Stepper/QQ20170914-192349.png)
