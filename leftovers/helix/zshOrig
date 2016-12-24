

#function precmd {
#    # OK, I set the prompt here in my original precmd, but that's not the
#    # issue here :)
#    if jobs % >& /dev/null; then
#    psvar=("There are jobs.")
#    else
#    psvar=("")
#    fi
#    # OK, what comes here? see next trick :)
#    (sleep 1 ; show_mode "INSERT") &!
#}
#RPROMPT='%{[0;33m%}%1v%{[0m%}'


#function show_mode () {
    #export VIMODE=$1
    #echo -n $1
    #setprompt
    #RPS1="< %U$1%u >"
    #RPROMPT=' $PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_BLUE$PR_HBAR$PR_SHIFT_OUT\
#($PR_YELLOW%D{%a,%b%d}$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_LRCORNER$PR_SHIFT_OUT$PR_NO_COLOUR'

    #COLUMNS=$[COLUMNS-3]
    #COL=$[COL-$#1]

    #echo -n "7[1;A[$COL;G"
    #echo -n "[0;37;44m--$1--[0m"
    #echo -n "8"
#}

#  show_mode() {
#     COL=$[COLUMNS-3]
#     COL=$[COL-$#1]
#     echo -n "7[1;A[$COL;G"
#     echo -n "[0;37;44m--$1--[0m"
#     echo -n "8"
#  }





###       vi-add-eol (unbound) (A) (unbound)
###              Move  to the end of the line and enter insert mode.
#vi-add-eol() {
#   show_mode "INSERT"
#   builtin zle .vi-add-eol
#}
#zle -N vi-add-eol
#bindkey -M vicmd "A" vi-add-eol

###       vi-add-next (unbound) (a) (unbound)
###              Enter insert mode after the  current  cursor  posi­
###              tion, without changing lines.
#vi-add-next() {
#   show_mode "INSERT"
#   builtin zle .vi-add-next
#}
#zle -N vi-add-next
#bindkey -M vicmd "a" vi-add-next

###       vi-change (unbound) (c) (unbound)
###              Read a movement command from the keyboard, and kill
###              from  the  cursor  position  to the endpoint of the
###              movement.  Then enter insert mode.  If the  command
###              is vi-change, change the current line.
#vi-change() {
#   show_mode "INSERT"
#   builtin zle .vi-change
#}
#zle -N vi-change
#bindkey -M vicmd "c" vi-change

###       vi-change-eol (unbound) (C) (unbound)
###              Kill  to the end of the line and enter insert mode.
#vi-change-eol() {
#   show_mode "INSERT"
#   builtin zle .vi-change-eol
#}
#zle -N vi-change-eol
#bindkey -M vicmd "C" vi-change-eol

###       vi-change-whole-line (unbound) (S) (unbound)
###              Kill the current line and enter insert mode.
#vi-change-whole-line() {
#   show_mode "INSERT"
#   builtin zle .vi-change-whole-line
#}
#zle -N vi-change-whole-line
#bindkey -M vicmd "S" vi-change-whole-line

###       vi-insert (unbound) (i) (unbound)
###              Enter insert mode.
#vi-insert() {
#   show_mode "INSERT"
#   builtin zle .vi-insert
#}
#zle -N vi-insert
#bindkey -M vicmd "i" vi-insert

###       vi-insert-bol (unbound) (I) (unbound)
###              Move to the first non-blank character on  the  line
###              and enter insert mode.
#vi-insert-bol() {
#   show_mode "INSERT"
#   builtin zle .vi-insert-bol
#}
#zle -N vi-insert-bol
#bindkey -M vicmd "I" vi-insert-bol

###       vi-open-line-above (unbound) (O) (unbound)
###              Open a line above the cursor and enter insert mode.
#vi-open-line-above() {
#   show_mode "INSERT"
#   builtin zle .vi-open-line-above
#}
#zle -N vi-open-line-above
#bindkey -M vicmd "O" vi-open-line-above

