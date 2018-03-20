### 从进程队列词典中弹出所有值 \(**proc\_queue\_clear**\)


#### 声明
```lua
values = proc_queue_clear(key)
```


#### 参数及返回值
- key
    - 字符串型，代表键
- values
    - 顺序表型，返回包含弹出的所有值的顺序表，如果队列不存在或为空，则返回空表


#### 说明
> **所有以 "xxtouch\." 或 "1ferver\." 开头的进程队列词典全部被保留**  
> 从进程队列词典中弹出所有值，清空指定队列  


#### 示例  
```lua
local billnos = proc_queue_clear("billnos")
if #billnos~=0 then
    for i, billno in ipairs(billnos) do
        print(i, billno)
    end
else
    print("no bill")
end
```

