### DateTime 时间日期选择器


此组件在界面上显示一个时间日期选择器, 用于日期、时间的选择及时间间隔的调整. 


|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|min|数值|时间间隔最小值|可选|
|max|数值|时间间隔最大值|可选|
|minuteInterval|整数|时间间隔歩长, 单位分钟|可选|
|mode|字符串|选择器模式|可选|
|format|字符串|时间格式 ([ISO8601][18])|`mode` ~= 'interval', \>= 1.2-4|


此组件不支持 `label`/`icon`.


| mode | 描述 |
|--------|------|
|datetime|日期时间选择器 (默认)|
|date|日期选择器|
|time|时间选择器|
|interval|时间间隔选择器|


|   返回类型   |   条件   |   描述   |
|--------------|----------|----------|
|整数|**format** == nil|组件所选时间的 Unix 时间戳, 或时间间隔的秒数|
|字符串|**\#format** > 0|组件所选时间按 **format** 进行格式化后的结果|


**format** 时间日期格式请参见 [Unicode: Date Format Patterns](http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns)


``` lua
{
    cell = "DateTime";
    key = "datetime1";
    defaults = "com.yourcompany.yourscript";
};
```


![QQ20170917-000929@2x.png-77.9kB](DateTime/QQ20170917-000929@2x.png)

