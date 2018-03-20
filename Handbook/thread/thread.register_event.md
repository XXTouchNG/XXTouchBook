### 注册监听一个事件 \(**thread\.register\_event**\)


#### 声明
```lua
eid = thread.register_event(event, callback [, error_callback ])
```


#### 参数及返回值
- event
    - 字符串型，代表事件名
- callback
    - 函数型，事件将会触发的回调函数
- error\_callback
    - 函数型，错误回调，当执行任务时发生异常，则会回调这个函数并不再抛出，可选参数，默认在异常时抛出错误
- eid
    - 整数型，事件 id，可以用于反注册监听该事件


#### 说明
> 注册监听一个事件  


#### 示例  
[`本章最后`](/Handbook/thread/README.md)  

