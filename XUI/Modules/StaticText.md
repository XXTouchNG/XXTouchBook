### StaticText 静态文本框

此组件在界面上显示一段静态文本, 即其 label 属性中的文本. 

|   键   |   类型   |   描述   |   条件   |
|--------|----------|----------|----------|
|alignment|字符串|对齐方式|可选|
|selectable|布尔型|是否允许选择文本|可选|

| alignment | 描述 |
|--------|------|
|Left|左对齐 (默认)|
|Center|居中|
|Right|右对齐|
|Natural|自然对齐|
|Justified|两边对齐|

*暂不支持更改文本字体、尺寸等属性*

*此组件不支持 **label/icon/height***

``` lua
{
    cell = "StaticText";
    label = "This specifier uses the label key as text content. Dynamic height of this cell is enabled.";
};
```

![QQ20170914-192523.png-30.6kB](StaticText/QQ20170914-192523.png)
