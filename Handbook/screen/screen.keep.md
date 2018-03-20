### 保持屏幕 \(**screen\.keep**\)


#### 声明
```lua
screen.keep()
```


#### 说明
> 在脚本中保持当前屏幕内容不变，多次调用取色、找色、截图、找图等函数时，将直接调用保持的内容，而不会重复从屏幕获取图像，从而提升图色判断的性能。  
> 该函数为优化类函数，能够为大量的静态图像处理函数提供性能优化。  
> 调用仅会影响 XXTouch 截图取色函数的数据源，**不会** 导致屏幕画面卡住不动！！！  


#### 示例  
```lua
-- 遍历屏幕区块
screen.keep()
for k = 1, 640, 10 do
    for j = 1, 960, 10 do
         - -格式化为十六进制文本
        color = string.format("%X", screen.get_color(k, j));
         - -输出到系统日志
        sys.log("("..k..", "..j..") Color: "..color..".");
    end
end
screen.unkeep()
```
**注**：上述代码中使用了非本章函数 [`sys.log`](/Handbook/sys/sys.log.md)  


#### 小知识  
> 针对同一位置两行连续单独的 screen\.get\_color 调用可能取到不同的值  
> screen\.keep 的情况下 screen\.get\_color 单独调用耗时会超过一次 screen\.keep 的耗时  
> 调用 screen\.keep 之后，再连续调用 50 次 screen\.get\_color 耗时可以等同于调用一次 screen\.keep  

