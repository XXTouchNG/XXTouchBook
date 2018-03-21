### 计算字符串的 md5 哈希值 \(**string\.md5**\)


#### 声明
```lua
哈希值 = string.md5(数据内容)
```


#### 参数及返回值
- 数据内容
    - 字符串型，原始字符串
- 哈希值
    - 文本型，返回字符串的 md5 哈希值的 16 进制文本


#### 说明
> 计算字符串 (或二进制数据块) 的 md5 校验值  


#### 示例  
```lua
sys.alert(string.md5('XXTouch 真棒')) -- 输出 "4921dbf380df452fa959dc47cef30e4b"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 更多示例  
[`本章最后`](/Handbook/ext-string/samples.md)  

