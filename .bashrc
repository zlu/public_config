export PATH=/usr/local/src/webmachine/scripts:~/bin:/usr/local/src/scala-2.8.1.final/bin:~/.cabal/bin:/usr/local/bin:/usr/local/src/android-sdk-mac_x86/tools:/usr/local/src/go/bin:$PATH

#openvoice required variables
export TROPO_APP=98754
export TROPO_USER=zlu
export TROPO_PASS=flute

alias cdov="cd ~/projects/openvoice"
alias cdwdm="cd ~/projects/facebookstuff/whodeletedme"

#heroku alias
alias hl="heroku logs"

alias ll="ls -l"
alias la="ls -a"
alias grep="grep --color"

set -o emacs

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.