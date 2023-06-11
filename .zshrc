# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up oh-my-zsh
export ZSH_DISABLE_COMPFIX=true
export ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH="$HOME/.oh-my-zsh"

# omz config
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# plugins
# plugins=(git timer deno docker dotnet gh nvm npm pip pm2 ripgrep rust bw)
plugins=(deno docker dotnet gh ripgrep rust bw)
# zstyle ':omz:plugins:nvm' lazy yes

# aliases
alias ll="ls -la"
alias open=xdg-open

# exports
export BW_SESSION="FhYVFFWuVJTzbHrpr4jvCvwtLAftt2sjOT1yLwWFmO7C7dTG3aVUuzoSB0ZGN43AWh3R5ADAeJlJJACps3DzmA=="
export PATH=$PATH:~/scripts/

# finish up
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
