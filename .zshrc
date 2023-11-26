# Lines configured by zsh-newuser-install

vbar="│"

function echo_center(){
	COLUMNS=$(tput cols) 
	title=$1 
	printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"
}

function display_center(){
    columns="$(tput cols)"
    while IFS= read -r line; do
        printf "%*s\n" $(( (${#line} + columns) / 2)) "$line"
    done
}

function center() {
    text=$1
    size=$2
    space_all=$(( (size - ${#text}) / 2 ))
    space1=$((space_all))
    space2=$((space_all-1))

    if [ $(( (size - ${#text}) % 2 )) -ne 0 ]; then
        # Si la différence entre la taille et la longueur du texte est impaire,
        # augmentez space1 de 1 pour garder le texte centré.
        space1=$((space1 + 1))
    fi

    printf "%s%${space1}s%s%${space2}s%s\n" "$vbar" " " "$text" " " "$vbar"
}

welcome_size=60
echo
echo
echo_center "╭───────────────────────────────────────────────────────────╮"
center "" $welcome_size| display_center
center "WELCOME TO KITTY UWU" $welcome_size | display_center
center "Don't forget that vim > all :3" $welcome_size | display_center
center "(this computer belongs to LeRoiDesKiwis/Antony)" $welcome_size | display_center
center "" $welcome_size | display_center
echo_center "╰───────────────────────────────────────────────────────────╯"
echo
echo

source ~/repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

#===== PROMPT ======
setopt PROMPT_SUBST
PROMPT='%F{yellow}$USER%f in %F{yellow}%~%f >~> '

#===== ALIASES & FUNCTIONS ======
alias i3config='vim ~/.config/i3/config'
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias next-wp="variety -n"
alias wifi1="nmcli"
alias reloadz="source ~/.zshrc && echo 'zshrc reloaded !'"
alias wifico="nmcli d w c"

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

function cdmkdir(){
	mkdir $1 && cd $1
}

# End of lines configured by zsh-newuser-install

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
