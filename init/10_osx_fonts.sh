#!/bin/bash

is_osx || return 1

cp -f $DOTFILES/fonts/* /Library/Fonts/ 


