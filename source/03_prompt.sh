
# nice prompt for xterm
case $TERM in
     xterm*)
        PS1="\[\033]0;\u@localhost: \w \007\]localhost:\w $ "
        ;;
     *)
        PS1="bash\$ "
        ;;
esac
