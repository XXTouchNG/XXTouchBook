### 识别图片对象 \(**plat\.ocr\_obj**\)


#### 声明
```lua
识别结果, 结果标签或错误信息 = plat.ocr_obj(图像, 打码类型 [, 超时秒数, 缩放比例 ])
```


#### 参数及返回值
> - plat
>   - 表型，云打码平台对象，可以使用 [初始化一个云打码平台](/Handbook/cloud_ocr/cloud_ocr.ocr.md) 来获得
> - 图像
>   - [图片对象](/Handbook/image/README.md)，需要打码的图片对象
> - 打码类型
>   - 文本型，打码类型
> - 超时秒数
>   - 整数型，可选参数，超时时间设置，单位秒，默认 30
> - 缩放比例
>   - 整数型，可选参数，缩放比例，默认 100 不处理
> - 识别结果
>   - 文本型 或 nil，识别成功返回打码结果文字，识别失败返回 nil
> - **结果标签**或错误信息
>   - 文本型，识别成功返回 **结果标签**，识别失败返回错误信息文本描述


#### 说明
> 使用打码平台识别图片对象  
> > 打码题型参考  
> > 若快题型及价格：http://www.ruokuai.com/home/pricetype  
> > 打码兔题型及价格：http://wiki.dama2.com/index.php?n=ApiDoc.Pricedesc  


#### 示例  
[`本章最后`](/Handbook/cloud_ocr/samples.md)  

