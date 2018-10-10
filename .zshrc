source /usr/share/autojump/autojump.zsh
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle history
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle virtualenv
antigen bundle pip
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
EDITOR="nvim"
alias vim='nvim'
alias msfconsole="msfconsole --quiet -x \"db_connect ${USER}@msf\""
alias openvpnHTB="sudo openvpn ~/.openvpnConfs/Dialect.ovpn"
setopt extendedglob
setopt interactivecomments
unsetopt beep
bindkey -v
bindkey jk vi-cmd-mode
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dialect/.zshrc'
autoload -Uz compinit && compinit
# End of lines added by compinstall
# Disable hostname completion, because it's slow
zstyle ':completion:*' hosts off
