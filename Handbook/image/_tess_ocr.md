### tesseract \- 对图片进行 ocr 识别 \(**:tess\_ocr**\)


#### 声明
```lua
require("image.tess_ocr") -- 需要提前加载
--
识别结果, 结果详情 = 图像:tess_ocr([{
  [lang = 语言,]
  [white_list = 白名单,]
  [black_list = 黑名单,]
}])
```


#### 参数及返回值
- 图像
    - 图片对象，当前操作的图片对象
- 语言
    - 文本型，可选参数，使用的字库名称，默认 "eng"
- 白名单
    - 文本型，可选参数，只允许展示的白名单，默认 无
- 黑名单
    - 文本型，可选参数，只过滤的黑名单，默认 ""
- 识别结果
    - 文本型，返回识别的结果
- 结果详情 \*1\.1\.3\-1 新增
    - 表型，识别结果的每个可见字符的位置描述


#### 说明
> tesseract 扩展功能，识别文字 (XXTouch 已内置 eng 识别库 \[A\-Za\-z0\-9\] 能识别常规英文和数字)  
> 内置 tesseract 引擎版本为 3\.02，版本不对或者字库文件损坏会导致 XXTouch 脚本服务崩溃  
> 这里提供适用于 XXTouch 的 tesseract 引擎版本为 3\.05 版的 OCR 识别库 [tess_ocr_1.2_with_tesseract_3.05.01.zip](res/tess_ocr_1.2_with_tesseract_3.05.01.zip)  
> 白名单参数和黑名单参数不可同时存在  
> 会对对象本身产生影响  
> 性能上，该函数操作过程不产生数据拷贝  
> 如果需要做简体中文或是其它语言文字识别  
> 需要手动导入相关的字库文件到设备的 ```/var/mobile/Media/1ferver/tessdata/``` 目录  
> 这里提供 [简体中文字库 (点击下载) ](http://xxtouch2.oss-cn-hangzhou.aliyuncs.com/chi_sim.traineddata)  
> 如果想自己进行 tesseract 字库训练可以 [百度搜索“tesseract 训练”](https://www.baidu.com/s?wd=tesseract%20训练)  


#### 示例  
```lua
require("image.tess_ocr")           -- 需要提前加载
--
text = img:tess_ocr()               -- 默认为 "eng"，英文识别
--
text = img:tess_ocr('chi_sim')      -- 简体中文识别
--
text = img:tess_ocr{
    lang = "eng",                   -- 英文字库
    white_list = "0123456789",      -- 白名单
}
--
text = img:tess_ocr{
    lang = "eng",                   -- 英文字库
    black_list = "abcdefghijk",     -- 黑名单
}
--
text = img:tess_ocr{
    lang = "chi_sim",               -- 简体中文字库
    white_list = "0123456789.元",    -- 白名单
}
```

