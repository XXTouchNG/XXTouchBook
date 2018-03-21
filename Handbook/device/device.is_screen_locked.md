### 获取屏幕锁定状态 \(**device\.is\_screen\_locked**\)


#### 声明
```lua
是否锁屏 = device.is_screen_locked()
```


#### 参数及返回值  
- 是否锁屏
    - 布尔型，返回是否已经锁定屏幕


#### 说明
> 判断是否已经锁定屏幕  


#### 示例  
```lua
if device.is_screen_locked() then
    -- 屏幕已锁定
else
    -- 屏幕是解锁状态
end
```

