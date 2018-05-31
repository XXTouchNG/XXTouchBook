### 获取配置界面的配置值 (**xui\.get**)


#### 声明  
```lua
值 = xui.get(配置分区, 配置键)
```


#### 参数及返回值  
- 配置分区  
    - 文本型，配置界面中的配置分区（defaults）标识符  
- 配置键  
    - 文本型，配置界面中的控件的配置键（key）标识符  
- 值  
    - 任意类型，不同的控件类型会返回不同的值，如果没有该配置值，返回 nil  


#### 说明  
> **这个函数在 1\.2\-10 版以上方可使用**  
该函数不负责过滤值类型，如果需要保证获取的值类型合法，可先使用 xui\.setup 来校验修正再读取  
脚本配置界面标准参考 [XUI](/XUI/README.md)  


#### 示例  
```lua
xui.setup('interface.xui')
local enabled = xui.get('com.yourcompany.A-Script-Bundle', 'enabled')
```