###       vi-open-line-below (unbound) (o) (unbound)
###              Open a line below the cursor and enter insert mode.
#vi-open-line-below() {
#   show_mode "INSERT"
#   builtin zle .vi-open-line-below
#}
#zle -N vi-open-line-below
#bindkey -M vicmd "o" vi-open-line-below

###       vi-substitute (unbound) (s) (unbound)
###              Substitute the next character(s).
#vi-substitute() {
#   show_mode "INSERT"
#   builtin zle .vi-substitute
#}
#zle -N vi-substitute
#bindkey -M vicmd "s" vi-substitute


###       vi-replace (unbound) (R) (unbound)
###              Enter overwrite mode.
#vi-replace() {
#   show_mode "REPLACE"
#   builtin zle .vi-replace
#}
#zle -N vi-replace
#bindkey -M vicmd "R" vi-replace

###       vi-cmd-mode (^X^V) (unbound) (^[)
###              Enter  command  mode;  that  is, select the `vicmd'
###              keymap.  Yes, this is bound  by  default  in  emacs
###              mode.
#vi-cmd-mode() {
#   show_mode "NORMAL"
#   builtin zle .vi-cmd-mode
#}
#zle -N vi-cmd-mode
#bindkey -M viins "" vi-cmd-mode

#source .zsh-prompt

### General config sets
#export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:ex=01;32:mi=5;31;46:or=5;31;46:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.deb=01;31:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.ppm=01;35:'
#export LS_OPTIONS="-F -B "

#--color=auto"

### Default definitions
export PAGER=/usr/bin/less
export EDITOR='vim -f'
export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/ruby/bin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/sbin:/Users/Mike/bin:/usr/local/sbin
#export PATH=/usr/local/bin:$PATH:/Users/Mike/bin:/Users/Mike/android-sdk-macosx/platform-tools/
#:/opt/local/bin
export LESSKEY=$HOME/.lesskey



command_oriented_history=1
HISTCONTROL='ignoreboth ignoredups'
ulimit -c unlimited
umask 022
mesg y

### LS and V aliases
#alias ls="ls $LS_OPTIONS" #--format=vertical
alias ls="ls -G"
alias v="ls -l"
alias vt="ls -lrt"
alias LL="| less"
#alias l="v"

### History configuration
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=23000
export SAVEHIST=23000

### CD shortcuts
export CDPATH=.

### List of file extensions you wish to ignore on a ls
export FIGNORE="~:.o"

export HISTIGNORE='ls:cd:ls -l'

#setopt share_history
setopt appendhistory
setopt autocd
setopt automenu
setopt autopushd
setopt autoresume
setopt complete_in_word
setopt extended_glob
setopt list_types
setopt mailwarning
setopt no_flowcontrol
setopt no_hup
setopt no_notify
#setopt printexitvalue
setopt pushd_ignoredups
setopt pushd_silent
setopt no_case_glob


setopt hist_ignoredups
setopt hist_ignorespace


#setopt vi-caps-lock-panic


