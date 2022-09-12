#!/bin/bash
if [ `hostname` == "beavis.local" ]; then

  # activate brew
  eval "$(/opt/homebrew/bin/brew shellenv)"

  # enable auto-activate for pyenv
  if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

  export BASH_SILENCE_DEPRECATION_WARNING=1

  # enable pyenv
  eval "$(pyenv init -)"

fi
