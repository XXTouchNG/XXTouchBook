### 打印内容到缓冲区 \(**print**\)


#### 声明
```lua
print([ 参数1, 参数2, ... ])
```


#### 参数及返回值
- 参数1, 参数2, \.\.\.
    - 任意类型，可选参数，可变参数，将会转换成文本输出到缓冲区，参数之间用 `"\t"` 隔开


#### 说明
> [`print`](http://cloudwu.github.io/lua53doc/manual.html#pdf-print) 是 lua 自带的打印输入函数，在 XXTouch 是将内容打印到缓冲区  


#### 示例  
```lua
print("hello world")
```

