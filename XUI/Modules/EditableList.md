### EditableList 可编辑列表

此组件在界面上显示一个子菜单项, 用于链接一个可编辑的字符串列表. 

|键|类型|描述|必选|默认值|最低版本需求|
|---|---|---|---|---|---|
|footerText|字符串|显示在列表选项下方的小字|可本地化|`""`|\-|
|itemFooterText|字符串|显示在添加新项目页面下方的小字|可本地化|`""`|\-|
|maxCount|整数|最多选择项目数|\-|`INT_MAX`|\-|
|validationRegex|字符串|用于验证字符串条目的正则表达式|\-|`nil`|1.2-10|

修改或添加字符串条目时, 若字符串无法通过正则表达式 `validationRegex` 验证, 则无法保存当前条目.

|返回类型|描述|
|---|---|
|包含字符串的数组|列表内容|


#### 主题

|主题键|类型|描述|
|---|---|---|
|textColor|颜色|文字颜色|
|caretColor|颜色|光标颜色|
|placeholderColor|颜色|占位符颜色|


#### 示例

```lua
{
    maxCount = 10;
    cell = "EditableList";
    label = "可编辑列表";
    key = "list-4";
    default = {
        "Default";
    };
    validationRegex = "^[0-9a-zA-Z]+$";
};
```

![XUI-EditableList-1.png](XUIScreenshots/XUI-EditableList-1.png)

![XUI-EditableList-2.png](XUIScreenshots/XUI-EditableList-2.png)

