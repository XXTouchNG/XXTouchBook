### 派发一个任务 (**thread\.dispatch**)


#### 声明
```lua
tid = thread.dispatch(task [, error_callback ])
```


#### 参数及返回值
> - task
>   - 函数型，这个函数将加入任务队列
> - error\_callback
>   - 函数型，错误回调，当执行任务时发生异常，则会回调这个函数并不再抛出，可选参数，默认在异常时抛出错误
> - tid
>   - 整数型，任务 id，这个 id 可用于结束或是等待一个任务


#### 说明
> 派发一个任务到队列，当其它任务空闲时则会开始该项任务  


#### 示例  
[`本章最后`](/Handbook/thread/README.md)  

