#!/bin/bash

cd /Users/baofuzhang/Downloads/ChaoXingReserveSeat-rebuild

# 检查是否有更改
if ! git diff --quiet; then
    git add .
    git commit -m "Auto backup $(date +'%Y-%m-%d %H:%M:%S')"
    # post-commit hook会自动推送
fi
