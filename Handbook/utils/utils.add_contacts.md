### 给通讯录添加一个或多个联系人 (**utils\.add\_contacts**)


#### 声明
```lua
success = utils.add_contacts({
	{
		firstName = "姓1",
		lastName = "名1",
		phoneNumbers = {
			"联系人1号码1",
			"联系人1号码2",
		},
		emails = {
		    "联系人1邮箱1",
		    "联系人1邮箱2",
		},
	},
	{
		firstName = "姓2",
		lastName = "名2",
		phoneNumbers = {
			"联系人2号码1",
			"联系人2号码2",
		},
		emails = {
		    "联系人2邮箱1",
		    "联系人2邮箱2",
		},
	},
	...
})
```


#### 参数及返回值
> - firstName
>   - 文本型，联系人姓
> - lastName
>   - 文本型，联系人名
> - phoneNumbers
>   - 表型，这个人的号码列表
> - emails
>   - 表型，这个人的邮箱号列表
> - success
>   - 布尔型，添加成功返回 true，失败返回 false


#### 说明
> 将一个或多个联系人记录添加到系统通讯录  
> **注意：大批量导入很慢，特大批量导入会导致注销**  


#### 示例  
```lua
utils.add_contacts({
	{
		firstName = "小",
		lastName = "明",
		phoneNumbers = {
			"13800001111",
			"13800002222",
		},
		emails = {
		    "xiaoming@qq.com",
		    "xiaoming@163.com",
		},
	},
	{
		firstName = "小",
		lastName = "红",
		phoneNumbers = {
			"13800003333",
			"13800004444",
		},
		emails = {
		    "xiaohong@qq.com",
		    "xiaohong@163.com",
		},
	},
})
```

