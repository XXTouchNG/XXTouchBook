### Image / AnimatedImage 图片 / 动态图片

此组件在界面上显示图片.

`Image` 组件仅支持本地静态图片, 如 `.png` 和 `.jpg` 等. `AnimatedImage` 组件支持 `.gif` 动态图.

|键|类型|描述|必选|默认值|最低版本需求|
|---|---|---|---|---|---|
|path|字符串|本地图片名称, 或在线图片的 URL|*|\-|\-|

此组件必须设定通用属性 `height`, 以确定图片高度, 宽度将保持比例自动适应.

`AnimatedImage` 在 XXTouch v1.2-11 及更高版本中, 还支持加载在线静态或动态图片, 并且在加载完成后进行缓存. 在 `path` 中填写在线图片的 URL 即可 (仅支持 http/https 协议).


#### 示例

``` lua
{
    cell = "Image";
    path = "res/bd_logo1_31bdc765.png";
    height = 128.0;
};
{
    cell = "AnimatedImage";
    path = "https://www.baidu.com/img/540%20258_c622d80176946df7f7b8d1997edf57d4.gif";
    height = 128.0;
};
```

![XUI-Image.png](XUIScreenshots/XUI-Image.png)

