#!/usr/bin/env bash
# cron:0 9 * * *
# new Env("天翼网盘自动签到")
cd /ql/data/repo/manx98_QinglongScript || {
  echo "切换目录失败"
  exit -1;
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