### Switch 开关


此组件在界面上显示一个开关. 


|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|negate|布尔型|反转开关显示情况|可选|
|trueValue|基本类型|当结果为 `true` 时保存的值<br />若不填则保存 `true`|可选|
|falseValue|基本类型|当结果为 `false` 时保存的值<br />若不填则保存 `false`|可选|


|  主题键  |  描述  |
|----------|--------|
|tintColor|开关底色|
|thumbColor|开关中心色|


|   返回类型   |   描述   |
|--------------|----------|
|基本类型|与开关状态一致, 但若 `negate` 为真, 配置值为开关状态取反.<br />若存在, 配置值会被 `trueValue` 或 `falseValue` 代替.|


``` lua
{
    defaults = "com.yourcompany.yourscript";
    default = true;
    label = "Enabled";
    cell = "Switch";
    key = "switch1";
    icon = "res/16.png";
};
```


![CFC04C38-FFBE-46B9-BE86-AE8470342DAD.png-19.2kB](Switch/CFC04C38-FFBE-46B9-BE86-AE8470342DAD.png)

