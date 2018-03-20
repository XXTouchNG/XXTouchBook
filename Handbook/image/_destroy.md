### 销毁一个图片对象 \(**:destroy**\)


#### 声明
```lua
图像:destroy()
```


#### 参数及返回值
- 图像
    - 图片对象，当前操作的图片对象


#### 说明
> 立即释放图片对象的内存占用，被销毁的图片对象不能再使用  
> 该方法为性能优化方法，在频繁创建新图片对象的情形下，建议一定要使用该方法释放掉不再使用的图片对象以防止内存占用过高导致设备卡死崩溃等问题  
> 不是频繁创建图片对象的情况下可以不使用当前方法，并不会有内存泄露，lua  自带的垃圾回收机制会延迟一段时间将不再使用的数据回收  


#### 示例  
```lua
sys.alert("点击确定1秒后开始监控屏幕状态")
--
sys.msleep(1000)
--
local img = screen.image()
while 1 do
    local scn = screen.image()
    local x, y, s = scn:cv_find_image(img)
    scn:destroy()
    if s < 95 then
        break
    end
    sys.msleep(10)
end
--
sys.alert("屏幕动了")
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)、[`sys.msleep`](/Handbook/sys/sys.msleep.md)