### Making sure your keyboard will work on any terminal
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[6~' end-of-history
bindkey '^[[5~' beginning-of-history
bindkey '^[^I' reverse-menu-complete
bindkey '^[OA' up-line-or-history
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history
bindkey '^[OB' down-line-or-history
bindkey '^[OD' backward-char
bindkey '^[OC' forward-char
bindkey '^[[[A' run-help
bindkey '^[[[B' which-command
bindkey '^[[[C' where-is
bindkey '^D' list-choices
bindkey '^H' backward-delete-word
bindkey -M viins '^H' backward-delete-word
bindkey -M viins '^\b' backward-delete-word

#bindkey -M viins '^R' history-incremental-search-backward


bindkey -M viins '^O' copy-prev-shell-word
bindkey '^L' push-line-or-edit
bindkey -M viins '^L' push-line-or-edit
bindkey '^J' run-help
bindkey -M viins '^\J' run-help
#bindkey -M viins '<BS>' delete-char

bindkey -v

alias '..'='cd ..'
alias -g ...='../..'
alias -g '.2'='...'
alias -g ....='../../..'
alias -g '.3'='....'
alias -g .....='../../../..'
alias -g '.4'='.....'
alias -g ......='../../../../..'
alias -g '.5'='......'
alias -g .......='../../../../../..'
alias -g '.6'='.......'

### Push History from previous sessions
fc -R $HISTFILE

### Forcing the rehash
_force_rehash() {
  (( CURRENT == 1 )) && rehash
  return 1
}


### Aliasing "run-help"
autoload run-help

### Loading the compinit
autoload -U compinit
compinit -C
#compinit

### Loading the completion style
#zstyle ':completion:*' completer _oldlist _expand _force_rehash _complete

## case-insensitive (all),partial-word and then substring completion
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
#           'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# ENVIRONMENT VARIABLES
export LESS='-X -R'
export CC=gcc
export HISTIGNORE="ls:ls -l:cd"

source ~/.dev
#source ~/.aliases
#source ~/.shortcuts
#unalias reload
alias reload='source ~/.zshrc'

alias -g fixXml='sed -e "s/\(<\/[^>]*>\)/\1\n/g" -e "s/\(<[^>]*\/>\)/\1\n/g"'
#
#
#
### functions ####

function mdc {
    mkdir "$1" && cd "$1"
}


function evaas { 
    curl -H "Content-Type: application/json" -w "\n\n%{http_code}\n" "http://localhost:8080/evaas/rest/determination/cev/" -d @"$1" 
}

function evaasDev { 
    curl -H "Content-Type: application/json" -w "\n\n%{http_code}\n" "http://devap03:8080/evaas/rest/determination/cev/" -d @"$1" 
}
function mvcd () {
  mv "$1" "$2" && cd "$2"
}

function smdc () {
	sudo mkdir "$1" && sudo chown mike:staff "$1" && cd "$1"
}

alias md=mkdir -p

function shortcut () {
    echo "$1"=$(pwd) >> ~/.shortcuts
    source ~/.shortcuts
    cd ~"$1"
}
alias shrt=shortcut
alias sc=shortcut


function archive () {
    bkup $1
    rm -r $1
}

function calc () {
	result=$(($*)) 
	echo "$*=$result"
}


function x () {
    xargs -I {} "$1"
}

#alias ls='ls -F -B --color=auto -h'
alias dir='ls --color=auto --format=vertical -h'
#alias vdir='ls --color=auto --format=long'

alias grep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias pgrep='pgrep --color=auto'


##### TYPOS ###########
alias chomd='chmod'
alias givm='gvim'

#### CUSTOM ALIASES ######
alias editBash='gvim ~/.bashrc +'
alias editVim='gvim ~/_vimrc +'
alias editZsh='gvim ~/.zshrc +'

alias syn='sudo nohup synaptic &> /dev/null &'
alias clip='xclip -sel clip'

alias cd..="cd .."
alias cd,,="cd .."

alias sl='ls'

alias givm="gvim"
alias gvm="gvim"
alias reload='source ~/.zshrc'

alias shutdown='sudo shutdown -h now'
alias restartComputer='sudo shutdown -r now'
alias apti="sudo aptitude install"
alias apts='sudo apt-cache search'
alias ai='sudo aptitude install'
alias as='sudo apt-cache search'
alias yi="sudo yum install"
alias ys="yum search"
alias nat='nautilus'

function a () {
    awk "{i = $1; print \$i  }"
}

function f () {
    find . -name "$1"
}

rot13 () { tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]" }

alias cm='chmod'
alias md='mkdir -p'
alias df="df -hT"
alias lsd='ls -ld *(-DN)'


alias -g S='&> /dev/null &'

#### single letter aliases ###
#alias -g c='cat'
alias cx='chmod +x'
#alias -g g='egrep -i'
#alias -g G='| egrep -i'
alias j='jobs'
alias h='history -230'
alias h5='history -10000'
alias h10='history -10000'
alias h23='history -23000'
alias -g l='less'
alias r='rm -r'
#alias -g t='tar -txzf'
#alias cal='cal -3'


function pg () {
    ps aux | grep -i "$1" | grep -v 'grep'
}

# for posterity
#function sqlCentral() {
#   nlwrap sqlplus developer/fuel@fccgp01.motricity.com @"$1"
#}
#
#function sqlContent() {
#  nlwrap sqlplus qamon/qamon@cgatldb @"$1"
#}
#

function lsofgu() {
 lsofg "$1" | a 2 | uniq
}

function lsofg() {
    sudo lsof 2>&1 | grep "$1" | grep -v WARNING
}

function swap() {
	TEMPFILE=$(perl -e 'print time;')
	mv $1 $TEMPFILE
	mv $2 $1
	mv $TEMPFILE $2
}


export XDG_CONFIG_HOME=/home/mike

#alias -g CA="2>&1 | cat -A"
#alias -g W='| wc -l'
#alias -g DN=/dev/null
#alias -g EG='|& egrep'
#alias -g EH='|& head'
#alias -g EL='|& less'
#alias -g ELS='|& less -S'
#alias -g ETL='|& tail -20'
#alias -g ET='|& tail'
#alias -g F=' | fmt -'
alias -g H='| head'
alias -g HL='|& head -20'
#alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias -g LL="2>&1 | less"
alias -g L="| less"
#alias -g LS='| less -S'
#alias -g MM='| most'
#alias -g M='| more'
alias -g NE="2> /dev/null"
#alias -g NS='| sort -n'
alias -g NULL="> /dev/null 2>&1"
#alias -g R=' > /c/aaa/tee.txt '
#alias -g RNS='| sort -nr'
##alias -g S='| sort'
#alias -g TL='| tail -20'
alias -g T='| tail'
alias -g US='| sort -u'
alias -g SUM="echo perl -ne \'\$num += $_; END { print \$num . \"\\n\";}\'"
#alias -g VM=/var/log/messages
#alias -g X0G='| xargs -0 egrep'
#alias -g X0='| xargs -0'
#alias -g XG='| xargs egrep'
#alias -g X='| xargs'


function rbg() {
    nohup $* 2>&1 > /dev/null &
}

alias vm="mv" 
alias cap="ru"
alias find='find .'


#alias ajd='autojump -a `pwd`'
#alias j=autojump
#. /usr/local/etc/autojump.zsh
#export AUTOJUMP_IGNORE_CASE=1
#
alias startml='nohup VBoxHeadless --startvm MarkLogicRHEL &'

alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

function vpn-dev() {

    echo "Paste password" 
    cat | sudo openconnect --authgroup=FFE-Dev -b --no-cert-check -u mbattles --passwd-on-stdin https://sslvpn.ecap.cms.gov
}
function vpn-mgmt() {

    echo "Paste password" 
    cat | sudo openconnect --authgroup=FFE-Mgmt -b --no-cert-check -u mbattles --passwd-on-stdin https://sslvpn.ecap.cms.gov
}

alias updateDPM="rsync -ravz -e "ssh -i /home/mike/prod/prod_rsa" ~/dpm/lib dpm@prodap12:dpm/"


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


#source ~/dpm/dpmrc

alias idlebuild='mvn clean install -DLocalInstall -P!harness,!scenarios,!examples,!marklogic,!utils'
#alias lazygit="git add .; git commit -a -m '$*'; git push;";

function lazygit {
    git add .
    git commit -a -m "$*"
    git push
}

JDK8="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/jre/bin/java"


alias gs='git status'


echo
echo
fortune
echo 
echo



