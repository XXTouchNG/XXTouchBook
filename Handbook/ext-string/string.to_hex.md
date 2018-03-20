### 转成 16 进制文本 \(**string\.to\_hex**\)


#### 声明
```lua
16进制文本 = string.to_hex(数据内容)
```


#### 参数及返回值
> - 数据内容
>   - 字符串型，需要转换成 16 进制的字符串
> - 16进制文本
>   - 文本型，返回 16 进制文本


#### 说明
> 将字符串 (或二进制数据块) 转换成可打印的 16 进制文本  


#### 示例  
```lua
-- 示例   1：
sys.alert(string.to_hex('一些数据'))
-- 输出 "e4b880e4ba9be695b0e68dae"
--
-- 示例   2：
sys.alert((string.to_hex('一些数据'):gsub('(..)', '\\x%1')))
-- 输出 "\xe4\xb8\x80\xe4\xba\x9b\xe6\x95\xb0\xe6\x8d\xae"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 更多示例  
[`本章最后`](/Handbook/ext-string/samples.md)  

