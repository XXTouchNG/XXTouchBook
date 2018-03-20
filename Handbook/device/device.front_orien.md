### 获取前台应用的画面方向 \(**device\.front\_orien**\)


#### 声明
```lua
旋转状态 = device.front_orien()
```


#### 参数及返回值  
- 旋转状态
    - 整数型，相对于画面
      - 返回 0 表示 home 在下
      - 返回 1 表示 home 在右
      - 返回 2 表示 home 在左
      - 返回 3 表示 home 在上
      - 返回 4 表示 出错了


#### 示例  
```lua
sys.toast('这个提示会以前台应用的旋转方向显示', device.front_orien())
```
**注**：上述代码中使用了非本章函数 [`sys.toast`](/Handbook/sys/sys.toast.md)

