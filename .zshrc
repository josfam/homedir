# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

########## CUSTOM ##########

# do not generate python bytecode
export PYTHONDONTWRITEBYTECODE=PLEASE

# my_scripts
export PATH="$PATH:$HOME/programs/my-scripts"
export PATH="$PATH:$HOME/ALX/simple_shell/dev-scripts"
export PATH="$PATH:$HOME/my-repos/automatons"

# .local/bin
export PATH="$PATH:$HOME/.local/bin"

# programs
export PATH="$PATH:$HOME/programs"
export PATH="$PATH:$HOME/programs/waterfox"

# git aliases
alias pall="git add . && git commit && git push"
alias padd="git commit && git push"
alias rebase="git rebase -i"
alias rebaselast="git rebase -i HEAD~1"
alias stash="git stash"
alias rebaselast2="git rebase -i HEAD~2"
alias unstash="git stash pop"
alias pull="git pull"
alias push="git push"
alias fetch="git fetch"
alias st="git status"
alias mainswitch="git checkout main"
alias branches="git branch -a | cat"
alias line="git log --oneline | less"
alias log="git log"
alias add="git add"
alias clone="git clone"
alias unstage="git restore --staged"
alias cmt="git commit"
alias branchit="git checkout -b"
alias unadd="git restore --staged"
alias reseth="git reset --hard"
alias pushf="git push -f"
alias debranchhere="git branch -d"
alias debranchweb="git push -d origin"
alias checkit="git checkout"
alias streamit="git push --set-upstream origin"
alias add.="git add . && git status"

# zshell aliases
alias zload="source ~/.zshrc"
alias zedit="vim ~/.zshrc"

# program aliases
alias pyst="pycodestyle"
alias pysc=",pyscript"
alias py="python3"
alias pymod="python3 -m"
alias pycode="python3 -c"
alias flame="flameshot gui"
alias cmp=",compile"
alias list="ls -alh"
alias v="vim"
alias vpn="protonvpn-cli c"
alias unvpn="protonvpn-cli d"
alias sqlcheck="systemctl status"
alias sqllogin="sudo mysql --auto-rehash -u root"
alias sqlrestart="sudo systemctl restart mysql"
alias sqlstop="sudo systemctl stop mysql"
alias sqlstart="sudo systemctl start mysql"
alias ch="touch"
alias vimedit="vim ~/.vimrc"
alias kl="sudo kill"
alias cl="clear"
alias fontreset="fc-cache -vf"
alias k="clear"
alias out="./a.out"
alias sd="sudo"
alias update="sudo apt update"
alias upgrade="sudo apt-get upgrade"
alias updateupgrade="sudo apt update && sudo apt upgrade"
alias water="~/programs/waterfox"
alias bpy="bpython"
alias readssh="cat ~/.ssh/id_rsa.pub"

# cd aliases
alias repos="cd ~/my-repos/"
alias zshthemes="cd $HOME/.oh-my-zsh/themes"
alias home="cd ~"
alias chinazasessions="cd $HOME/my-repos/chinaza-sessions"

# ALX program aliases
alias chinazashell="cd ~/my_repos/chinaza-sessions/simple_shell/"
alias almostcircle="cd ~/my_repos/alx-higher_level_programming/0x0C-python-almost_a_circle"
alias sortingalgos="cd ~/my_repos/sorting_algorithms"
alias testalmostcircle="python3 -m unittest discover tests"
alias bnb="cd ~/my_repos/AirBnB_clone"
alias testall="python3 -m unittest discover tests"
alias histedit="vim ~/.zsh_history"
alias w3val="$HOME/programs/W3C-Validator/w3c_validator.py"
alias trees="cd $HOME/my-repos/binary_trees"

# Other people's github programs
export PATH="$PATH:$HOME/other-repos/gifski/target/release"

# ========== FUNCTIONS ==========
# run black on all python files in the current location
blackthem() {
    black -S -l 79 $(find . -type f -name '*.py')
}

# pycodestyle
pystthem() {
	pycodestyle --show-pep8 --show-source $(find . -name '*.py')
}

# make all python files executable
mkexecallpy() {
	sudo chmod +x $(find . -type f -name "*.py")
}

# validate all html and css files with Holberton's W3C-Validator
w3all() {
	w3val $(find . -type f \( -name "*.html" -o -name "*.css" \))
}

# Run betty on all c files and header files in the directory, except c files with
# the naming convention, *-main.c
bty() {
	betty $(find . -type f \( -name "*.c" ! -name "*-main*.c" -o -name "*.h" \))
}

alias lintall="blackall && pystall"
