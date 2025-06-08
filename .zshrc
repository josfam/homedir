# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="anon_custom"
# ZSH_THEME="frontcube"
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
# HIST_STAMPS="mm/dd/yyyy" # Would you like to use another custom folder than $ZSH/custom?
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

# sbin
export PATH="$PATH:/usr/sbin/"

# programs
export PATH="$PATH:$HOME/programs"
export PATH="$PATH:$HOME/programs/waterfox"

# git aliases
alias rebase="git rebase -i"
alias rebaselast="git rebase -i HEAD~1"
alias stash="git stash"
alias rebaselast2="git rebase -i HEAD~2"
alias unstash="git stash pop"
alias pull="git pull"
alias push="git push"
alias fetch="git fetch"
alias st="git status"
alias branches="git branch -a | cat"
alias line="git log --oneline | less"
alias log="git log"
alias add="git add"
alias clone="git clone"
alias unstage="git restore --staged"
alias cm="git commit"
alias switch="git switch"
alias cmall="git add . && git commit"
alias branchout="git checkout -b"
alias unadd="git restore --staged"
alias reseth="git reset --hard"
alias pushf="git push --force-with-lease"
alias branchcut="git branch -d"
alias branchcutweb="git push -d origin"
alias branchclean="git fetch --prune"
alias checkout="git checkout"
alias upstream="git push --set-upstream origin"
alias add.="git add . && git status"
alias stashall="git stash --all"
alias commit="git commit"

# switch to main branch , or master branch
mainswitch() {
	git checkout main 2> /dev/null || git checkout master;
}


# zshell aliases
alias zload="source ~/.zshrc"
alias zedit="vim ~/.zshrc"

# program aliases
alias blackthis='black -S -l 79'
alias pyst="pycodestyle"
alias pysc=",pyscript"
alias py38="python3.8"
alias py310="python3.10"
alias py311="python3.11"
alias py312="python3.12"
alias python="python3"
alias py="python3"
alias pymod="python3 -m"
alias pip3="pip"
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
alias val="valgrind --leak-check=full --track-origins=yes"
alias bpy="bpython"
alias readssh="cat ~/.ssh/id_rsa.pub"
alias addgitidentity="ssh-add ~/.ssh/id_ed25519"
alias mkx="sudo chmod +x"
alias vagrantalx="cd ~/vagrant-machines/alx-ubuntu-20.04 && vagrant up && vagrant ssh"
alias xt="exit"
alias vg="vagrant"
alias docker="sudo docker"
alias pgsql="postgresql"
# cd aliases
alias repos="cd ~/my-repos/"
alias zshthemes="cd $HOME/.oh-my-zsh/themes"
alias home="cd ~"
alias ctl="sudo systemctl"

# Other people's github programs
export PATH="$PATH:$HOME/other-repos/gifski/target/release"

# ========== FUNCTIONS ==========
# run the provided mysql file in the provided mysql database, as the mysql user
# `root`. Runs the mysql file generally if no db is provided (useful for
runsql() {
	if [ $# -gt 2 ]; then
		echo "Please provide the correct number of arguments"
		echo "usages:"
		echo "runsql <sql file> <target db>"
		echo "runsql <sql file>"
		return
	fi
	if [ $# -eq 1 ]; then
		# execute across the general mysql (not db specific)
		cat $1 | mysql -uroot
		return
	fi
	cat $1 | mysql -uroot $2
}

# source into a virtualenv
vnv() {
	eval "$(venvit "$@")"
}

# run black on all python files in the current location
blackall() {
    black -S -l 79 $(find . -type f -name '*.py')
}

# pycodestyle
pystall() {
	pycodestyle --show-pep8 --show-source $(find . -name '*.py')
}

# make all python files executable
mkxpy() {
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

startsshagent() {
	eval "$(ssh-agent -s)"
}

alias gitssh="startsshagent && addgitidentity"

registerGitSSHIdentity() {
    # Register identity if the current location is inside a git repo
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        gitssh
		echo "Git identity added. Keys can now be signed with SSH"
    else
        # Do nothing
    fi
}
alias pall="registerGitSSHIdentity && git add . && git commit && git push"

# adds a file, commit it then push it
padd() {
	registerGitSSHIdentity
	if [ $# -gt 1 ]; then
		echo "usages:"
		echo "padd"
		echo "padd <filename>"
	elif [ $# -eq 1 ]; then
		git add $1
		git commit && git push
	else
		git commit && git push
	fi
}

# load vagrant machines
usevagrant() {
	cd ~/vagrant-machines
	cd ubuntu2004focal/
	vagrant up
	vagrant ssh
}

start() {
	if [ $# -ne 1 ]; then
		echo "usage: start <program name>"
		return
	fi
	sudo systemctl start $1
}

stop() {
	if [ $# -ne 1 ]; then
		echo "usage: stop <program name>"
		return
	fi
	sudo systemctl stop $1
}

restart() {
	if [ $# -ne 1 ]; then
		echo "usage: restart <program name>"
		return
	fi
	sudo systemctl restart $1
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# look for an .nvmrc file and load in that node version automatically
if [ -f .nvmrc ]; then
	nvm use
fi

# waterfox
export LD_LIBRARY_PATH=/home/caitlyn/programs/waterfox

# cuda
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-12.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH

# flatpaks
export PATH=/var/lib/flatpak/exports/share:$PATH
export PATH=/home/casey/.local/share/flatpak/exports/share:$PATH


# pnpm
export PNPM_HOME="/home/casey/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/casey/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/casey/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/casey/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/casey/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

