### 比较两个版本号大小 \(**string\.compare\_version**\)


#### 声明
```lua
比较结果 = string.compare_version(版本号甲, 版本号乙)
```


#### 参数及返回值
- 版本号甲, 版本号乙
    - 文本型，需要比较大小的两个版本号
- 比较结果
    - 整数型，版本号甲大于版本号乙返回 1，版本号甲小于版本号乙返回 \-1，版本号相等返回 0


#### 说明
> 比较两个版本号字符串大小，遵守如下比较规则  
> 使用点 \(\.\) 或减号 \(\-\) 或空格隔开的纯数字值  
> 不同分隔符效果相等，多个分隔符连在一起被认为是一个分隔符    
> 权值随分段从左至右逐步降低  
> 遇到任何非法字符将截断不对比后面的内容  
> 如果段数不等，则不够段数用 '0' 补齐对比  
> 空字符串或非法串会被认为版本号是 '0'  
> 例如 '1\.1' 与 '1\.1\.0' 是相等的两个版本号  
> 例如 '1\.1' 与 '1\.1\-0' 是相等的两个版本号  
> 例如 '1\.1' 与 '1\-1' 是相等的两个版本号  
> 例如 '1\.0' 与 '1 0' \(1 和 0 之间有个空格\) 是相等的两个版本号  
> 例如 '1\.0' 大于 '0\.99999'  
> **这个函数在 1\.2\-3 版以上方可使用**  
> 这个函数在 1\.2\-10 版以上可以在 XUI 中使用  


#### 示例
```lua
assert(string.compare_version("", "") == 0)
assert(string.compare_version("1", "") == 1)
assert(string.compare_version("", "1") == -1)
assert(string.compare_version("1", "1") == 0)
assert(string.compare_version("1.0", "1") == 0)
assert(string.compare_version("1", "1.0") == 0)
assert(string.compare_version("1.", "1") == 0)
assert(string.compare_version("1", "1.") == 0)
assert(string.compare_version("1.", "1.0") == 0)
assert(string.compare_version("1.0", "1.") == 0)
assert(string.compare_version("1.0", "1.0") == 0)
assert(string.compare_version("1.0.0", "1.0.0") == 0)
assert(string.compare_version("1.1", "1.0") == 1)
assert(string.compare_version("1.0", "1.1") == -1)
assert(string.compare_version("1.1", "1.10") == -1)
assert(string.compare_version("1.2", "1.11") == -1)
assert(string.compare_version("1.1", "1.1.1") == -1)
assert(string.compare_version("1.2", "1.1.1") == 1)
assert(string.compare_version("1.0", "0.99999") == 1)
assert(string.compare_version("1.10.1", "1.10") == 1)
assert(string.compare_version("1.2-4", "1.2-3") == 1)
assert(string.compare_version("1.2-3", "1.2.3") == 0)
assert(string.compare_version("1.2-4", "1.2.3.0") == 1)
assert(string.compare_version("1.2-4", "1.2.3.10") == 1)
assert(string.compare_version("1.2-4", "1.2.30.10") == -1)
assert(string.compare_version("1.2-3", "1.2.4") == -1)
assert(string.compare_version("2.2", "1.2") == 1)
assert(string.compare_version("2.2", "10.2") == -1)
assert(string.compare_version("2..2", "2.2") == 0)
assert(string.compare_version("2.2.x.3", "2.2") == 0)
assert(string.compare_version("x", "") == 0)
```