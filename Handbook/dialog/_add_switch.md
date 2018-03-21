### 给对话框加上一个开关 \(**:add\_switch**\)


#### 声明
```lua
对话框对象 = 对话框对象:add_switch(开关标签 [, 开关默认状态 ])
```


#### 参数及返回值
- 开关标签
    - 文本型，开关左侧标签显示的文本
- 开关默认状态
    - 布尔型，可选参数，开关的开启状态，默认 false  (关) 
- 对话框对象
    - 对话框，返回对话框本身
- 使用 :show\(\) 返回类型
    - 布尔型，返回这个开关被开启的状态


#### 说明
> 给对话框加上一个开关


#### 示例  
```lua
local c, s = dialog():add_switch('一个开关', false):show()
sys.alert(s["一个开关"])
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 完整示例
[`本章结尾 :show() `](/Handbook/dialog/_show.md)  

