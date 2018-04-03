## 如何阅读本手册

- 入门需要拥有 Lua 基础，可以参考[《Lua 5.3 中文手册》](https://cloudwu.github.io/lua53doc/manual.html)及[《Lua 5.3 函数参考》](https://www.zybuluo.com/havonz/note/564563) 
- 示例  代码中使用 0x 开头的数字为 16 进制数 \( [什么是 16 进制数?](https://baike.baidu.com/item/%E5%8D%81%E5%85%AD%E8%BF%9B%E5%88%B6%E6%95%B0/5697828) \)
- 参数描述中可选参数使用中括号包围
- 参数或返回值如果是表型固定结构值，则使用大括号表示表型结构
- 类型描述中 文本型 和 字符串型 都是 Lua 的 string 类型，但 文本型 一般是指可以打印的明文文字
- 章或节用叹号 \( \! \) 开头的说明这个函数或者这个模块的函数包含隐式 **让出** (在这个函数返回之前，其它的 [线程](/Handbook/thread/README.md) 可能会得到运行机会) 
- 若无额外说明，手册内示例代码均不处理边界情况，不应该直接复制到自己的脚本中用

---

[XXTouch-iOS-开发手册旧版文档](https://www.xxtouch.com/docs/dev.bak.html)  
[XXTouch-iOS-开发手册离线档-20180404.zip](http://xxtouch2.oss-cn-hangzhou.aliyuncs.com/XXTouch-iOS-%E5%BC%80%E5%8F%91%E6%89%8B%E5%86%8C%E7%A6%BB%E7%BA%BF%E6%A1%A3-20180404.zip)  
