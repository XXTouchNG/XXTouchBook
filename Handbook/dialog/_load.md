### \! 在不弹出对话框的情况下获得对话框配置 (**:load**)


#### 声明
```lua
是否提交, 选项关联表 = 对话框对象:load()
```


#### 参数及返回值
> - 对话框对象
>   - 对话框，需要获取返回值的对话框
> - 是否提交
>   - 布尔型，返回是否按下了提交按钮，这里将会无限返回 false
> - 选项关联表
>   - 表型，返回一个以选项标签映射的键值表


#### 说明
> **这个方法在 1\.1\.1\-1 版以上方可使用**  
> 在不弹出对话框的情况下获得对话框配置，如果对话框当前没有保存配置，则加载默认值  


#### 示例  
```lua
local dlg = dialog()
--
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
local _, selects
--
if (utils.is_launch_via_app()) then -- 判断当前是否从 app 启动
    _, selects = dlg:show()         -- 从 app 启动的脚本则弹出配置窗
else
    _, selects = dlg:load()         -- 音量键或其它方式启动的脚本则不再弹出
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
**注**：上述代码中使用了非本章函数 [`utils.is_launch_via_app`](/Handbook/utils/utils.is_launch_via_app.md)、 [`sys.alert`](/Handbook/sys/sys.alert.md)

