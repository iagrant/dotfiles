source ~/.antigen/antigen.zsh
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
EDITOR="vim"
setopt extendedglob
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
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
antigen theme bhilburn/powerlevel9k powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs_joined vi_mode time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs_joined time)
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
#DEFAULT_USER='dialect'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=232
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=40
POWERLEVEL9K_DIR_HOME_FORGROUND='black'
POWERLEVEL9K_DIR_HOME_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FORGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='white'
POWERLEVEL9K_DIR_DEFAULT_FORGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='red'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='white'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='yellow'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='white'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='blue'
antigen bundle history
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma/fast-syntax-highlighting
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle python
antigen bundle virtualenv
antigen bundle pip
antigen bundle command-not-found
antigen apply
