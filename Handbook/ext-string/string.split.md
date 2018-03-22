### 用分隔符规则分割一个字符串 \(**string\.split**\)


#### 声明
```lua
分割好的文本数组 = string.split(待分割文本, 分隔符)
```


#### 参数及返回值
- 待分割文本
    - 文本型，需要分割的字符串
- 分隔符
    - 文本型，分隔符
- 分割好的文本数组
    - 表型，分割后的字符串片段按顺序排列于此表


#### 说明
> 用分隔符规则分割一个字符串  
> 字符串分割 文本分割 字符串分割 文本切割 文本分段  


#### 示例  
```lua
-- 示例   1 (分割账号密码) ：
t = string.split('lfue6841214----123456', '----')
sys.alert('账号是：'..t[1])
--
-- 示例   2 (取文本中间部分，两个 # 之间的文字) ：
t = string.split('您好，验证码是#4937#，15分钟内有效。【爆炸科技】', '#')
sys.alert('验证码是：'..t[2])
--
-- 示例   3 (复杂点的取文本中间部分) ：
t = string.split('您好，验证码是4937，15分钟内有效。【爆炸科技】', '验证码是')
t = string.split(t[2], '，15分钟')
sys.alert('验证码是：'..t[1])
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 封装示例 1  
```lua
-- 取文本中间部分的封装 (找不到匹配返回 nil) 
function str_middle(str, sep1, sep2)
    assert(type(str) == 'string', '`str_middle` 第 #1 参数必须是字符串')
    assert(type(sep1) == 'string', '`str_middle` 第 #2 参数必须是字符串')
    assert(type(sep2) == 'nil' or type(sep2) == 'string', '`str_middle` 第 #3 参数可选，但必须是字符串')
    local t = string.split(str, sep1)
    if not sep2 or sep1==sep2 then
        return t[2]
    else
        if t[2] == nil then
            return nil
        else
            t = string.split(t[2], sep2)
            if t[2] == nil then
                return nil
            else
                return t[1]
            end
        end
    end
end
-- 以上封装可复制到脚本中用
--
r = str_middle('您好，验证码是4937，15分钟内有效。【爆炸科技】', '码是', '，15分')
sys.alert('验证码是：'..r)
-- 输出 "验证码是：4937"
--
r = str_middle('您好，验证码是#8346#，15分钟内有效。【爆炸科技】', '#')
sys.alert('验证码是：'..r)
-- 输出 "验证码是：8346"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  


#### 封装示例 2  
```lua
-- 取绝对路径的文件名
function strip_dirname(path)
	local d = string.split(path, '/')
	return d[#d]
end
--
-- 取绝对路径的目录
function strip_filename(path)
	local d = string.split(path, '/')
	d[#d] = nil
	return table.concat(d, '/')
end
--
sys.alert(strip_dirname("/private/var/mobile/Media/1ferver/lua/scripts/1.lua"))
-- 输出 "1.lua"
--
sys.alert(strip_filename("/private/var/mobile/Media/1ferver/lua/scripts/1.lua"))
-- 输出 "/private/var/mobile/Media/1ferver/lua/scripts"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[table.concat](http://cloudwu.github.io/lua53doc/manual.html#pdf-table.concat)



#### 可能相关的示例 (将中英混合的字符串爆开成一个个的字符)  
```lua
-- 这不是使用 string.split 实现的例子
function string_explode(str)
	local ret = {}
	for p, c in utf8.codes(str) do
		ret[#ret + 1] = utf8.char(c)
	end
	return ret
end
--
local t = string_explode('你好，XXTouch')
sys.alert(table.concat(t, '/')) -- 输出 "你/好/，/X/X/T/o/u/c/h"
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[table.concat](http://cloudwu.github.io/lua53doc/manual.html#pdf-table.concat)、[utf8.char](http://cloudwu.github.io/lua53doc/manual.html#pdf-utf8.char)、[utf8.codes](http://cloudwu.github.io/lua53doc/manual.html#pdf-utf8.codes)  


#### 更多示例  
[`本章最后`](/Handbook/ext-string/samples.md)  

