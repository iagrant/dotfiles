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

#fixes vi-mode prompt in powerlevle9k
zle-keymap-select () {
	zle reset-prompt
	zle -R
}

zle -N zle-keymap-select
POWERLEVEL9K_MODE='awesome-fontconfig'

#POWERLEVEL9K_VI_INSERT_MODE_STRING="\ue285"
#POWERLEVEL9K_VI_COMMAND_MODE_STRING="\ue20c"
#
#prompt_zsh_showStatus () {
#  state=`spotify-cli now-playing`;
#  if [ $state = "Spotify service not found - is it running?" ]; then
#
#  else
#    artist=`spotify-cli now-playing | grep "spotify_artist_name" | cut -d'=' -f2`
#    track=`spotify-cli now-playing | grep "spotify_track_name" | cut -d'=' -f2`
#
#    echo -n "$artist - $track";
#  fi
#}

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs_joined vi_mode time)
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
DEFAULT_USER='dialect'
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

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'

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
