# Lines configured by zsh-newuser-install

echo "\t\t╭------------------------------------------╮"
echo "\t\t|\t   WELCOME TO KITTY UWU\t\t   |"
echo "\t\t|\tDon't forget that vim > all :3\t   |"
echo "\t\t╰------------------------------------------╯"
echo

source ~/repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{yellow}$USER%f in %F{yellow}%~%f >~> '

alias i3config='vim ~/.config/i3/config'
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias next-wp="variety -n"
alias wifi1="nmcli"
alias reloadz="source ~/.zshrc && echo 'zshrc reloaded !'"

function cdls() {
    cd $1 && ls
}

function cdtree() {
	cd $1 && tree
}

function reload(){
	pkill $1 && $1 &
}

function wlp(){
	feh --bg-fill $1

}

# End of lines configured by zsh-newuser-install

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
