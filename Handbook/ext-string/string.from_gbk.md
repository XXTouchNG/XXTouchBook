### 将 GBK 编码的文本转成 UTF\-8 编码的文本 \(**string\.from\_gbk**\)


#### 声明
```lua
可以直接用的文本 = string.from_gbk(GBK编码的文本)
```


#### 参数及返回值
> - GBK编码的文本
>   - 文本型，需要转换成 UTF\-8 编码的 GBK 编码文本
> - 可以直接用的文本
>   - 字符串型 或 nil，返回 UTF\-8 编码的文本，如果编码错误导致转换无法完成，返回 nil


#### 说明
> 将 GBK 编码的文本转成 UTF\-8 编码的文本，转换返回乱码字符串可能是编码不正确，但是能完成编码对应转换，这不是函数的问题  
> 更复杂的编码转换需求请参考 [luaiconv (编码转换库) ](/Handbook/open-source/luaiconv.md)  
> 注：GBK 编码包含 GB2312 编码，所以如果需要 GB2312 编码的文本转换也是这个函数  


#### 示例  
```lua
-- 中文编码 中文标准编码 国标扩展编码 GB2312
gbkstr = '\x58\x58\x54\x6f\x75\x63\x68\x20\xba\xdc\xc7\xbf'
--
sys.alert(gbkstr)                  -- GBK 编码的字符串无法显示
sys.alert(string.from_gbk(gbkstr)) -- 输出 "XXTouch 很强"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  
**说明**：在 Lua 源码中，字符串中 `\x` 开头，后面跟两位 16 进制数表示以该数字编码的单个字节。例如：`\x58` 表示 `X` 这个字符，可打印字符部分参考[《ASCII 编码》](https://baike.baidu.com/item/ASCII/309296)  

