#!/bin/bash
#getopts和getopt不同，其拥有两个环境变量$OPTARG//用处存储额外参数//和$OPTIND//保存了参数列表中
#正在处理参数的位置
#
echo
 while getopts :ab:cde opt 
   do

   case "$opt" in
   a) echo "输出a选项" ;;
   b) echo "输出b选项 AND 额外值:$OPTARG" ;;
   c) echo "输出c选项" ;;
   *) echo "$opt 不是我们想要的参数.." ;;
   esac

  done
shift $[ $OPTIND - 1  ]   ##这里的作用是当getopts处理完的时候将参数移动位置，因为$OPTIND每次
                           #参数值会+1
 count=1
 for param in "$@" 
  do
     echo "第$count个参数是：$param"
     count=$[ $count + 1  ]
  done
