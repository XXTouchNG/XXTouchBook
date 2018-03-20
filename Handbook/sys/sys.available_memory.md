### 获取设备当前可用内存值 \(**sys\.available\_memory**\)


#### 声明
```lua
可用内存 = sys.available_memory()
```

  
#### 参数及返回值
> - 可用内存
>   - 实数型，返回当前设备的空闲内存值 \(单位：MB\) 

  
#### 示例  
```lua
sys.alert('当前可用内存为：'..sys.available_memory()..'MB')
```

