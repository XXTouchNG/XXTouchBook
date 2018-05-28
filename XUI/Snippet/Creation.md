### 创建

通常，「代码片段」需要直接返回一个表，如：

```lua
return {
    name = '测试片段';  -- 代码片段名称
    description = '用于测试各选择器的功能';  -- 代码片段描述
    arguments = {  -- 代码片段选择器列表
        {  -- 选择器 1
            type = 'app',  -- 选择器类型
            title = '选择应用',  -- 选择器标题
            subtitle = '请选择一个应用',  -- 选择器副标题
            default = 'com.xxtouch.XXTExplorer',  -- 选择器默认值
        },
        {  -- 选择器 2
            type = 'loc',
            title = '选择地理位置',
            subtitle = '请随便选择一个地理位置',
            default = xui.get("com.darwindev.XXTExplorer", "location1"),
            -- 代码片段 .snippet 中可以使用 .xui 支持的所有 API
        },
        {  -- 选择器 3

        },
        -- ...
    };
    generator = function (...)  -- 可变参数生成器
        -- 处理参数并返回生成的结果
        local result
        return result
    end;
}
```


#### 根层级

|键|类型|描述|
|---|---|---|
|name|字符串|代码片段名称|
|description|字符串|代码片段描述|
|arguments|数组|代码片段选择器列表|
|generator|函数|代码片段生成器|
|output|字符串|代码片段独立输出文件名|

`name` 和 `description` 分别为代码片段的显示名称与显示描述, 会显示在文件管理器、代码片段的入口处。

`arguments` 为包含了一个或多个 **选择器参数字典** 的数组。App 将根据该数组中约定的选择器顺序，创建出一个选择器队列，依次让用户进行选择操作。用户完成选择器队列后，App 会将各选择器的返回值作为可变传入参数，依次传入生成器 `generator` 并调用它，最后将 `generator` 的返回值返回给调用方。

代码片段 `.snippet` 是可以独立使用的。如果需要允许它独立使用，可为其设置 `output` 字段，`generator` 生成的结果文本将保存到同一目录下 `output` 所标识的文件中。


#### 选择器参数字典

|键|类型|描述|
|---|---|---|
|type|字符串|选择器类型|
|title|字符串|选择器标题, 显示在选择器页面下方|
|subtitle|字符串|选择器副标题, 显示在选择器页面下方|
|default|基本类型|选择器默认值|

有关各类型选择器 **选择器参数字典** 的详细介绍，参见后文内容。


#### 在 XUI 中使用

如果代码片段 .snippet 在 XUI 的 [TitleValue](/XUI/Modules/TitleValue.html) 组件中使用，即可从 XUI 中唤起选择器队列，并将结果保存到 XUI 组件的配置项中。同时该 .snippet 可调用 XUI 支持的所有 API，如 `xui.get`/`xui.set`/`xpp.bundle_path` 等。


#### 在代码编辑器中使用

将代码片段 .snippet 放置到主目录的 `snippets` 目录中，即可被 App 的代码编辑器所调用。轻按键盘工具类右上角的星形按钮，即可快速生成代码片段，并插入到编辑的代码中。


#### 作为独立文件使用

为代码片段 .snipper 设置 `output` 字段，并将代码片段放置在主目录的 `lua/scripts` 目录中，即可从 App 中直接点击，开始选择器队列，`generator` 生成的结果文本将保存到同一目录下 `output` 所标识的文件中。

