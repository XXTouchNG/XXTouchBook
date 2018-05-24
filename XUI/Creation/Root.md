### 根

XUI 配置的根（顶层）为字典. 

|键|类型|描述|条件|
|---|---|---|---|
|title|字符串|导航栏标题|可选, 可本地化|
|header|字符串|主标题|可选, 可本地化|
|subheader|字符串|副标题|可选, 可本地化|
|items|包含字典的数组|组件列表|\-|
|theme|字典|界面主题样式|可选|
|stringsTable|字符串|多语言表名称, 默认为 `Localizable`|可选|

`items` 是组件列表数组, 所有的 *组件字典* 按顺序存放在该数组中, 即可在界面上显示. 关于 *组件字典* 的说明, 参见本文后续内容. 

`stringsTable` 仅当你需要为 XUI 启用多语言支持时使用, 标记为“可本地化”的属性, 将按照 iOS 国际化支持的方式, 在多语言表中解析出对应语言的内容进行显示.


``` lua
return {
    title = "一个脚本包";
    header = "脚本配置演示";
    subheader = "由 XXTouch 提供的优雅的脚本配置界面";
    defaults = "com.yourcompany.A-Script-Bundle";  -- 配置存储的位置，读取配置的时候需要用到
    theme = {
        style = "Grouped";  -- 组显示风格，如果为 Plain 则为平铺显示风格
    };
    items = {};  -- 该表中存放各个组件的字典
};
```

