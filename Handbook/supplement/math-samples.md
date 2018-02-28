### math 库的相关应用 (math-samples)


|函数名|描述|示例|结果|
|------|----|----|----|
|pi|圆周率|math\.pi|3\.1415926535898|
|abs|取绝对值|math\.abs\(\-2012\)|2012|
|ceil|向上取整|math\.ceil\(9\.1\)|10|
|floor|向下取整|math\.floor\(9\.9\)|9|
|max|取参数最大值|math\.max\(2,4,6,8\)|8|
|min|取参数最小值|math\.min\(2,4,6,8\)|2|
|pow|计算x的y次幂|math\.pow\(2,16\)|65536\.0|
|sqrt|开平方|math\.sqrt\(65536\)|256\.0|
|modf|取整数和小数部分|math\.modf\(20\.12\)|20 0\.12|
|randomseed|设随机数种子|math\.randomseed\(os\.time\(\)\)||
|random|取随机数|math\.random\(5,90\)|5~90|
|rad|角度转弧度|math\.rad\(180\)|3\.1415926535898|
|deg|弧度转角度|math\.deg\(math\.pi\)|180\.0|
|exp|e的x次方|math\.exp\(4\)|54\.598150033144|
|log|计算x的自然对数|math\.log\(54\.598150033144\)|4\.0|
|log10|计算10为底，x的对数|math\.log10\(1000\)|3\.0|
|frexp|将参数拆成x \* \(2 ^ y\)的形式|math\.frexp\(160\)|0\.625 8|
|ldexp|计算x \* \(2 ^ y\)|math\.ldexp\(0\.625,8\)|160\.0|
|sin|正弦|math\.sin\(math\.rad\(30\)\)|0\.5|
|cos|余弦|math\.cos\(math\.rad\(60\)\)|0\.5|
|tan|正切|math\.tan\(math\.rad\(45\)\)|1\.0|
|asin|反正弦|math\.deg\(math\.asin\(0\.5\)\)|30\.0|
|acos|反余弦|math\.deg\(math\.acos\(0\.5\)\)|60\.0|
|atan|反正切|math\.deg\(math\.atan\(1\)\)|45\.0|

