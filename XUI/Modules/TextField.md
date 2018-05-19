### TextField 单行文本框


此组件在界面上显示一个文本框, 用于字符串输入. 


|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|alignment|字符串|对齐方式|可选|
|keyboard|字符串|键盘类型|可选|
|placeholder|字符串|文本框占位符|可选|
|isSecure|布尔型|字符是否显示为小圆点|可选|
|clearButtonMode|字符串|是否显示清除小黑叉|可选|
|validationRegex|字符串|用于验证字符串条目的正则表达式|可选, \>= 1.2-10|
|prompt|字符串|提示框标题|可选, 可本地化, \>= 1.2-10|
|message|字符串|提示框信息|可选, 可本地化, \>= 1.2-10|
|okTitle|字符串|提示框确定按钮标题|可选, 可本地化, \>= 1.2-10|
|cancelTitle|字符串|提示框取消按钮标题|可选, 可本地化, \>= 1.2-10|


此组件不支持 `icon`, 若设置 `title` 属性, 建议将 `alignment` 属性设为 "Right".

修改或添加字符串条目时, 若字符串无法通过[正则表达式](http://tool.oschina.net/regex/) `validationRegex` 验证, 则无法保存当前条目.

`prompt` 或 `message` 不为空时, 轻按 **TextField**, 会弹出提示框, 并要求在提示框中输入值, 同时需要 iOS 8.0 及更高版本.


|  主题键  |  描述  |
|----------|--------|
|textColor|颜色|文字颜色|
|caretColor|颜色|光标颜色|
|placeholderColor|颜色|占位符颜色|


| alignment | 描述 |
|--------|------|
|Left|左对齐 (默认)|
|Center|居中|
|Right|右对齐|
|Natural|自然对齐|
|Justified|两边对齐|


| keyboard | 描述 |
|--------|------|
|Default|标准及第三方键盘 (默认)|
|Alphabet|标准 ASCII|
|ASCIICapable|标准 ASCII|
|NumbersAndPunctuation|数字与标点|
|URL|网址|
|NumberPad|数字|
|PhonePad|电话号码|
|NamePhonePad|姓名与电话号码|
|EmailAddress|电子邮箱|
|DecimalPad|带小数点的数字|


| clearButtonMode | 描述 |
|--------|------|
|Never|从不显示 (默认)|
|Always|一直显示|
|WhileEditing|仅编辑时显示|
|UnlessEditing|仅不编辑时显示|


|   返回类型   |   描述   |
|--------------|----------|
|字符串|文本框内容|


``` lua
{
    defaults = "com.yourcompany.yourscript";
    default = "";
    cell = "TextField";
    key = "username";
    keyboard = "Alphabet";
    placeholder = "Enter the username";
};
{
    defaults = "com.yourcompany.yourscript";
    default = "";
    isSecure = true;
    cell = "TextField";
    key = "password";
    keyboard = "Alphabet";
    placeholder = "Enter the password";
    validationRegex = "^[0-9]{6}$";
};
```


![QQ20170914-192018.png-30kB](TextField/QQ20170914-192018.png)

