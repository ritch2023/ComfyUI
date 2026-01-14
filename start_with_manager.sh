#!/bin/bash
export PYTORCH_ENABLE_MPS_FALLBACK=1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
if [ -d "./.venv" ]; then
    source ./.venv/bin/activate
else
    echo "错误: 未找到 venv 目录，请检查路径。"
    exit 1
fi
python main.py --enable-manager --highvram --preview-method auto
