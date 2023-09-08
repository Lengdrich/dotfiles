
#!/bin/bash

# 设置网络配置为手动
# 设置HTTP和HTTPS代理为127.0.0.1:7890
gsettings set org.gnome.system.proxy mode 'manual'
gsettings set org.gnome.system.proxy.http host '127.0.0.1'
gsettings set org.gnome.system.proxy.http port 7890
gsettings set org.gnome.system.proxy.https host '127.0.0.1'
gsettings set org.gnome.system.proxy.https port 7890

echo "配置已完成！"
