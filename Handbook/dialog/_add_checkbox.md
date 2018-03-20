### 给对话框加上一个多选组 \(**:add\_checkbox**\)


#### 声明
```lua
对话框对象 = 对话框对象:add_checkbox(多选组标签, 多选组选项们 [, 默认选择们 ])
```


#### 参数及返回值
- 多选组标签
    - 文本型，多选组标题标签显示的文本
- 多选组选项们
    - 表型，多选组中的顺序选项名列表，不能有一样的
- 默认选择们
    - 表型，可选参数，多选组的默认选项名列表，默认为 空表
- 对话框对象
    - 对话框，返回对话框本身
- 使用 :show\(\) 返回类型
    - 表型，返回所有包含所有被选择的选项的一个顺序表


#### 说明  
> 给对话框加上一个多选组  


#### 示例  
```
local c, s = dialog()
:add_checkbox('一个多选组', {'选项1', '选项2', '选项3', '选项4'}, {'选项1', '选项3'})
:show()
print('一共选中了 '..#(s['一个多选组'])..' 个选项')
print('选中列表如下')
for _, oname in ipairs(s['一个多选组']) do
    print(oname)
end
sys.alert(print.out())
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`print`](/Handbook/develop-helper/print.md)、[`print.out`](/Handbook/develop-helper/print.out.md)  


#### 完整示例
[`本章结尾 :show() `](/Handbook/dialog/_show.md)  

