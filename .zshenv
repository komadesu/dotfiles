### This file is .zshenv ###
#
# The role is to set Environment Variables
# This file is loaded by .zshrc

##### PATH環境変数の設定管理コマンドスタート #####
# This is the default PATH env var
# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH

# customize and export PATH
PATH=$PATH:./node_modules/.bin
PATH=$PATH:$HOME/.nodebrew/current/bin
PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.rbenv/shims/ruby
PATH=$PATH:/Applications/MAMP/Library/bin
export PATH

##### PATH環境変数の設定管理コマンドエンド #####


##### Shell Integration (shell 統合) curl -L https://iterm2.com/misc/install_shell_integration.sh | bash このコマンドでインストールから自動挿入までされた  #####
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
##### Shell Integration エンド #####


##### set up rbenv shell integration スタート #####
# homebrew 経由で rbenv をインストールした。 rbenv と shell を統合して rbenv を動作することができるようにするためのコマンド rbenv init を shell 立ち上げ時に毎回自動実行させる。(https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell)
eval "$(rbenv init -)"
##### set up rbenv shell integration エンド #####

