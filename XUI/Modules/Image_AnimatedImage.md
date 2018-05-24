### Image / AnimatedImage 图片 / 动态图片

此组件在界面上显示图片, **AnimatedImage** 组件支持 GIF 动态图, 其它与 **Image** 组件一致.

|键|类型|描述|必选|默认值|最低版本需求|
|---|---|---|---|---|---|
|path|字符串|本地图片名称|*|\-|\-|

此组件必须设定通用属性 `height`, 以确定图片高度, 宽度将保持比例自动适应. 


#### 示例

``` lua
{
    cell = "Image";
    path = "res/bd_logo1_31bdc765.png";
    height = 128.0;
};
```

![XUI-Image.png](XUIScreenshots/XUI-Image.png)

