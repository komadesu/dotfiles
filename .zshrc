##### oh-my-zsh の設定スタート #####
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# oh-my-zshで利用できるテーマを指定
# ZSH_THEME="candy"
# ZSH_THEME="fletcherm"
# ZSH_THEME="dpoggi"
ZSH_THEME="michelebologna"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# oh my zsh で利用するプラグインを指定
plugins=(git zsh-syntax-highlighting zsh-completions)

# すっきりしたプロンプト表示 (不要ならコメントアウト)
PROMPT='%~ %# '

# oh-my-zsh に変更を適用
source $ZSH/oh-my-zsh.sh
##### oh-my-zsh の設定エンド #####



##### zsh の設定スタート #####
# zsh-completionsの設定、コマンド補完機能
autoload -U compinit && compinit -u

# git のカラー表示
git config --global color.ui auto

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# 文字コードの指定
export LANG=ja_JP.UTF-8

# 色を使用できるようにする
autoload -Uz colors
colors

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cdなしでディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep

# ビープ音の停止(補完時)
setopt nolistbeep

# cd <tab>で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ (履歴) を保存、数を増やす
# HISTFILE=~/.zsh_history
# HISTSIZE=100000
# SAVEHIST=100000

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# NPM_PACKAGES="${HOME}/.npm-packages"


### PATH環境変数の設定管理コマンドスタート ###
# export statement for reset
# export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# export statement for customize
# export PATH=$PATH:./node_modules/.bin:~/.npm-global/bin:/Applications/MAMP/Library/bin
export PATH=./node_modules/.bin:$HOME/.nodebrew/current/bin:$HOME/.config/yarn/global/node_modules/.bin:~/.npm-global/bin:/Users/komatsugata/.rbenv/shims/ruby:/Applications/MAMP/Library/bin:$PATH
# export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH

### PATH環境変数の設定管理コマンドエンド ###
##### zsh の設定エンド #####


##### Shell Integration (shell 統合) curl -L https://iterm2.com/misc/install_shell_integration.sh | bash このコマンドでインストールから自動挿入までされた  #####
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
##### Shell Integration エンド #####


##### set up rbenv shell integration スタート #####
# homebrew 経由で rbenv をインストールした。 rbenv と shell を統合して rbenv を動作することができるようにするためのコマンド rbenv init を shell 立ち上げ時に毎回自動実行させる。(https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell)
eval "$(rbenv init -)"
##### set up rbenv shell integration エンド #####


##### alias スタート #####
# note: you can see all aliases set by
# command: alias
# There are more git aliases set by something, maybe oh-my-zsh?, other than these here.
# alias

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

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'

## global alias
# set by -g option
alias -g @g='| grep'
alias -g @l='| less'

## linux command
alias rmrf='rm -rf'

##### alias エンド #####


##### credentials スタート #####
source ~/.credentials.sh
##### credentials エンド #####
