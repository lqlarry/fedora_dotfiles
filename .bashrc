# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias ls='exa -a --icons --color=always --group-directories-first'
alias ll='exa -al --icons --color=always --group-directories-first'
alias lj='~/.local/scripts/larry'
alias mkdir='mkdir -pv'
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias reboot='reboot'
alias xprop='xprop | grep WM_CLASS'
alias v='nvim'
alias vim='nvim'
alias inny='sudo dnf in'
alias uppy='sudo dnf up'
alias kthemes='kitty +kitten themes'
alias lj='confedit'

neofetch

