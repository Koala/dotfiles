# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize




if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# Includes aliases that are created and modified exclusively by the current user.
# This alias file is not recorded in the dotfiles project (GitHub).
if [ -f ~/.bash_aliases_only_actuall_user ]; then
  source ~/.bash_aliases_only_actuall_user
fi

if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

#if [ -f ~/.gitcompletion.bash ]; then
#  source ~/.gitcompletion.bash
#fi

#if [ -f .kubecompletion.bash ]; then
#  source .kubecompletion.bash
#fi

#if [ -f /usr/local/bin/aws_completer ]; then
#  complete -C '/usr/local/bin/aws_completer' aws
#fi

#if [ -f /usr/bin/kubectl ]; then
#  kubectl completion bash | bash
#fi

# Node.js version manager
if [ -d ~/.nvm ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  if [ -f .nvmrc ]; then
    nvm use
  else
    nvm use default
  fi
fi

# Java version manager
#if [ -d "$HOME/.jabba" ]; then
#  source "$HOME/.jabba/jabba.sh"
#  jabba use openjdk@1.14.0
#fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

