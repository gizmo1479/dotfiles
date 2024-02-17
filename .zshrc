# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=4096
SAVEHIST=16384
setopt autocd notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gizmo1479/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# PROMPY
PROMPT="%B%T %m:%n:%F{blue}%~%f  $ %b"
source ~/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# color support aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
fi
# ls aliases
alias ll='ls -alF'
alias la='ls -A'

# fun aliases
alias vim="nvim"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"

alias ripes="/home/gizmo1479/Downloads/Ripes-v2.2.6-linux-x86_64.AppImage"

path+=('/opt/riscv')
# path exports
export TCPREF=/home/gizmo1479/CS/networks/ipstack-reference
# opam configuration
[[ ! -r /home/gizmo1479/.opam/opam-init/init.zsh ]] || source /home/gizmo1479/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
