# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=6000
SAVEHIST=15000
unsetopt beep
bindkey -e

export PATH=~/.local/bin:$PATH
export NPM_CONFIG_USERCONFIG=~/.local/share/npm/npmrc

alias ls='exa --icons'
alias ll="exa -ahl --icons --group-directories-first"

alias grep='grep --color=auto'
alias nvim='nvim-no-padding.sh'
alias cat='bat'
alias grep='rg'


source ~/Personal/Plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/Personal/Plugins/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/daruma/.config/zsh/.zshrc'



autoload -Uz compinit
compinit
# End of lines added by compinstall
#

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

