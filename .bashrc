export PATH=/usr/local/src/webmachine/scripts:~/bin:/usr/local/src/scala-2.8.1.final/bin:~/.cabal/bin:/usr/local/bin:/usr/local/sbin:/usr/local/src/android-sdk-mac_x86/tools:/usr/local/src/android-sdk-mac_x86/platform-tools:/local/src/go/bin:$PATH

#give color to ls
export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

#instiki runs in production mode unless specified otherwise
# export RAILS_ENV=development

#openvoice2 required variables
export DIAL_TO=zlu@iptel.org,openvoice@iptel.org

#openvoice2 aliases
alias ov_start="RAILS_ENV=development foreman start"
alias rov_start="CONNFU_JABBER_URI=jid://usera:1@173.255.241.49 RAILS_ENV=development foreman start"

#openvoice required variables
export TROPO_APP=98754
export TROPO_USER=zlu
export TROPO_PASS=flute

#dogfood required variabls - temp rewrite openvoice
export TROPO_APP=139325
export TROPO_USER=thelab
export TROPO_PASS=standard99

alias tunnelr_start="rake tunnel:tunnel:start"
alias cdconf="cd ~/projects/configurations"
alias cdwiki="cd ~/projects/me/instiki"
alias cdov="cd ~/projects/ov/openvoice"
alias cdov2="cd ~/projects/thelab/openvoice2"
alias cddf="cd ~/projects/ov/dogfood"
alias cdwdm="cd ~/projects/facebookstuff/whodeletedme"
alias cdlab="cd ~/projects/thelab"
alias cdplay="cd ~/projects/thelab/play"
alias cdcf="cd ~/projects/thelab/connfu"
alias cdcfa="cd ~/projects/thelab/connfu/addon"
alias tailprism="tail -f /Applications/prism/logs/sipmethod.log"

#git aliases
alias gp="git pull --rebase"
alias gpp="git pull --rebase && git push"

#heroku aliases
alias hr="heroku restart"
alias hl="heroku logs"
alias hlt="heroku logs --tail"

#bundler aliases
alias bi="bundle install"
alias be="bundle exec"

#general shell aliases
alias ll="ls -l"
alias la="ls -a"
alias grep="grep --color"

set -o emacs

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
