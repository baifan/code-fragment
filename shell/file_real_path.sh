#!/bin/bash

echo '$0: '$0
echo "pwd: "`pwd`
echo "============================="
# 不论是否是软连接/实体文件，都返回对应的目录
echo "获取执行文件的目录: "$(cd `dirname $0`; pwd)
# 如果是软连接也返回对应实体文件的目录
echo "获取实际文件的目录: "$(dirname $(readlink -f $0))