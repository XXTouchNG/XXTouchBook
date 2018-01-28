### 对明文脚本内容进行语法检测

- 接口描述

```
POST /check_syntax HTTP/1.1

明文脚本内容
```

- 可能的返回

```json
{"code":0,"message":"语法检测已通过"}
```
```json
{"code":2,"message":"脚本有语法错误","detail":"具体的错误信息"}
```
