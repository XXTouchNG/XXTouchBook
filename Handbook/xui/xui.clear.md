### 清除某个配置分区所有的配置 (**xui\.clear**)


#### 声明  
```lua
操作成败 = xui.clear(配置分区)
```


#### 参数及返回值
- 配置分区  
    - 文本型，配置界面中的配置分区（defaults）标识符  


#### 说明  
> **这个函数在 1\.2\-10 版以上方可使用**  
该函数用于优化同时设置多项配置，如果当前正显示着配置界面，则该函数会立刻更新界面上的显示值  
可于清除后使用 xui\.setup 再次生成配置界面的默认配置  
脚本配置界面标准参考 [XUI](/XUI/README.md)  


#### 示例  
```lua
xui.clear('com.yourcompany.A-Script-Bundle')
xui.setup('interface.xui')
```
