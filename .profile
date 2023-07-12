# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022


#export EDITOR="emacs -nw"
#export LESSCHARSET="utf-8"

#export GTK_IM_MODULE=xim

if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi


# Install Ruby Gems to ~/gems
if [ -d "$HOME/gems" ]; then
  export GEM_HOME="$HOME/gems"
  export PATH="$HOME/gems/bin:$PATH"
fi


### Aufruf der .bashrc erfolgt bereits in der .bash_profile - wird daher hier ignoriert
# if running bash
#if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi


if [ -d "/home/linuxbrew" ]; then
  export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
  export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
  export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
  export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
  export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
fi
#if [ -d "/opt/homebrew" ]; then
#  eval "$(/opt/homebrew/bin/brew shellenv)"
#fi

#if [ -f "$HOME/.cargo/env" ]; then
#  source "$HOME/.cargo/env"
#fi

if [ -f ~/.env ]; then
  source ~/.env
fi

#if [ -e "${HOME}/.iterm2_shell_integration.bash" ]; then
#  source "${HOME}/.iterm2_shell_integration.bash"
#fi

#export LANG=de_DE@UTF-8
#export LANG=de_US@UTF-8
export LANG=en_US@UTF-8
#export LANGUAGE=de_DE@UTF-8
#export LANGUAGE=de_US@UTF-8
export LANGUAGE=en_US@UTF-8
