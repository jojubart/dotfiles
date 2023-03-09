# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/Users/jjs/.local/bin:$PATH"
export EDITOR=nvim
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export TERM="xterm-256color"




setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS

source ~/.alias
source ~/.functions
source ~/antigen.zsh
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
setopt HIST_IGNORE_DUPS

  vscodetmp () {
    local repo=$1
    [[ ! $repo =~ "https://*" ]] && repo="https://github.com/${repo}"
    local temp="$(mktemp -d)"
    git clone "${repo}" "${temp}"
    code --wait -n "${temp}"
    rm -rf "${temp}"
  }

#source ~/.bash_profile

#alias daily_lookup="cd ~/Dropbox/KnowledgeBase; rg -t md -l '\[\#DailyLookup\]' | gshuf -n 1 | xargs -I{} open {}"

# Antigen Settings
# Load the theme.
antigen theme robbyrussell
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen theme romkatv/powerlevel10k


#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure
#
# Tell Antigen that you're done.
antigen apply

# zsh-history-substring-search configuration
# (put whatever configuration you want here!)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


#export PATH="/Users/jjs/.pyenv/shims:${PATH}"
#eval "$(pyenv init -)"
#export PATH="/usr/local/opt/python@3.8/bin:$PATH"
