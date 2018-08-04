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
if [[ -z $(grep "alias ll='ls -l'" $user_path/.bashrc) ]]; then
	printf "alias ll='ls -l'\n" >> $user_path/.bashrc
fi

if [[ -z $(grep "alias lh='ls -lh'" $user_path/.bashrc) ]]; then
	printf "alias lh='ls -lh'\n" >> $user_path/.bashrc
fi

if [[ -z $(grep "alias la='ls -la'" $user_path/.bashrc) ]]; then
	printf "alias la='ls -la'\n" >> $user_path/.bashrc
fi

if [[ -z $(grep "alias syst='systemctl status'" $user_path/.bashrc) ]]; then
	printf "alias syst='systemctl status'\n" >> $user_path/.bashrc
fi


if [[ -z $(grep "alias pls='sudo $(history -p !!)'" $user_path/.bashrc) ]]; then
	printf "alias pls='sudo $(history -p !!)'\n" >> $user_path/.bashrc
fi

if [[ -z $(grep "alias fuck='pkill $1'" $user_path/.bashrc) ]]; then
	printf "alias pls='alias fuck='pkill $1'\n" >> $user_path/.bashrc
fi


if [[ -z $(grep "screenfetch -E" $user_path/.bashrc) ]]; then
	printf "screenfetch -E\n" >> $user_path/.bashrc
fi

if ! [[ -e /root/.bashrc ]]; then
	sudo touch /root/.bashrc
fi

if [[ -z $(sudo grep "alias ll='ls -l'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias ll='ls -l'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "alias lh='ls -lh'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias lh='ls -lh'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "alias la='ls -la'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias la='ls -la'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "alias syst='systemctl status'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias syst='systemctl status'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "alias sysr='systemctl restart'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias sysr='systemctl restart'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "alias syse='systemctl enable'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias syse='systemctl enable'\n\" >> /root/.bashrc"
fi

if [[ -z $(sudo grep "alias fuck='pkill $1'" /root/.bashrc) ]]; then
	sudo runuser -l "root" -c "printf \"alias fuck='pkill $1'\n\" >> /root/.bashrc"
fi
