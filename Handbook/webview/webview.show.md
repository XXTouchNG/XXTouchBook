### 展现一个 webview \(**webview\.show**\)


#### 声明
```lua
webview.show { -- 所有参数皆为可选参数
    html = HTML内容,
    x = 原点横坐标,
    y = 原点纵坐标,
    width = 宽度,
    height = 高度,
    corner_radius = 圆角半径,
    alpha = 不透明度,
    animation_duration = 动画时间,
    rotate = 旋转角度,
    level = 窗体层级,
    opaque = 范围不透明,
    ignores_hit = 是否忽略触摸事件,
    can_drag = 是否能被拖动,
}
```


#### 字段说明
- html
    - 文本型，可选参数，页面 html 内容。默认为 上次调用 webview.show 时候所设
- id
    - 整数型，可选参数，表示当前 webview 的 id，可使用不同的 id 来同时展现多个 webview，范围 1 ~ 1000，默认为 1
- x
    - 整数型，可选参数，距离左侧的距离。默认为 0
- y
    - 整数型，可选参数，距离顶端的距离。默认为 0
- width
    - 整数型，可选参数，弹出窗口的宽度。默认为 屏幕宽度
- height
    - 整数型，可选参数，弹出的窗口高度。默认为 屏幕高度
- alpha
    - 实数型，可选参数，不透明度，范围 0\.0 ~ 1\.0。默认为 1\.0
- corner\_radius
    - 实数型，可选参数，圆角半径，0\.0 则是方角。默认为 0\.0
- animation_duration
    - 实数型，可选参数，从上次状态到参数所设状态的动画时间。默认为 0\.0
- rotate
    - 实数型，可选参数，旋转状态， 0\.0 (竖屏) 、90\.0 (横屏 Home 在右) 、180\.0 (竖屏翻转) 、270\.0 (横屏 Home 在左) 。默认为 0\.0
- level
    - 实数型，可选参数，窗体层级，默认 1100\.0
- opaque
    - 布尔型，可选参数，背景不透明选项，默认为 true 背景不透明
- ignores\_hit
    - 布尔型，可选参数，用于设置忽略 (不拦截) 触摸事件，默认为 false 不忽略，这个属性在 webview 创建后不能更改
- can\_drag
    - 布尔型，可选参数，用于设置是否可拖拽移动 webview，默认为 false 不能拖动


#### 说明
> 让 webview 以参数设置的那样出现  
> 除了 html 参数会保持上一次 show 的状态，其它参数一律会在调用时重设成默认值  


#### 示例  
[`本章结尾`](/Handbook/webview/samples.md)  

