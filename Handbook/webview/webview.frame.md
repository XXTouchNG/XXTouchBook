### 获取一个 webview 的区域及层级信息 \(**webview\.frame**\)


#### 声明
```lua
frame = webview.frame([ id ])
```


#### 参数及返回值
> - id
>   - 整数型，可选参数，表示当前 webview 的 id，范围 1 ~ 1000，默认为 1
> - frame
>   - 表型，返回当前 webview 的区域及层级信息


#### 说明
> 获取一个 webview 的区域及层级信息  


#### 示例  
```lua
local frame = webview.frame(1)
sys.alert(
    "位置为:".."("..frame.x..","..frame.y..")\n"..
    "大小为:".."(宽:"..frame.width..",高:"..frame.height..")\n"..
    "层级为:".."("..frame.level..")"
)
```
**注**：上述代码中使用了非本章函数 [`sys.alert`](/Handbook/sys/sys.alert.md)  

