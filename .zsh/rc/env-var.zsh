### This file is env-bar.zsh ###
#
# The role is to set Environment Variables
# This file is loaded by .zshrc

##### PATH環境変数の設定管理コマンドスタート #####
# This is the default PATH env var
# PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH

# customize and export PATH
PATH=$PATH:./node_modules/.bin
PATH=$HOME/.nodebrew/current/bin:$PATH
PATH=$PATH:$HOME/.config/yarn/global/node_modules/.bin
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.rbenv/shims/ruby
#PATH=$PATH:/Applications/MAMP/Library/bin
export PATH

##### PATH環境変数の設定管理コマンドエンド #####


##### Shell Integration (shell 統合) curl -L https://iterm2.com/misc/install_shell_integration.sh | bash このコマンドでインストールから自動挿入までされた  #####
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
##### Shell Integration エンド #####


##### set up rbenv shell integration スタート #####
# Configure the shell environment for rbenv
# homebrew 経由で rbenv をインストールした。
# rbenv と shell を統合して rbenv を動作することができるようにするためのコマンド
# rbenv init を shell 立ち上げ時に毎回自動実行させる。
# URL: https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell
eval "$(rbenv init -)"
##### set up rbenv shell integration エンド #####


##### Javaが動作するために必要なCLASSPATH環境変数の設定スタート #####
# CLASSPATH環境変数で設定したディレクトリをjavaは参照する
# export CLASSPATH=.:/Library/Java/Extensions/*
#
# Javaアプリケーションからpostgresqlへの接続を行うためのJDBCドライバのファイルがこのjarファイル
# 今回はこのバージョンをhttps://jdbc.postgresql.org/download.htmlからダウンロードしてきたので明示しておく
# 新しいバージョンなど異なるドライバを使う場合は適宜修正する
export CLASSPATH=.:/Library/Java/Extensions/postgresql-42.2.19.jar
##### Javaが動作するために必要なCLASSPATH環境変数の設定エンド #####


##### Homebrew経由でインストールしたPostgreSQLを動作させる時に参照するデータディレクトリのための環境変数 スタート #####
# PostgreSQLサーバーを動かすとき
# command: postgres -D /usr/local/var/postgres
# このデフォルトで決められているディレクトリを-Dオプションで参照するようにしなければならないが、
# 毎度指定するのが面倒なため、PGDATA環境変数でそれを設定することができるようになっている
# PostgreSQLは基本的にローカルにおいては練習用にHomebrew経由でインストールしたが、
# この場合Homebrewのコマンドでもpostgresの制御、つまりサーバ立ち上げやストップ等できるコマンドが準備されている、例として
# command: brew services start postgresql (練習であればstartよりrunの方が良さそう、理由はhelp見ればわかる)
# このようにするとバックグラウンドモードでサーバを立ち上げられるのがメリットらしい、また
# command: brew services
# でbrew servicesコマンド経由で制御可能なサービス一覧がわかる。現状postgresのみ
export PGDATA=/usr/local/var/postgres
##### Homebrew経由でインストールしたPostgreSQLを動作させる時に参照するデータディレクトリのための環境変数 エンド #####

