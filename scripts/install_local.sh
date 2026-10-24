#!/usr/bin/env bash
# 把本技能装进本地 WorkBuddy 技能库。
# 用法：bash scripts/install_local.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_NAME="车祸大会Bingo"
DEST="${HOME}/.workbuddy/skills/${SKILL_NAME}"

mkdir -p "${DEST}"
cp -r "${SCRIPT_DIR}/." "${DEST}/"

echo "已安装到：${DEST}"
echo "在 WorkBuddy 里通过品牌名「${SKILL_NAME}」即可调用。"
