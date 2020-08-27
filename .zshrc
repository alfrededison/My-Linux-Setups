# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

# Options
setopt hist_ignore_dups
setopt hist_expire_dups_first

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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
DISABLE_AUTO_TITLE="false"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
SAVEHIST=99999

# Magic Enter
MAGIC_ENTER_GIT_COMMAND="git status -v && echo -e '\n'"
MAGIC_ENTER_OTHER_COMMAND="lsda && echo -e '\n'"

# Plugins
plugins=(
    alias-tips
    command-not-found
    dirhistory
    extract
    fancy-ctrl-z
#    fasd
    fast-syntax-highlighting
    git
#    globalias
#    magic-enter
#    tmux
#    web-search
    z
    zsh-autosuggestions
    zsh-navigation-tools
)

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Preferences for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   ZSH_THEME="agnoster"
# else
#   # auto start tmux
#   if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#     exec tmux
#   fi
# fi

# Powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon time context newline dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(newline status command_execution_time_joined background_jobs load ram disk_usage)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{014}╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%K{black}%F{blue} \uf135 %f%F{black}%k\ue0b1%f "

# Segment
DEFAULT_USER="hieu"
POWERLEVEL9K_CONTEXT_TEMPLATE="\uf489 %n@$(hostname -f)"
POWERLEVEL9K_BATTERY_LOW_THRESHOLD="30"
POWERLEVEL9K_BATTERY_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=2
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE_ALWAYS=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_VI_COMMAND_MODE_STRING="\ue62b"
POWERLEVEL9K_VI_INSERT_MODE_STRING="\ue62b"
POWERLEVEL9K_TIME_FORMAT="%D{%a,%l:%M %P}"
POWERLEVEL9K_PYTHON_ICON="\ue235"
VIRTUAL_ENV_DISABLE_PROMPT=1
POWERLEVEL9K_SHOW_CHANGESET=false
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$"\uf036"
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$"\uf038"

#Colour
POWERLEVEL9K_COLOR_SCHEME="dark"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="yellow"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="black"
POWERLEVEL9K_BATTERY_CHARGED="green"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND="green"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="black"
POWERLEVEL9K_BATTERY_CHARGING="orange1"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND="orange1"
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="black"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND="cyan"
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="black"
POWERLEVEL9K_BATTERY_LOW_BACKGROUND="red"
POWERLEVEL9K_BATTERY_LOW_COLOR="red"
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="black"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="green"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="purple"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND="purple"
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="blue"
POWERLEVEL9K_DIR_ETC_BACKGROUND="red"
POWERLEVEL9K_DIR_HOME_BACKGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="blue"
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND="red"
POWERLEVEL9K_HISTORY_BACKGROUND="green"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="green"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="yellow"
POWERLEVEL9K_OS_ICON_FOREGROUND="darkcyan"
POWERLEVEL9K_RAM_BACKGROUND="yellow"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"
POWERLEVEL9K_STATUS_OK_BACKGROUND="green"
POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
POWERLEVEL9K_TIME_BACKGROUND="darkcyan"
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND="blue"
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND="black"
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND="black"
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND="white"

source $ZSH/oh-my-zsh.sh

# Commands
export EDITOR=vim
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export GREP_COLOR="1;32"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias: "

export PATH=$HOME/Applications/bin:$PATH
export PATH=$HOME/.node_modules/bin:$PATH

#eval "$(fasd --init posix-alias zsh-hook zsh-ccomp-install zsh-wcomp-install zsh-ccomp zsh-wcomp)"

#Functions
function lc() {
    cd "$1" && la "$2"
}

function mcd() {
    mkdir -p -- "$1" && cd -P -- "$1"
}

function tmux-clean() {
    tmux list-sessions | grep -E -v '\(attached\)$' | while IFS='\n' read line; do
        tmux kill-session -t "${line%%:*}"
    done
}

function xin() {
    (cd "${1}" && shift && ${@})
}

function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;36m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        PAGER="${commands[less]:-$PAGER}" \
        _NROFF_U=1 \
        PATH="$HOME/bin:$PATH" \
        man "$@"
}

function mlc () {
    find $1 -name \*.md -exec markdown-link-check -p {} \;
}

# Aliases
# alias cat="bat"
alias cp="cp -irv"
alias diff="diff --color=auto"
alias fdir="find . -type d -name"
alias ffil="find . -type f -name"
alias gcma="git commit --amend -m"
alias gdh="git diff HEAD"
alias gmv="git mv"
alias gtop='cd "$(git rev-parse --show-toplevel)"'
alias grep="grep --color=auto"
alias la="ls -AXb --group-directories-first --sort=extension"
alias ln="ln -sv"
alias lsda="lsd -A --group-dirs first --classify --no-symlink"
alias lsdo="lsd -A --group-dirs first --classify --no-symlink --recursive --depth=2"
alias mv="mv -iv"
alias ncdu="ncdu --color=dark -x"
alias open="xdg-open"
alias q="exit"
alias rm="rm -irv"
alias reload="source ~/.zshrc"
alias shad="ssh-add ~/.ssh/id_rsa"
alias shag='eval "$(ssh-agent -s)"'
alias tmux="tmux -u"
alias tmuxm="tmux new-session \; split-window -h \; split-window -v \; attach"
# alias vim="nvim"
alias vimrc="$EDITOR ~/.vimrc"
alias zshrc="$EDITOR ~/.zshrc"

alias -s md=vim

alias -g wcc="| wc -m"
alias -g wcl="| wc -l"
alias -g wcw="| wc -w"
