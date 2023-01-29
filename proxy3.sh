#!/bin/bash
export ALL_PROXY="http://192.168.1.6:7890" # 设置代理，7890为我的代理端口
curl -I https://www.google.com # 尝试访问Google, 验证代理的有效性
