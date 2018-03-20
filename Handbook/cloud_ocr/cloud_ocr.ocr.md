### 初始化一个云打码平台 \(**cloud\_ocr\.ocr**\)


#### 声明
```lua
local cloud_ocr = require('cloud_ocr')
local plat = cloud_ocr.ocr(平台名, 账号, 密码)
```


#### 参数及返回值
> - 平台名
>   - 文本型，平台 (目前支持 'ruokuai', 'dama2', '好爱') 
> - 账号
>   - 文本型，云验证码识别网站账号
> - 密码
>   - 文本型，云验证码识别网站密码
> - plat
>   - 表型，云打码平台对象，用于后面几个 API


#### 说明
> 初始化一个云打码平台，云平台账号需要在各自平台官网注册  
> - XXTouch 目前已经集成的云打码平台有若快打码、打码兔、好爱答题
>   - ruokuai (若快打码) 
>       - 平台官网：http://www.ruokuai.com/
>       - 注意：若快的开发者账号不能用于打码，需要注册一个用户账号用于打码
>   - dama2 (打码兔) 
>       - 平台官网：http://www.dama2.com/
>   - 好爱
>       - 平台官网：http://www.haoi23.net/
>       - **好爱 平台支持在软件版本 1\.2\-1 或以上集成**


#### 示例  
[`本章最后`](/Handbook/cloud_ocr/samples.md)

