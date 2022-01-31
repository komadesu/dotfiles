### This file is alias.zsh ###
#
# The role is to set alias by myself, That's it!
# note: you can see all aliases set by
# command: alias
# There are more git aliases set by something, maybe oh-my-zsh?, other than these here.

##### alias #####

## SSH
alias sshk='ssh-keygen -t rsa'
alias vsc='vi ~/.ssh/config'

## Node
alias n='node index.js'

### npm
alias ni='npm install'
alias nu='npm uninstall'
alias nr='npm run'

### yarn
alias ya='yarn add'
alias yr='yarn remove'
alias yi='yarn install'

## git
# Almost here is set by maybe oh-my-zsh default, so comment some out
alias gs='git status'
#alias gaa='git add'
#alias gc-b='git checkout -b'
#alias gc-m='git commit -m'
#alias gp='git push'
alias gbm='git branch -m'
alias grsh='git reset --soft HEAD^'
alias gmv='git mv'
alias gcae='git commit --allow-empty'

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'

## global alias
# set by -g option
alias -g @g='| grep'
alias -g @l='| less'

## linux command
alias rmrf='rm -rf'

