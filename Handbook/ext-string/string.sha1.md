### 计算字符串的 sha1 哈希值 \(**string\.sha1**\)


#### 声明
```lua
哈希值 = string.sha1(数据内容)
```


#### 参数及返回值
> - 数据内容
>   - 字符串型，原始字符串
> - 哈希值
>   - 文本型，返回字符串的 sha1 哈希值的 16 进制文本


#### 说明
> 计算字符串 (或二进制数据块) 的 sha1 校验值  


#### 示例  
```lua
sys.alert(string.sha1('XXTouch 真棒')) -- 输出 "a959c48d904c1075c7ddfdb1fda49effb2142493"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 更多示例  
[`本章最后`](/Handbook/ext-string/samples.md)  

