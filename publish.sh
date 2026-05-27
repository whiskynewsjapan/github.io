#!/bin/bash
echo "ビルド中..."
hugo
echo "コピー中..."
cp -r public/. docs
echo "GitHubに送信中..."
git add -A
git commit -m "${1:-記事更新}"
git push
echo "完了！サイトに反映されました🎉"