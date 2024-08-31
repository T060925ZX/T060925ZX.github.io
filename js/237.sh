#!/bin/bash
runfile=$(pwd)
download_url_login=http://www.iloli.work/js/login.js
download_file_login=$runfile/lib/events/login.js
if [ -e "$runfile/lib/events/login.js" ]; then
    echo "当前运行目录:$runfile"
else
    echo "请在云崽目录下执行该脚本"
    exit 1
fi
echo "即将替换login.js文件"
sleep 1
curl -o new_device $download_url_login
mv new_device $download_file_login
if [ $? -eq 0 ]; then
    echo "文件替换成功"
else
    echo "文件替换失败,出bug喽"
    exit 1
fi
echo "脚本结束"
exit 0
