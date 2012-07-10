export PATH=/usr/local/src/webmachine/scripts:~/bin:/usr/local/src/scala-2.8.1.final/bin:~/.cabal/bin:/usr/local/bin:/usr/local/sbin:/usr/local/src/android-sdk-mac_x86/tools:/usr/local/src/android-sdk-mac_x86/platform-tools:/local/src/go/bin:$PATH

#give color to ls
export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

source ~/.git-completion.sh
GIT_PS1_SHOWDIRTYSTATE=true

PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export byobu_prefix=`brew --prefix`

#instiki runs in production mode unless specified otherwise
# export RAILS_ENV=development

#openvoice2 required variables
export DIAL_TO=zlu@iptel.org,openvoice@iptel.org

#openvoice2 aliases
alias rov_start="CONNFU_JABBER_URI=jid://usera:1@173.255.241.49 RAILS_ENV=development foreman start"
alias tunnelr_start="rake tunnel:tunnel:start"

#git aliases
alias gp="git pull --rebase"
alias gpp="git pull --rebase && git push"
alias gs="git stash"
alias gsp="git stash pop"
alias gl="git log"

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
