# Lines configured by zsh-newuser-install
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

# history config
HISTFILE=~/.histfile
HISTSIZE=65535
SAVEHIST=65535

HISTORY_IGNORE="(ls|cd|pwd|exit)*"
HIST_STAMPS="yyyy-mm-dd"
setopt EXTENDED_HISTORY       # Write to history file in :start:elapsed;command fmt
setopt INC_APPEND_HISTORY     # Write to hist file immediately
setopt SHARE_HISTORY          # Share hist btw all sessions
setopt HIST_IGNORE_DUPS       # Do not record an event that was just recorded again
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new is duplicate
setopt HIST_IGNORE_SPACE      # Do not record event starting with space, useful for secrets
setopt HIST_SAVE_NO_DUPS      # Do not write dup event to hist file
setopt HIST_VERIFY            # Do not execute immediately upon hist expansion
setopt APPEND_HISTORY         # Append to hist file (default)
setopt HIST_NO_STORE          # Don't store history commands
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks from each command added to history

# opam configuration
[[ ! -r /home/gizmo1479/.opam/opam-init/init.zsh ]] || source /home/gizmo1479/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# plugins
plugins=(git fzf)
