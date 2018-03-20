### \! 将对话框弹出来并返回用户的选择 \(**:show**\)


#### 声明
```lua
是否提交, 选项关联表 = 对话框对象:show()
```


#### 参数及返回值
> - 对话框对象
>   - 对话框，需要弹出的对话框
> - 是否提交
>   - 布尔型，返回是否按下了提交按钮，超时或点右上角叉返回 false
> - 选项关联表
>   - 表型，返回一个以选项标签映射的键值表


#### 说明
> **这个方法在 1\.1\.1\-1 版以上方可使用**  
> 将对话框弹出来并返回用户的选择  
> 当对话框设置了配置保存 \(:config\(配置名\)\) 的情况下，按下 **提交** 会保存配置，按下右上的 **×** 或超时则不会保存  


#### 简单示例  
```lua
local c, s = dialog():add_switch('一个开关', false):show()
sys.alert(s["一个开关"])
```


#### 复杂示例  
```lua
local dlg = dialog() -- 创建一个 dialog 对象
--
-- 以下为此 dialog 对象配置
dlg:config('test') -- 配置保存ID
dlg:timeout(30)
dlg:add_label('简易的效果展示')
dlg:add_range('血量', {0, 1000, 1}, 300)
dlg:add_input('账号', 'ccc')
dlg:add_input('密码', 'aaaa')
dlg:add_picker('性别', {'男', '女', '未知'}, '男')
dlg:add_switch('你是变态?', false)
dlg:add_checkbox('喜欢的游戏', {'守望先锋', '魔兽世界', '炉石传说'}, {'守望先锋', '魔兽世界'})
dlg:add_radio('最喜欢的游戏', {'守望先锋', '魔兽世界', '炉石传说'}, '魔兽世界')
--
local confirm, selects = dlg:show() -- 显示 dialog 对象到前台并获得其返回值
--
if (confirm) then
    print("你按下了提交")
else
    print("你没有按下提交")
end
--
print("账号", selects["账号"])
print("密码", selects["密码"])
print("性别", selects["性别"])
print("血量", selects["血量"])
--
if (selects['你是变态?']) then
	print("你承认了自己是变态")
else
	print("你不承认自己是变态")
end
--
print("你喜欢游戏列表")
for _,gamename in ipairs(selects['喜欢的游戏']) do
	print(gamename)
end
--
print("你最喜欢游戏:"..selects["最喜欢的游戏"])
--
sys.alert(print.out())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)

