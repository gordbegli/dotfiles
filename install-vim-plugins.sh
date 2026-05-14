#!/usr/bin/env bash
set -euo pipefail

dir="$HOME/.vim/pack/plugins/start"
mkdir -p "$dir"
cd "$dir"

[ -d indentLine ] || git clone https://github.com/Yggdroot/indentLine
[ -d vim-sleuth ] || git clone https://github.com/tpope/vim-sleuth
