### 解码一个二维码图片 (**:qr\_decode**)


#### 声明
```lua
识别文本 = 图像:qr_decode()
```


#### 参数及返回值
> - 图像
>   - 图片对象，当前操作的图片对象
> - 识别文本
>   - 文本型 或 nil，返回当前二维码解码之后的文字，如果不是二维码或不能解码则返回 nil


#### 说明
> 解码一个包含二维码图片，不一定需要纯二维码图像，有杂物可能也能正确识别  


#### 示例  
```lua
-- 解码一个本地二维码图片文件
local img = image.load_file("/User/qr.png")
if img then
    local str = img:qr_decode()
    img:destroy()
    if str then
        sys.alert("识别成功\n识别结果是："..str)
    else
        sys.alert("识别失败")
    end
else
    sys.alert("图片文件加载失败，文件或许不存在")
end
```
```lua
-- 解码当前屏幕上显示的二维码
local str = screen.image():qr_decode()
if str then
    sys.alert("识别成功\n识别结果是："..str)
else
    sys.alert("识别失败")
end
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

