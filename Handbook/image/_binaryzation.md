### 二值化处理图片对象 \(**:binaryzation**\)


#### 声明
```lua
图像 = 图像:binaryzation({
   {颜色*, 色偏*},
   {颜色*, 色偏*},
   ...
})
```
```lua
图像 = 图像:binaryzation("cx*-cox*,cx*-cox*...")
```


#### 参数及返回值
- 图像
    - 图片对象，当前操作的图片对象
- 颜色\*, 色偏\*
    - 整数型，颜色值白名单，颜色\* 是颜色值本身，色偏\* 是 颜色\* 的最大色差值
- cx\*\-cox\*
    - 文本型，颜色值白名单，cx\* 是颜色值本身的16进制文本描述，cox\* 是 cx\* 的最大色差值16进制文本描述


#### 说明
> 二值化处理图片对象  
> 会对对象本身产生影响  
> 性能上，该函数操作过程不产生数据拷贝  


#### 示例  
```lua
local pic = screen.image(462, 242, 569, 272)
pic = pic:binaryzation({
	{0x9D5D39, 0x0F1F26},
	{0xD3D3D2, 0x2C2C2D},
})
```
```lua
local pic = screen.image(462, 242, 569, 272)
pic = pic:binaryzation("9D5D39-0F1F26,D3D3D2-2C2C2D")
```

