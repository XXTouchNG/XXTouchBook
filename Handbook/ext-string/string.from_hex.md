### 从 16 进制文本转回 (**string\.from\_hex**)


#### 声明
```lua
数据内容 = string.from_hex(16进制文本)
```


#### 参数及返回值
> - 16进制文本
>   - 文本型，需要转换成字符串的 16 进制文本
> - 数据内容
>   - 字符串型 或 nil，返回字符串，如果输入参数不是 16 进制文本，则返回 nil


#### 说明
> string\.to\_hex 的反函数，将可打印的 16 进制文本转换成字符串 (或二进制数据块)  


#### 示例  
```lua
sys.alert(string.from_hex('e4b880e4ba9be695b0e68dae'))
-- 输出 "一些数据"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

#### 更多示例  
[`本章最后`](/Handbook/ext-string/samples.md)  

