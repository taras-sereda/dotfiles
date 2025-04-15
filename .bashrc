alias ll="ls -ltr"
alias urldecode="python3 -c 'import sys; from urllib.parse import unquote_plus; print(unquote_plus(sys.stdin.read()));'"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
