#give color to ls
export TERM='xterm-color'
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

if [ -f ~/.git-prompt.sh ];
then
  source ~/.git-prompt.sh
else
  cp `locate git-prompt.sh` ~/.git-prompt.sh && source ~/.git-prompt.sh
fi

if [ -f ~/.git-completion.sh ];
then
  source ~/.git-completion.sh
else
  cp `locate git-completion.bash` ~/.git-completion.sh && source ~/.git-completion.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true

PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

#git aliases
alias gp="git pull --rebase"
alias gpp="git pull --rebase && git push"
alias gs="git stash"
alias gsp="git stash pop"
alias gl="git log"
alias gd="git diff"

#heroku aliases
alias hr="heroku restart"
alias hl="heroku logs"
alias hlt="heroku logs --tail"

#bundler aliases
alias bi="bundle install"
alias be="bundle exec"
alias bu="bundle update"
alias bus="bundle update --source"

#general shell aliases
alias ll="ls -l"
alias la="ls -a"
alias grep="grep --color"

set -o emacs

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
