# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias pd=pushd
alias bd=popd
alias rm='rm -f'
alias testbed='cd ~/cs253/testbed/'
alias p4='cd ~/cs253/p4/cs253p4/'
alias pdf=okular

export PATH="$HOME/bin:$PATH:."
export PS1="\e[1;36m[\u@\h \W]\$ \e[m"
