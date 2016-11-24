# Path to your oh-my-zsh installation.
export ZSH=/Users/etelford/.oh-my-zsh
export HOMEBREW_GITHUB_API_TOKEN="821739124756075be4e07cb116080bd027ec8e57"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/etc/init.d:/usr/local/bin:/Users/etelford/.composer/vendor/bin:/opt/subversion/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# -------- Aliases ---------
alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdns="sudo killall -HUP mDNSResponder"
alias updatedb="sudo /usr/libexec/locate.updatedb"

alias composer="php /usr/local/bin/composer.phar"

alias cda="composer dumpautoload"
alias hup="homestead up"
alias hssh="homestead ssh"
alias sf="defaults write com.apple.finder AppleShowAllFiles YES"
alias hf="defaults write com.apple.finder AppleShowAllFiles NO"

alias pu="vendor/bin/phpunit"
alias puf="vendor/bin/phpunit --filter="
alias art="php artisan"

#GIT
alias gpo="git pull origin"
alias gp="git pull"

alias gpod="git push origin dev"
alias gpom="git push origin master"
alias gpor="git push origin release"

alias gc="git checkout"
alias gcm="git checkout master"
alias gcb="git checkout -b "

alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl1="git log --oneline"
alias gl="git log"

alias gdr="git push origin --delete"
alias gp="git fetch --prune"

alias ga="git add"
alias gaa="git add ."
alias gcm="git commit -m"

alias gs="git status"
alias gd="git difftool"

alias gshowfiles="git diff-tree --no-commit-id --name-only -r "

#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Homestead
alias hedit="subl ~/.homestead/Homestead.yaml"

alias linksdk="mv microventures-sdk-php microventures-sdk-php.bak; ln -s ../../../../microventures-sdk-php ./"
alias unlinksdk="rm microventures-sdk-php; mv microventures-sdk-php.bak microventures-sdk-php"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Functions
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

function gdb() {
    ( git branch -d $1; git push origin --delete $1; git fetch --prune; )
}

# oh-my-zsh
alias ze="vi ~/.zshrc"

# Forge
function deploy() {
    xargs curl -I < .forge &
}
export PATH="/usr/local/sbin:$PATH"
