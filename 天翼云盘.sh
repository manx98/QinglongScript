#!/usr/bin/env bash
# cron:0 9 * * *
# new Env("天翼网盘自动签到")
cd "$(dirname "${BASH_SOURCE[0]}")" || {
  echo "无法进入脚本运行目录"
  exit -1
}
echo "开始安装依赖..."
pip install -r requirements.txt || {
  echo "安装依赖失败"
  exit -1
}
echo "开始签到..."
python3 天翼云盘.py || {
  echo "签到失败"
  exit -1
}