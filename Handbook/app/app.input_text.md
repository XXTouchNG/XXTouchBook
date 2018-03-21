### 输入文字 \(**app\.input\_text**\)


#### 声明
```lua
app.input_text(文本内容)
```


#### 参数及返回值
- 文本内容
    - 文本型，需要输入的文字，支持退格键 `"\\b"`


#### 说明
> 在 App 中弹出键盘的情况下输入文字  
> 已知的无法输入的位置有 AppStore 的评论  
> 如果遇到无法作用的情况可以参考 [sys.input_text](/Handbook/sys/sys.input_text.md) 或许能解决  


#### 示例  
```lua
-- 示例 1：
app.input_text("嘿嘿嘿") -- 弹出键盘后可以输入文字
--
-- 示例 2：
app.input_text("\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b") -- 删除文本框原来的内容
```
