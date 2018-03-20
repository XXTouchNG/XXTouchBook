### 后台播放声音 \(**device\.play\_sound**\)


#### 声明
```lua
device.play_sound(声音文件路径)
```


#### 参数及返回值  
- 声音文件路径
    - 文本型，声音文件的绝对路径，支持 mp3、wav、aac 音频格式


#### 说明
> 后台播放一段声音  
> 该函数不会影响脚本运行，且播放的声音会在脚本停止的时候停止，如果脚本需要播放完整声音，请做好延迟退出  


#### 示例  
```lua
device.play_sound("/User/十年.mp3")
sys.msleep(205 * 1000) -- 等待 205 秒 (3分25秒) 
```
**注**：上述代码中使用了非本章函数 [`sys.msleep`](/Handbook/sys/sys.msleep.md)

