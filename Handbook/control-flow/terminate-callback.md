### 脚本被终止时执行一些代码的方法 (terminate-callback)


#### 说明  
> 这不是一个函数  
> 而是利用 Lua 的垃圾回收机制实现的，用于在脚本结束 (或被结束) 时执行一些代码的方法  
> > **原理** ：定义一个全局对象 (表型值) ，将其 **析构函数** 设为一个函数，当 Lua 虚拟机结束之时，所有 Lua 对象 (也包括你定义的这个) 的 **析构函数** 会被调用。Lua 中的 **析构函数** 是指对象的[ \_\_gc 元方法](http://cloudwu.github.io/lua53doc/manual.html#2.4)  


#### 简易示例  
```lua
-- 关键词 脚本终止回调 脚本结束回调
随便取个变量名 = {}
setmetatable(随便取个变量名, {
	__gc = function(...)
		sys.toast('被终止了！')
		sys.msleep(500)
	end
})
--
while (true) do
	sys.toast("现在可尝试手动结束脚本\n\n"..os.date("%Y-%m-%d %H:%M:%S"))
	sys.msleep(1000)
end
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[setmetatable](http://cloudwu.github.io/lua53doc/manual.html#pdf-setmetatable)


#### 完整封装示例  
```lua
function atexit(callback) -- 参数为一个函数，使用 atexit(一个函数) 注册一个函数在脚本结束时执行，建议不要耗时太长
	____atexit_guard____ = ____atexit_guard____ or {}
	if type(____atexit_guard____) == 'table' then
		if not getmetatable(____atexit_guard____) then
			setmetatable(____atexit_guard____, {
				__gc = function(self)
					if type(self.callback) == 'function' then
						pcall(self.callback)
					end
				end
			})
		end
		____atexit_guard____.callback = callback
	else
		error('别用 `____atexit_guard____` 命名你的变量。')
	end
end
-- 以上代码可拷贝到你的脚本的开头，以下为使用示例
--
-- 使用 atexit 注册一个终止回调函数
atexit(function() 
	sys.toast('被终止了！')
	sys.msleep(500)
end)
--
while (true) do
	sys.toast("现在可尝试手动结束脚本\n\n"..os.date("%Y-%m-%d %H:%M:%S"))
	sys.msleep(1000)
end
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)、[setmetatable](http://cloudwu.github.io/lua53doc/manual.html#pdf-setmetatable)

