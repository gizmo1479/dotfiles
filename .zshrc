# Lines configured by zsh-newuser-install
setopt autocd notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gizmo1479/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# PROMPT
PROMPT='%B%F{magenta}%n@%m%b%F{white}:%B%F{blue}%~%b%F{white}$ '
source ~/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# color support for ls and handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
fi

# ls aliases
alias ll='ls -alF'
alias la='ls -A'

# git aliases
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'

# vim
alias vim='nvim'

# "Modern" GNU Replacements
## https://github.com/ibraheemdev/modern-unix?tab=readme-ov-file

## ls => exa
if [ -x "$(command -v exa)" ]; then
	alias ls='exa'
fi

## cat => bat
BAT='bat'
if grep -q debian /etc/os-release; then
	BAT='batcat' # some sort of name conflict
fi

if [ -x "$(command -v $BAT)" ]; then
	alias cat=$BAT
fi

## find => fd
FD='fd'
if grep -q debian /etc/os-release; then
	FD='fdfind' # name conflict with package
fi

if [ -x "$(command -v $FD)" ]; then
	alias find=$FD
fi

## grep => rg
if [ -x "$(command -v rg)" ]; then
	alias grep='rg'
fi

# prompt
PROMPT='%B%F{magenta}%n@%m%b%F{white}:%B%F{blue}%~%b%F{white}$ '
export CMAKE_PREFIX_PATH='/home/gizmo1479/Qt/6.6.1/gcc_64'

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

# plugins
plugins=(git fzf)
