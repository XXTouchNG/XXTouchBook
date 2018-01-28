### 加密一段明文脚本并返回下载 URI

- 接口描述

```
POST /encript HTTP/1.1
args: {"no_strip":true|false,"filename":"UTF8-URIEncoded 文件名"}

[脚本内容]
```

- 可能的返回

    - 成功返回状态码 ```200``` 并附带内容：

        ```json
        {
            "code":0,
            "message":"操作成功",
            "download_uri":"/download_encript", // 可以通过跳转到这个 URI 来下载加密好的文件
        }
        ```
        
    - 失败返回状态码 ```400``` 并附带内容：

        ```json
        {"code":2,"message":"操作失败"}
        ```
        ```json
        {"code":2,"message":"脚本有语法错误","detail":"具体的错误信息"}
        ```
        ```json
        {"code":13,"message":"另外一项加密正在进行..."}
        ```
        
- 说明
    - 这个接口在 1.1.2-6 版以上方可使用
    - ```args``` 参数说明：
        - ```no_strip``` 当这个参数为 true 的时候，则保留调试信息加密（也就是报错会有行信息）。默认为 false
        - ```filename``` 返回的 URI 跳转之后供下载的文件名，注意要 URIEncode 处理
