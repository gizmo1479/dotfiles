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

# fnm
export PATH="/home/gizmo1479/.local/share/fnm:$PATH"
eval "`fnm env`"
