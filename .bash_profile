#
# ~/.bash_profile
#

[[ -f ~/.extend.bash_profile ]] && . ~/.extend.bash_profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

# OPAM configuration
. /home/ian/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
