export PATH=/usr/local/src/webmachine/scripts:~/bin:/usr/local/src/scala-2.8.1.final/bin:~/.cabal/bin:/usr/local/bin:/usr/local/sbin:/usr/local/src/android-sdk-mac_x86/tools:/usr/local/src/android-sdk-mac_x86/platform-tools:/local/src/go/bin:$PATH

#give color to ls
export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

#openvoice required variables
export TROPO_APP=98754
export TROPO_USER=zlu
export TROPO_PASS=flute

#dogfood required variabls - temp rewrite openvoice
export TROPO_APP=139325
export TROPO_USER=thelab
export TROPO_PASS=standard99


alias cdov="cd ~/projects/openvoice"
alias cdwdm="cd ~/projects/facebookstuff/whodeletedme"

#heroku alias
alias hl="heroku logs"

alias ll="ls -l"
alias la="ls -a"
alias grep="grep --color"

set -o emacs

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.