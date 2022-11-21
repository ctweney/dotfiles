#!/bin/bash
if [ `hostname` == "beavis.local" ]; then

  # activate brew
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # enable auto-activate for pyenv
  if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

  export BASH_SILENCE_DEPRECATION_WARNING=1

  export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
  export HISTSIZE=100000                   # big big history
  export HISTFILESIZE=100000               # big big history
  shopt -s histappend                      # append to history, don't overwrite it

  # enable pyenv
  eval "$(pyenv init -)"
  # and pyenv-virtualenv
  eval "$(pyenv virtualenv-init -)"
fi
