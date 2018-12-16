#!/bin/bash
#getopt用于格式化脚本中的参数，从而使得用户输入更加友好
#
set -- $(getopt -q ab:cdefg "$@")
echo
while [ -n "$1" ]
do
case "$1" in
-a) echo "find the -a" ;;
-b) param="$2"
  echo "find the -b and parameter is $param"
  shift ;;
-c) echo "find the -c" ;;
--) shift
    break ;;
*) echo "$1 不是我们想要的参数" ;;
    esac
shift
done
    count=1
    for param in "$@"
       do
            echo "第$count个参数是：$param"
            count=$[ $count + 1  ]
       done
