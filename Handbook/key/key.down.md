### 模拟按下物理按键 \(**key\.down**\)

#### 声明
```lua
key.down(按键码)
```


#### 参数及返回值
- 按键码
    - 文本型，物理按键的按键码，键码在 [示例及支持的键码列表](/Handbook/key/samples.md) 一节查看


#### 说明
> 模拟按下物理按键  
> **注意** 这个函数应当有对应的 [`key.up`](/Handbook/key/key.up.md) 调用，否则在脚本终止之后，会发生按键一直不释放的问题。  
> **与此函数已知的冲突插件：Background Manager**  


#### 示例  
[`本章结尾`](/Handbook/key/samples.md)  
