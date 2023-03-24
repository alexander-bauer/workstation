# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#        . /etc/bashrc
#fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Source the .commonrc if available
if [[ -e "$HOME/.commonrc" ]]; then
        source "$HOME/.commonrc"
fi
