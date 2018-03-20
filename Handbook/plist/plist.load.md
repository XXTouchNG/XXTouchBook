### 读取属性表数据 \(**plist\.load**\)


#### 声明
```lua
关联表 = plist.load(属性表数据)
```


#### 参数及返回值
- 属性表数据
    - 字符串型，需要读取的属性表数据
- 关联表
    - 表型 或 nil，加载成功则返回属性表数据的树形结构对应的一个表，否则返回 nil  


#### 说明
> plist\.dump 的反函数，将属性表数据转换成表  
> 非通用数据类型值不支持读取，会被忽略  
> **这个函数在 1\.2\-3 版以上方可使用**  


#### 示例
```lua
-- 示例 1
local jtmp = plist.load([[
{
    arr = (
        46,
        99,
        7,
    );
    dict = {
        a = 55;
        b = 65;
        c = 9;
    };
}
]])
sys.alert(jtmp.arr[1]) -- 输出 46
sys.alert(jtmp.dict.c) -- 输出 9
--
-- 示例 2
local xtmp = plist.load([[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>arr</key>
    <array>
        <string>46</string>
        <string>99</string>
        <string>7</string>
    </array>
    <key>dict</key>
    <dict>
        <key>a</key>
        <string>55</string>
        <key>b</key>
        <string>65</string>
        <key>c</key>
        <string>9</string>
    </dict>
</dict>
</plist>
]])
sys.alert(xtmp.arr[1]) -- 输出 46
sys.alert(xtmp.dict.c) -- 输出 9
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)