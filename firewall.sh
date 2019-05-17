#!/bin/bash
############    快捷操作firewall防火墙   ############
# Author：Mr.Pro
# description:                                    
# Update：2019-05-17                               
# Updates：可以在安装的时候更改root初始密码        
#######################  END  #####################

function add_port() {
    firewall-cmd --permanent --zone=public --add-port=$1/tcp
}

function remove_port() {
    firewall-cmd --permanent --zone=public --remove-port=$1/tcp
}

function list_port() {
    firewall-cmd --list-port
}

function reload() {
    firewall-cmd --reload
}




clear

echo -e "\033[1;36m###########  欢迎使用快捷操作firewall防火墙 脚本  ###########\033[0m"
echo -e "\033[1;36m#                                                         #\033[0m"
echo -e "\033[1;36m#                     Author：Mr.Pro                      #\033[0m"
echo -e "\033[1;36m#                   Update：2019-05-17                    #\033[0m"
echo -e "\033[1;36m#                                                         #\033[0m"
echo -e "\033[1;36m#                    1、开通端口                           #\033[0m"
echo -e "\033[1;36m#                    2、关闭端口                           #\033[0m"
echo -e "\033[1;36m#                    3、查看已开端口                       #\033[0m"
echo -e "\033[1;36m#                    4、重启firewall                      #\033[0m"
echo -e "\033[1;36m#                    5、退出                              #\033[0m"
echo -e "\033[1;36m#                                                         #\033[0m"
echo -e "\033[1;36m###########################################################\033[0m"

declare -i style
read -p "请输入选项 [ 1 | 2 | 3 | 4 | 5 ]：" style

declare -i num
case "$style" in
1)
    read -p "请输入要开启的端口号：" num
    add_port $num;
    reload
    ;;
2)
    read -p "请输入要关闭的端口号：" num
    remove_port $num;
    reload
    ;;
3)
    list_port
    ;;
4)
    reload
    ;;
5)
    exit
    ;;
*)
    echo -e "\033[5;32;40m参数错误！！！\033[0m"
    ;;

esac
