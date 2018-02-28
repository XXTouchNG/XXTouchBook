### 屏幕区域文字识别 (**screen\.ocr\_text**)


#### 声明
```lua
识别结果, 结果详情 = screen.ocr_text(左, 上, 右, 下 [, 结果范围, 二值化选项 ])
```


#### 参数及返回值
> - 左, 上, 右, 下
>   - 整数型，代表识别区域
> - 结果范围
>   - 可以是 文本型 或 表型 参数
>   - 详情可参考 [对图片进行 ocr 识别](/Handbook/image/_tess_ocr.md)
> - 二值化选项 \*1\.1\.0\-1 新增
>   - 可以是 实数型 或 文本型 或 表型 参数，分别代表
>     - 实数型，二值化阈值，可参考 [图片自动二值化](#opencv\-图片自动二值化\-cvbinaryzation)
>     - 表型，自定义二值化色偏，参考 [图片手动二值化](#二值化处理图片对象\-binaryzation)
>     - 文本型，自定义二值化色偏，参考 [图片手动二值化](#二值化处理图片对象\-binaryzation)
> - 识别结果
>   - 文本型，识别返回的文字
> - 结果详情 \*1\.1\.3\-1 新增
>   - 表型，识别结果的每个可见字符的位置描述


#### 说明
> 识别屏幕区域上的文字，该函数会引用 image\.tess_ocr 模块  
> 内置 OCR 识别库引擎为 tesseract 3\.02 版，版本不对或者字库文件损坏会导致 XXTouch 脚本服务崩溃。这里提供适用于 XXTouch 的 tesseract 引擎版本为 3\.05 版的 OCR 识别库 [tess_ocr_1.2_with_tesseract_3.05.01.zip](http://static.zybuluo.com/xxtouch/fxnwlp9ic4mzf01shxegkier/tess_ocr_1.2_with_tesseract_3.05.01.zip)  
> XXTouch 已内置 eng 识别库 \[A\-Za\-z0\-9\] 能识别常规英文和数字  
> 如果需要做简体中文或是其它语言文字识别，需要手动导入相关的字库文件到设备的 `/var/mobile/Media/1ferver/tessdata/` 目录  
> 这里提供 [简体中文字库 (点击下载) ](http://xxtouch2.oss-cn-hangzhou.aliyuncs.com/chi_sim.traineddata)  
> **`二值化选项` 手动二值化在 1\.1\.0\-1 版以上方可使用**  
> **`结果详情` 在 1\.1\.3\-1 版以上方可使用**  
> 如果想自己进行 tesseract 字库训练可以 [百度搜索“tesseract 训练”](https://www.baidu.com/s?wd=tesseract%20训练)  

  
#### 示例  
```lua
-- 示例 1：
local txt = screen.ocr_text(187, 882, 298, 914) -- 默认配置是使用英文数字模式识别文字
sys.toast("识别结果："..txt:atrim())
--
-- 示例 2 (1.1.0-1 新增) ：
local txt = screen.ocr_text(465, 241, 505, 269, "eng", "9D5D39-0F1F26,D3D3D2-2C2C2D") -- 使用色偏二值化识别
sys.toast("识别结果："..txt:atrim())
--
-- 示例 3 (1.1.0-1 新增) ：
local txt = screen.ocr_text(465, 241, 505, 269, "eng", { {0x9D5D39, 0x0F1F26}, {0xD3D3D2, 0x2C2C2D} }) -- 使用色偏二值化识别，同上
sys.toast("识别结果："..txt:atrim())
--
-- 示例 4：
local txt = screen.ocr_text(187, 882, 298, 914, {
  lang = "eng",
  white_list = "1234567890",      -- 自定义使用白名单限制仅识别为数字
})
sys.toast("识别结果："..txt:atrim())
--
-- 示例 5 (1.1.0-1 新增) ：
local txt = screen.ocr_text(187, 882, 298, 914, {
  lang = "eng",
  white_list = "1234567890",      -- 自定义使用白名单限制仅识别为数字
}, "9D5D39-0F1F26,D3D3D2-2C2C2D") -- 使用色偏二值化识别
sys.toast("识别结果："..txt:atrim())
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`string.atrim`](/Handbook/ext-string/string.atrim.md)

