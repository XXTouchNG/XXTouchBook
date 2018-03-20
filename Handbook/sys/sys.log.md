### 输出标准系统日志 \(**sys\.log**\)


#### 声明
```lua
sys.log(日志内容)
```


#### 参数及返回值
- 日志内容
    - 文本型，代表需要输出的日志内容


#### 说明
> 输出标准系统日志  
> 日志可以使用电脑浏览器打开远程接口 **http://<设备IP地址\>:46952/log\.html** 实时查看  
> 日志会同时存储到设备上的 **/var/mobile/Meida/1ferver/log/sys\.log** 文件中  
> **/var/mobile/Meida/1ferver/log/sys\.log** 记录的日志最多不会超过 4000 行，超过则删前面的  

  
#### 示例  
```lua
sys.log("当然是 Hello World 啦")
```

