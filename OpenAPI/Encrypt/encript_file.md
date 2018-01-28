### 加密一个设备上的脚本文件

- 接口描述

```
POST /encript_file HTTP/1.1

{
    "no_strip": true|false,             // 是否保留调试信息，默认 false，也就是不保留调试信息
    "in_file": "lua/scripts/xxx.lua",   // 输入文件名，可以为绝对路径
    "out_file": "lua/scripts/xxx.xxt",  // 输出文件名，可以为绝对路径
}
```

- 可能的返回

```json
{"code":0,"message":"操作成功"}
```
```json
{"code":2,"message":"脚本有语法错误","detail":"具体的错误信息"}
```
```json
{"code":4,"message":"文件或目录不存在"} // 输入文件无法被读取
```
```json
{"code":4,"message":"无法写入文件"}
```
```json
{"code":8,"message":"参数错误"}
```
```json
{"code":13,"message":"另外一项加密正在进行..."}
```

- 说明
    - 这个接口在 1.1.2-6 版以上方可使用
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
