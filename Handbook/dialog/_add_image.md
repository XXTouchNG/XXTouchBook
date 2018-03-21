### 给对话框加上一个图片 \(**:add\_image**\)


#### 声明
```lua
对话框对象 = 对话框对象:add_image(图片)
```

#### 参数及返回值
- 图片
    - 图片对象，需要添加到对话框的图片
- 对话框对象
    - 对话框，返回对话框本身


#### 说明  
> **这个方法在 1\.1\.0\-1 版以上方可使用**  
> 给对话框加上一个图片  


#### 示例  
```
dialog():add_image(screen.image()):show() -- 弹出一张屏幕截图
```
**注**：上述代码中使用了非本章函数 [`screen.image`](/Handbook/screen/screen.image.md)


#### 完整示例
[`本章结尾 :show() `](/Handbook/dialog/_show.md)  

