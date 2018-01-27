### TextField 单行文本框

此组件在界面上显示一个文本框, 用于字符串输入. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|alignment|字符串|对齐方式|可选|
|keyboard|字符串|键盘类型|可选|
|placeholder|字符串|文本框占位符|可选|
|isSecure|布尔型|字符是否显示为小圆点|可选|

*此组件不支持 __icon__, 若设置 __title__ 属性, 建议将 __alignment__ 属性设为 "Right".*

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
};
```

![QQ20170914-192018.png-30kB](TextField/QQ20170914-192018.png)
