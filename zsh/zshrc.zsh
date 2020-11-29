# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/bin:$PATH"
export EDITOR=nvim

source ~/.alias
source ~/antigen.zsh
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
setopt HIST_IGNORE_DUPS

#source ~/.bash_profile

#alias daily_lookup="cd ~/Dropbox/KnowledgeBase; rg -t md -l '\[\#DailyLookup\]' | gshuf -n 1 | xargs -I{} open {}"

# Antigen Settings
# Load the theme.
#antigen theme robbyrussell
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
