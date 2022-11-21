#!/bin/bash
if [ `hostname` == "VVN-A214" ]; then
  export BASH_SILENCE_DEPRECATION_WARNING=1

  export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
  export HISTSIZE=100000                   # big big history
  export HISTFILESIZE=100000               # big big history
  shopt -s histappend                      # append to history, don't overwrite it

  # Set PATH, MANPATH, etc., for Homebrew.
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export GPG_TTY=$(tty)

fi
