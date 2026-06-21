#!/bin/bash
cd "$(dirname "$0")"
PORT=${1:-8899}
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  战略传播课程论文"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Deck:  http://localhost:$PORT"
echo "  论文:  http://localhost:$PORT/从反应到预测-大语言模型与战略传播.html"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  在任意浏览器打开上述 URL"
echo "  VS Code / Cursor: 自动端口转发 Ctrl+Shift+P → Forward Port"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
python3 -m http.server "$PORT"
