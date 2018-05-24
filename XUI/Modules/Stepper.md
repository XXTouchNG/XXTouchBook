### Stepper 数值调节按钮

此组件在界面上显示一个调节器, 用于数值的选择和调整. 

|键|类型|描述|必选|默认值|最低版本需求|
|---|---|---|---|---|---|
|min|数值|调节最小值|\-|`1`|\-|
|max|数值|调节最大值|\-|`100`|\-|
|step|数值|调节歩长|\-|`1`|\-|
|isInteger|布尔型|值是否显示为整数|\-|`false`|\-|
|autoRepeat|布尔型|长按是否连续调整|\-|`true`|\-|

此组件不支持 `icon`.

|返回类型|描述|
|---|---|
|数值|组件数值|


#### 示例

``` lua
{
    min = 1;
    default = 25;
    max = 100;
    autoRepeat = true;  -- 长按自动重复触发
    label = "步进控件";
    cell = "Stepper";
    key = "stepper";
    isInteger = true;  -- 是否显示为整数
};
```

![XUI-Stepper.png](XUIScreenshots/XUI-Stepper.png)

