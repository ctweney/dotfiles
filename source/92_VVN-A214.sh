#!/bin/bash
if [ `hostname` == "VVN-A214" ]; then
  export BASH_SILENCE_DEPRECATION_WARNING=1

  # Set PATH, MANPATH, etc., for Homebrew.
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export GPG_TTY=$(tty)

fi
