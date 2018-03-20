### 显示提示文字 \(**sys\.toast**\)


#### 声明
```lua
sys.toast(文字内容 [, 旋转方向 ])
```


#### 参数及返回值
- 文字内容
    - 文本型， 代表需要显示的文字
- 旋转方向
    - 整数型，屏幕旋转方向，可选参数，默认为最后一次调用 [screen.init](/Handbook/screen/screen.init.md) 所设的那个方向
      - `0` 表示竖屏 home 在下
      - `1` 表示横屏 home 在右
      - `2` 表示横屏 home 在左
      - `3` 表示竖屏 home 在上
      - `-1` 表示立刻隐藏 toast


#### 说明
> 在当前旋转坐标系的屏幕下方显示提示文字  
> **该函数是异步进行的，提示文字总计显示时间为 2\.8 秒，会影响取色，不会拦截点击**  


#### 示例  
```lua
-- 显示一个 toast
sys.toast("果断 hello world")
```

#### 示例  
```lua
-- 实时显示当前日期时间
while (true) do
	sys.toast("默认长按音量键可停止脚本\n\n"..os.date("%Y年%m月%d日%H点%M分%S秒"), device.front_orien())
	sys.msleep(1000)
end
```
**注**：上述代码中使用了非本章函数 [`device.front_orien`](/Handbook/device/device.front_orien.md)、[`os.date`](/Handbook/supplement/os.date.md)  

