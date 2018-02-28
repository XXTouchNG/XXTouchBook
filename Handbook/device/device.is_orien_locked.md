### 获取屏幕旋转锁锁定状态 (**device\.is\_orien\_locked**)


#### 声明
```lua
是否锁定 = device.is_orien_locked()
```


#### 参数及返回值  
> - 是否锁定
>   - 布尔型，返回是否已经锁定屏幕旋转锁


#### 示例  
```lua
if device.is_orien_locked() then
    -- 屏幕旋转已锁定
else
    -- 屏幕旋转没锁定
end
```
