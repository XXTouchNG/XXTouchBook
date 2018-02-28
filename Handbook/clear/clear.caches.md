### 清理系统缓存 (**clear\.caches**)


#### 声明
```lua
clear.caches()
```


#### 说明
> 清理系统缓存，这个函数执行会卡顿一段时间，而且卡顿期间所有线程都阻塞  


#### 示例  
```lua
clear.caches()
--
clear.caches{no_uicache = true} -- 1.2-2 以上版本支持不使用 uicache 清理，uicache 耗时很长，可使用 os.execute('su mobile -c uicache') 来代替
```

