# Source global definitions
if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Proxy
export http_proxy=http://127.0.0.1:7897
export https_proxy=http://127.0.0.1:7897

# Prompt
set -o vi # set vi mode prompt
export PS1=" \w \e[33m$\e[0m "

# Alias
alias ll="ls -l"
alias la="ls -la"

. "$HOME/.cargo/env"
