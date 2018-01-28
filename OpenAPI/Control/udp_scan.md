### UDP 扫描局域网的设备

- 首先需要在电脑上打开一个 UDP 收消息的端口

- 然后发送如下 UDP 广播内容到局域网的 46953 端口

```json
{"ip":"电脑端的ip地址","port":50000} // port 为电脑端的监听端口
```

- 设备收到这个广播后会做出如下回复到电脑的收消息端口

```json
{
    "ip":"192.168.31.99",
    "port":"46952",
    "devname":"设备名",
    "deviceid":"123456789012345678901234567890123456790", // 设备 UDID
    "devsn":"XXXXXXXXXXXX",                               // 设备序列号
    "devmac":"02:03:04:05:06:07",                         // 设备 WiFi MAC 地址
    "devtype":"iPhone8,1",                                // 设备型号
    "zeversion":"0.0.1.738",                              // 服务版本
    "sysversion":"9.0.2"                                  // 系统版本
}
```

- 电脑端 UDP 扫描局域网设备示例（适用于 Python 2.7.x）： 

```python
# -*- coding: utf-8 -*-
import socket, json  

local_ip = '192.168.31.13' # 电脑端地址
local_port = 31500

local = (local_ip, local_port)
remote = ("255.255.255.255", 46953)
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind(local)

s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
s.sendto(json.dumps({"ip":local_ip, "port": local_port}), remote)

while True:
    data, addr = s.recvfrom(2048)
    if not data:
        print "client has exist"
        break
    print "received:", data, "from", addr

s.close()
```

- 电脑端 UDP 扫描局域网设备示例（适用于 Node.js）： 

```javascript
var http = require('http');			//HTTP服务

var dgram = require('dgram');		//UDP模块
var server_Port = 31500;			//服务端口
var client_Port = 31501;			//发信端口

var device_List = {};				//设备列表

//创建收信服务
var server_Socket = dgram.createSocket('udp4');
server_Socket.on('message', function(msg, rinfo){
	console.log('收到消息：%s', msg);
	var device_Info = JSON.parse(msg)
	//过滤重复
	if(device_Info.deviceid){
		device_List[device_Info.deviceid] = device_Info;
	}
});
server_Socket.bind(server_Port);

//创建发信服务
var client_Socket = dgram.createSocket('udp4');
client_Socket.bind(client_Port);

var search = function(){
	var server_List = new Array();
	var os = require('os');
	var ifaces = os.networkInterfaces();
	for (var dev in ifaces) {
		var alias = 0;
		ifaces[dev].forEach(function(details){
			if (details.family=='IPv4') {
				server_List.push(details.address);
				++alias;
			}
		});
	};
	for(var address in server_List) {
		var ip_ar = server_List[address].split(".");
		var send2ip = ip_ar[0] + "." + ip_ar[1] + "." + ip_ar[2] + ".255";
		var client_Socket = dgram.createSocket('udp4');
		var msg = JSON.stringify({ip: server_List[address], port: server_Port});
		client_Socket.send(msg, 0, msg.length, 46953, send2ip);
	};
}

http.createServer(function (request, response) {
	response.writeHead(200, {'Content-Type': 'application/json'});
	search()
	response.end(
		JSON.stringify(device_List)
	);
}).listen(22222);
search()
console.log('Web服务地址：http://127.0.0.1:22222/');
```
