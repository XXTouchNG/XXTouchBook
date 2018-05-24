### About 关于

此组件在界面上显示一个关于区域.

|键|类型|描述|必选|默认值|最低版本需求|
|---|---|---|---|---|---|
|icon|字符串|关于图标的相对路径|\-|`""`|\-|

此组件需要设定通用属性 `label`/`value`, 分别显示为标题/副标题. 


#### 主题

|主题键|类型|描述|
|---|---|---|
|tintColor|*颜色*|标题颜色|
|labelColor|*颜色*|副标题颜色|


#### 示例

```lua
{
    cell = "About";
    imagePath = "res/xxt-icon.png";  -- 中间图标
    label = "XUI 示例\nv1.2-10";  -- 标题
    value = "适用于 XXTouch v1.2-10 及以上版本, 示例内容仅供参考, 请勿直接用于生产环境.\n2016-2018 (c) XXTouch Team.\nAll Rights Reserved.";  -- 副标题
};
```

![XUI-About.png](XUIScreenshots/XUI-About.png)

