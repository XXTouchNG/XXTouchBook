### 去除掉文本前的 UTF8\-BOM (**string\.strip\_utf8\_bom**)


#### 声明
```lua
处理后文本 = string.strip_utf8_bom(处理前文本)
```


#### 参数及返回值
> - 处理前文本
>   - 文本型，需要剔除掉 UTF8\-BOM 字符的文本
> - 处理后文本
>   - 文本型，返回已经剔除掉 UTF8\-BOM 字符的文本


#### 说明
> UTF8\-BOM 的表现形式是文档开头的三个看不见的字符 `"\xEF\xBB\xBF"`  (在 Lua 源码中，字符串中 `\x` 开头，后面跟两位 16 进制数表示以该数字编码的单个字节。例如：`\x58` 表示 `X` 这个字符，可打印字符部分参考[《ASCII 编码》](https://baike.baidu.com/item/ASCII/309296))  
> **这个函数在 1\.1\.3\-1 版以上方可使用**  


#### 示例  
```lua
txt = "\xEF\xBB\xBFXXTouch"
sys.alert(txt..', '..#txt) -- 输出 "XXTouch, 10"
--
txt = string.strip_utf8_bom(txt)
sys.alert(txt..', '..#txt) -- 输出 "XXTouch, 7"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 小知识  
> UTF\-8 **不需要** BOM，尽管 Unicode 标准允许在 UTF\-8 中使用 BOM。    
所以不含 BOM 的 UTF\-8 才是标准形式，在 UTF\-8 文件中放置 BOM 主要是微软的习惯 (顺便提一下：把带有 BOM 的小端序 UTF\-16 称作「Unicode」而又不详细说明，这也是微软的习惯) 。  
BOM (byte order mark) 是为 UTF\-16 和 UTF\-32 准备的，用于标记字节序 (byte order) 。微软在 UTF\-8 中使用 BOM 是因为这样可以把 UTF\-8 和 ASCII 等编码明确区分开，但这样的文件在 Windows 之外的操作系统里会带来问题。 ([百度搜索 UTF8-BOM 查看更多资料](https://www.baidu.com/s?wd=UTF8-BOM))  

