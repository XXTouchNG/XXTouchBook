### Image / AnimatedImage 图片 / 动态图片

此组件在界面上显示图片. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|path|字符串|本地图片名称|\-|

此组件必须设定通用属性 **height**,  以确定图片高度, 宽度将保持比例自动适应. 

**AnimatedImage** 组件支持 GIF 动态图. 

``` lua
{
    cell = "Image";
    path = "res/bd_logo1_31bdc765.png";
    height = 128.0;
};
```

![QQ20170918-022558.png-31kB](Image_AnimatedImage/QQ20170918-022558.png)
