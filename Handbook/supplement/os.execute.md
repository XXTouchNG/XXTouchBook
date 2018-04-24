### 命令执行相关示例代码 \(**os\.execute**\)


#### 重启设备
```lua
os.execute('reboot')
```

#### 注销设备
```lua
os.execute('killall -9 SpringBoard backboardd')
```

#### 重建图标缓存
```lua
os.execute('su mobile -c uicache')
```

#### 创建脚本日志符号链接到脚本目录
```lua
os.execute('ln -s /private/var/mobile/Media/1ferver/log/sys.log /private/var/mobile/Media/1ferver/lua/scripts/脚本日志.txt')
```


#### 常用操作封装
```lua
--[[
    删除文件 文件删除 删除目录 重命名文件 文件重命名 目录重命名 重命名目录 文件夹重命名 重命名文件夹 移动文件 文件移动 移动目录 目录移动 移动文件夹 文件夹移动 拷贝文件 文件拷贝 复制文件 文件复制 新建目录 创建目录 拷贝目录 目录拷贝 复制目录 目录复制 新建文件夹 创建文件夹 拷贝文件夹 文件夹拷贝 复制文件夹 文件夹复制
    以上是关键词，便于在手册中搜索到此处
--]]

local function sh_escape(path) -- XXTouch 原创函数，未经 XXTouch 许可，可以用于商业用途
	path = string.gsub(path, "([ \\()<>'\"`#&*;?~$])", "\\%1")
	return path
end

function fdelete(path) -- 删除一个文件或目录 (递归删除子项) 
    assert(type(path)=="string" and path~="", 'fremove 参数异常')
    os.execute('rm -rf '..sh_escape(path))
end

function frename(from, to) -- 重命名 (移动) 一个文件或目录
    assert(type(from)=="string" and from~="", 'frename 参数 1 异常')
    assert(type(to)=="string" and to~="", 'frename 参数 2 异常')
    os.execute('mv -f '..sh_escape(from).." "..sh_escape(to))
end

function fcopy(from, to) -- 拷贝一个文件或目录 (递归拷贝子项) 
    assert(type(from)=="string" and from~="", 'fcopy 参数 1 异常')
    assert(type(to)=="string" and to~="", 'fcopy 参数 2 异常')
    os.execute('cp -rf '..sh_escape(from).." "..sh_escape(to))
end

function mkdir(path) -- 新建一个目录 (递归创建子目录) 
    assert(type(path)=="string" and path~="", 'mkdir 参数异常')
    os.execute('mkdir -p '..sh_escape(path))
end

function openurl(url) -- 跳转到一个链接
    assert(type(url)=="string" and url~="", 'openurl 参数异常')
    os.execute('uiopen '..sh_escape(url))
end

-- 以上是封装好的函数，拷贝到自己脚本前就可以用。
-- 以下是使用方式 (不用拷贝) 

-- 删除 /var/mobile/1.png
fdelete("/var/mobile/1.png")

-- 将 /var/mobile/2.png 重命名为 /var/mobile/1.png
frename("/var/mobile/2.png", "/var/mobile/1.png")

-- 将 /var/mobile/1.png 移动到 /var/mobile/Media/1ferver/res/3.png
frename("/var/mobile/1.png", "/var/mobile/Media/1ferver/res/3.png")

-- 将 /var/mobile/1.png 拷贝到 /var/mobile/Media/1ferver/res/4.png
fcopy("/var/mobile/1.png", "/var/mobile/Media/1ferver/res/4.png")

-- 建立 /var/mobile/1/2/3/4/ 目录
mkdir("/var/mobile/1/2/3/4")

-- 跳转到 www.google.com
openurl("http://www.google.com")

```

