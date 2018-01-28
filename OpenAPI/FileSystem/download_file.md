### 跳转下载一个文件

- 接口描述

```
GET /download_file?filename=[UTF8-URIEncoded 文件的路径]
```

- 可能的返回

200
```
[文件二进制内容]
```
400
```json
{"code":4,"message":"文件或目录不存在"}
```

- 说明
    - 这个接口在 1.1.2-6 版以上方可使用
    - 该接口文件操作的根目录为 ```/var/mobile/Media/1ferver/```
    - 该接口支持绝对路径，路径第一个字符是 / 则判定为绝对路径
