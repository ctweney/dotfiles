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

  alias vdev='export AWS_PROFILE=vivun-development ; export AWS_REGION=us-west-2 ; export AWS_DEFAULT_REGION=us-west-2 ; echo AWS_PROFILE=$AWS_PROFILE'
  alias vprod='export AWS_PROFILE=vivun-production ; export AWS_REGION=us-west-2 ; export AWS_DEFAULT_REGION=us-west-2 ; echo AWS_PROFILE=$AWS_PROFILE'
  alias vstage='export AWS_PROFILE=vivun-staging ; export AWS_REGION=us-west-2 ; export AWS_DEFAULT_REGION=us-west-2 ; echo AWS_PROFILE=$AWS_PROFILE'

  alias dev-creds='fix-my-infinity.sh && aws sso login --profile vivun-development && vdev'
  alias prod-creds='fix-my-infinity.sh && aws sso login --profile=vivun-production && vprod'
  alias stage-creds='fix-my-infinity.sh && aws sso login --profile=vivun-staging && vstage'
fi
