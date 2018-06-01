## XPA 打包格式

XPP 脚本包目录可以打包为 XPA 格式进行分发, 分发到用户的客户端上进行安装, 还原为 XPP 脚本包目录.

XPA 格式实质上是 `.zip` 压缩文件, 其内部目录结构非常简单:

```
Demo.xpa (zipped)
    - Payload
        - A-Script-Bundle.xpp
```

你只需要将准备好的 `.xpp` 脚本包放置于一个名为 `Payload` 的空白目录下, 并对 `Payload` 目录压缩为 `.zip` 压缩文件, 并将该压缩文件的后缀名更改为 `.xpa` 即可.

