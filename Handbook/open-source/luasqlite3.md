### LuaSQLite3 模块 (luasqlite3)


#### [LuaSQLite3 手册地址](http://lua.sqlite.org/index.cgi/doc/tip/doc/lsqlite3.wiki)

#### 引用示例
```lua
local sqlite3 = require('sqlite3')
```

#### 读取短信示例
```
local sqlite3 = require('sqlite3')
--
local db = sqlite3.open('/private/var/mobile/Library/SMS/sms.db')
--
local handle_map = {}
local messages = {}
--
db:exec('select handle_id, text, date from message', function (ud, ncols, values, names)
	messages[#messages + 1] = {
		handle_id = values[1],
		text = values[2],
		date = os.date("%Y-%m-%d %H:%M:%S", os.time({year = 2001, month = 1, day = 1}) + tonumber(values[3]))
	}
	return sqlite3.OK
end)
--
db:exec('select ROWID, id from handle', function (ud, ncols, values, names)
	handle_map[values[1]] = values[2]
	return sqlite3.OK
end)
--
for _,v in ipairs(messages) do
	v.id = handle_map[v.handle_id]
	v.handle_id = nil
end
--
local results = {}
for _,v in ipairs(messages) do
	results[#results + 1] = string.format("[%s](%s):%s", v.date, v.id, v.text)
end
--
sys.toast(table.concat(results, '\n'))
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)

