### 扩展 string 示例代码


```lua
-- 哈希校验
local str = "sozereal"
sys.alert('"'..str..'" 的 16 进制编码为: <'..str:to_hex()..'>')
sys.alert('<'..str:to_hex()..'> 转换成明文为: "'..str:to_hex():from_hex()..'"')
sys.alert('"'..str..'" 的 MD5 值是: '..str:md5())
sys.alert('"'..str..'" 的 SHA1 值是: '..str:sha1())
local binstr = "\0\1\2\3\4\5"
sys.alert('<'..binstr:to_hex()..'> 的 MD5 值是: '..binstr:md5())
sys.alert('<'..binstr:to_hex()..'> 的 SHA1 值是: '..binstr:sha1())
--
-- 数据加/解密
local msg = "\5\4\3\2\1\0"
local key = "sozereal"
local emsg = msg:aes128_encrypt(key)
local emsgb64 = emsg:base64_encode()
sys.alert('二进制数据<'..msg:to_hex()..'> \n 使用 AES128 算法 密钥 "'..key..'" 加密 值是: <'..emsg:to_hex()..'> \n base64 串为 "'..emsgb64..'"')
local tmp = emsgb64:base64_decode()
msg = tmp:aes128_decrypt(key)
sys.alert('"'..emsgb64..'" base64 解码后的数据为 <'..tmp:to_hex()..'> \n使用 AES128 算法 密钥 "'..key..'" 解密 值是: <'..msg:to_hex()..'>')
--
-- 字符串小工具
str = "  哈哈,he he,1,3,6  "
new = str:split(",") --将字符串str按照 `,` 分割并返回一个表
sys.alert(new[2])
sys.alert(str:rtrim()) -- 结果 "  哈哈,he he,1,3,6" ,删除字符串尾部的空白字符
sys.alert(str:ltrim()) -- 结果 "哈哈,he he,1,3,6  " ,删除字符串首部的空白字符
sys.alert(str:trim()) -- 结果 "哈哈,he he,1,3,6"    ,删除字符串首尾的空白字符
sys.alert(str:atrim()) -- 结果 "哈哈,hehe,1,3,6"    ,删除字符串所有的空白字符
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

