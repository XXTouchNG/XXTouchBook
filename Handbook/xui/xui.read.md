### 读取某个配置分区所有配置 (**xui\.read**)


#### 声明  
```lua
配置 = xui.read(配置分区)
```


#### 参数及返回值  
- 配置分区  
    - 文本型，配置界面中的配置分区（defaults）标识符  
- 配置  
    - 表型，这个配置分区所有配置的键值对，如果没有该配置分区，则返回空表  


#### 说明  
> **这个函数在 1\.2\-10 版以上方可使用**  
该函数用于优化读取多个配置  
该函数不负责过滤值类型，如果需要保证获取的值类型合法，可先使用 xui\.setup 来校验修正再读取  
脚本配置界面标准参考 [XUI](/XUI/README.md)  


#### 示例  
```lua
xui.setup('interface.xui')
local dict = xui.read('com.yourcompany.A-Script-Bundle')
local enabled = dict['enabled']
```
