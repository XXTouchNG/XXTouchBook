### 阻塞等待一个任务完成 (**thread\.wait**)


#### 声明
```lua
thread.wait(tid, timeout)
```


#### 参数及返回值
> - timeout
>   - 实数型，等待超时时间，超时后将返回，单位：秒
> - tid
>   - 整数型，任务 id，这个 id 可用于结束或是等待一个任务


#### 说明
> 当前线程阻塞等待一个任务完成  


#### 示例  
[`本章最后`](/Handbook/thread/README.md)  

