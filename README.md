# autoMySQL_8_0-20180827.sh ： 一键安装MySQL8.0

这个脚本是基于CentOS 7.5.1804版本  
也只在上述本版中测试过。
此脚本的安装方式为解压rpm包，然后用yum命令安装

**！！！注意！！！**

MySQL8.0安装后会自动生成初始化密码，并在第一次登录后强制修改密码。

此脚本安装完成后自动获取初始化密码，并写好自动登录脚本。

自动登录脚本位置：~/.my.cnf


之后还会询问：是否立即修该初始化密码？

**注意此处**

**注意此处**

**注意此处**

如果选择y，在输入新密码的时候请小心，一旦输入错误无法重新输入。（此处有待优化）

如果选择n，则脚本运行完毕之后输入 mysql 既可root登录。



脚本运行时选择修改初始化密码的话，脚本会采用沙盒模式修改root初始化密码。

修改后的密码同样会写进自动登录脚本（ ~/.my.cnf ），可自行删除。

初次编写，欢迎提交Issues。






# firewall.sh : 可视化操作防火墙（适合新手）

iptable 和 firewall 的命令真的是又臭又长

此脚本做了一点点可视化选择。运行后会出现5个选项，输入1可开放端口并重启httpd，输入2可关闭端口并重启httpd，输入3...

此脚本 开放和关闭端口都是永久生效的（重启系统后依然有效）
