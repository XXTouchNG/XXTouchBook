### 覆盖写入配置表到某个配置分区 (**xui\.write**)


#### 声明  
```lua
操作成败 = xui.write(配置分区, 配置)
```


#### 参数及返回值  
- 配置分区  
    - 文本型，配置界面中的配置分区（defaults）标识符  
- 配置  
    - 表型，配置的键值对  


#### 说明  
> **这个函数在 1\.2\-10 版以上方可使用**  
该函数用于优化同时设置多项配置，如果当前正显示着配置界面，则该函数会立刻更新界面上的显示值  
该函数不负责过滤值类型，如果需要保证值类型合法，可于写入后使用 xui\.setup 来校验修正  
脚本配置界面标准参考 [XUI](/XUI/README.md)  


#### 示例  
```lua
xui.setup('interface.xui')
local dict = xui.read('com.yourcompany.A-Script-Bundle')
dict['enabled'] = true
xui.write('com.yourcompany.A-Script-Bundle', dict)
xui.setup('interface.xui')
```
