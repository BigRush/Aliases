#!/usr/bin/env bash


################################################################################
# Author :	BigRush
#
# License :	GPLv3
#
# Description :	Add custom aliases that i usually use
#
# Version :	1.0.0
################################################################################

## customize shell, check if the config exists, if not, add it to .bashrc
if [[ -z $(grep "^alias ll='ls -l'$" $HOME/.bashrc) ]]; then
	printf "alias ll='ls -l'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias lh='ls -lh'$" $HOME/.bashrc) ]]; then
	printf "alias lh='ls -lh'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias la='ls -la'$" $HOME/.bashrc) ]]; then
	printf "alias la='ls -la'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias syst='systemctl status'$" $HOME/.bashrc) ]]; then
	printf "alias syst='systemctl status'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias sysr='sudo systemctl restart'$" $HOME/.bashrc) ]]; then
	printf "alias sysr='sudo systemctl restart'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias syse='sudo systemctl enable'$" $HOME/.bashrc) ]]; then
	printf "alias syse='sudo systemctl enable'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias sysd='sudo systemctl disable'$" $HOME/.bashrc) ]]; then
	printf "alias sysd='sudo systemctl disable'\n" >> $HOME/.bashrc
fi

if ! [[ -z $(command -v git) ]]; then
	if [[ -z $(grep "^alias gita='git add'$" $HOME/.bashrc) ]]; then
		printf "alias gita='git add'\n" >> $HOME/.bashrc
	fi

	if [[ -z $(grep "^alias gitc='git commit -m'$" $HOME/.bashrc) ]]; then
		printf "alias gitc='git commit -m'\n" >> $HOME/.bashrc
	fi

	if [[ -z $(grep "^alias gitp='git push'$" $HOME/.bashrc) ]]; then
		printf "alias gitp='git push'\n" >> $HOME/.bashrc
	fi
fi

if [[ -z $(grep "^alias pls='sudo \$(history -p !!)'$" $HOME/.bashrc) ]]; then
	printf "alias pls='sudo \$(history -p !!)'\n" >> $HOME/.bashrc
fi

if [[ -z $(grep "^alias fuck='pkill \$1'$" $HOME/.bashrc) ]]; then
	printf "alias fuck='pkill \$1'\n" >> $HOME/.bashrc
fi

if ! [[ -z $(command -v screenfetch) ]]; then
	if [[ -z $(grep "screenfetch -E" $HOME/.bashrc) ]]; then
	printf "screenfetch -E\n" >> $HOME/.bashrc
	fi
fi

if ! [[ -e /root/.bashrc ]]; then
	sudo touch /root/.bashrc
fi

if [[ -z $(sudo grep "^alias ll='ls -l'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias ll='ls -l'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias lh='ls -lh'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias lh='ls -lh'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias la='ls -la'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias la='ls -la'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias syst='systemctl status'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias syst='systemctl status'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias sysr='systemctl restart'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias sysr='systemctl restart'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias syse='systemctl enable'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias syse='systemctl enable'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias sysd='systemclt disable'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias sysd='systemctl disable'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "^alias fuck='pkill \$1'$" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf 'alias fuck=\"pkill \$1\"\n' >> /root/.bashrc"
fi

printf "Aliases added...\n"
