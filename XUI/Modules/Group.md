### Group 分组

此组件在界面上显示一个分组区域, 包含到下一个分组组件之间的所有组件. 通常用于功能划分, 也经常用于对某一组件的补充描述. 

|键|类型|描述|必选|默认值|最低版本需求|
|---|---|---|---|---|---|
|label|字符串|分组标题|可本地化|`""`|\-|
|footerText|字符串|在当前组之后添加一行小字|可本地化|`""`|\-|

此组件不支持 `icon`/`height`.


#### 示例

``` lua
-- 分组组件
{
    cell = "Group";
    label = "开关";  -- 分组标题
    footerText = "这是一组开关";  -- 分组底部描述
};
-- 下面的两个组件是两个开关，会包含在该分组内
{
    default = true;
    label = "启用某功能";
    cell = "Switch";
    key = "enabled";  -- 该项存储的键，读取该键配置时需要用到
};
{
    default = false;
    label = "带图标的开关";
    cell = "Switch";
    key = "enabled1";  -- 该项存储的键，读取该键配置时需要用到
    icon = "res/16.png";  -- 其它有些组件也可以设置图标
    readonly = true; -- 所有组件都支持禁用
};
-- 另一分组
{
    cell = "Group";
    label = "另一组";
};
-- ...
```

![XUI-Group.png](XUIScreenshots/XUI-Group.png)

