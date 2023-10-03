# Lines configured by zsh-newuser-install

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{yellow}$USER%f in %F{yellow}%~%f >~> '

alias i3config='vim ~/.config/i3/config'
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias next-wp="variety -n"

# End of lines configured by zsh-newuser-install
