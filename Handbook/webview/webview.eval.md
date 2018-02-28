### 在一个 webview 上执行一段 JS (**webview\.eval**)


#### 声明
```lua
str = webview.eval(js [, id ])
```


#### 参数及返回值
> - js
        文本型，需要执行的 JS 代码
> - id
        整数型，可选参数，表示当前 webview 的 id，范围 1 ~ 1000，默认为 1
> - str
        文本型，返回执行 JS 代码产生的返回值


#### 说明
> 在一个 webview 上执行一段 JS 并获得返回值文字  


#### 示例  
```lua
r = webview.eval("a = 3; b = 2; a * b;")
```

