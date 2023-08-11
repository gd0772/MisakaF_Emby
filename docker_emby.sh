#!/bin/bash
echo "Emby 一键**脚本，适4.7.13 Docker版本"
echo "-------------------web端**-------------------"
url=https://drive.gd772.net/d/Onedrive/Emby
version=4.7.13.0
systemctl stop emby-server
rm -f /system/Emby.Web.dll
wget -P /system/ $url/$version/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ $url/$version/MediaBrowser.Model.dll
echo "核心**完成..."
rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ $url/$version/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ $url/$version/embypremiere.js
echo "web**完成..."
rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ $url/$version/Emby.Server.Implementations.dll
echo "Implementations替换认证..."
systemctl start emby-server
echo "xxx完成"
