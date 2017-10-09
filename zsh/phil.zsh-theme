# This theme is based on the extremely instructive theme 
# : http://aperiodic.net/phil/prompt/
#
# It has minor changes, notably git support
#
#
# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}⁘ %{$fg_bold[cyan]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔ "

# Add ✗ if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✗ "


function precmd {

    local TERMWIDTH
    (( TERMWIDTH = ${COLUMNS} - 1 ))
    # Truncate the path if it's too long.
    PR_FILLBAR=""
    PR_PWDLEN=""

    DATELINE=%D{%H:%M:%S}
    local promptsize=${#${(%):---()---($DATELINE)--}}

    ERROR_PROMPT=%(?..$PR_WHITE:$PR_LIGHT_RED%{[%}%?%{]%})\

    local GIT_PROMPT="$(git_prompt_info)"
    local zero='%([BSUbfksu]|([FK]|){*})'
    local gitsize=${#${(S%%)GIT_PROMPT//$~zero/}}

    local pwdsize=${#${(%):-%~}}

    
    if [[ "$promptsize + $pwdsize + $gitsize + 2" -gt $TERMWIDTH ]]; then
	    ((PR_PWDLEN=$TERMWIDTH - $promptsize))
    else
	PR_FILLBAR="\${(l.(($TERMWIDTH - ($promptsize + $pwdsize + $gitsize)))..─.)}"
    fi
    #show_mode 'CMD'
    #(sleep 1 ; show_mode "INSERT") &!
}


setopt extended_glob
preexec () {
    if [[ "$TERM" == "screen" ]]; then
	local CMD=${1[(wr)^(*=*|sudo|-*)]}
	echo -n "\ek$CMD\e\\"
    fi
}


setprompt () {
    ###
    # Need this so the prompt will work.
    setopt prompt_subst
    # See if we can use colors.
    autoload colors zsh/terminfo
    if [[ "$terminfo[colors]" -ge 8 ]]; then
	colors
    fi
    for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
	eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
	eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
	(( count = $count + 1 ))
    done
    PR_NO_COLOUR="%{$terminfo[sgr0]%}"
    # See if we can use extended characters to look nicer.
    typeset -A altchar
    set -A altchar ${(s..)terminfo[acsc]}
    PR_SET_CHARSET="%{$terminfo[enacs]%}"
    PR_SHIFT_IN="%{$terminfo[smacs]%}"
    PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
    PR_HBAR=${altchar[q]:--}
    PR_ULCORNER=${altchar[l]:--}
    PR_LLCORNER=${altchar[m]:--}
    PR_LRCORNER=${altchar[j]:--}
    PR_URCORNER=${altchar[k]:--}
    # Decide if we need to set titlebar text.
    case $TERM in
	xterm*)
	    PR_TITLEBAR=$'%{\e]0;%(!.-=*[ROOT]*=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\a%}'
	    ;;
	screen)
	    PR_TITLEBAR=$'%{\e_screen \005 (\005t) | %(!.-=[ROOT]=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\e\\%}'
	    ;;
	*)
	    PR_TITLEBAR=''
	    ;;
    esac
    # Decide whether to set a screen title
    if [[ "$TERM" == "screen" ]]; then
	PR_STITLE=$'%{\ekzsh\e\\%}'
    else
	PR_STITLE=''
    fi
    ###
    # Finally, the prompt.

    PROMPT='$PR_SET_CHARSET$PR_STITLE${(e)PR_TITLEBAR}\
$PR_CYAN$PR_SHIFT_IN$PR_ULCORNER$PR_BLUE$PR_HBAR$PR_SHIFT_OUT<\
${(e)PR_APM}$PR_YELLOW$DATELINE\
$PR_BLUE>$PR_SHIFT_IN$PR_HBAR$PR_CYAN$PR_HBAR${(e)PR_FILLBAR}$PR_BLUE$PR_HBAR$PR_SHIFT_OUT< \
$PR_MAGENTA%$PR_PWDLEN<...<%~%<< $(git_prompt_info)\
$PR_BLUE>$PR_SHIFT_IN$PR_SHIFT_OUT\

$PR_CYAN$PR_SHIFT_IN$PR_LLCORNER$PR_BLUE$PR_HBAR$PR_SHIFT_OUT%{[%}\
$PR_GREEN%(!.%SROOT%s.%n)$PR_GREEN@%m\
$PR_LIGHT_BLUE$PR_SHIFT_IN%{]%}$PR_SHIFT_OUT\
#$ERROR_PROMPT\
$PR_LIGHT_BLUE%(!.$PR_RED.$PR_BLUE) %# $PR_NO_COLOUR'



    PS2='$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_BLUE$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT(\
$PR_LIGHT_GREEN%_$PR_BLUE)$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT\
$PR_CYAN$PR_SHIFT_IN$PR_HBAR$PR_SHIFT_OUT$PR_NO_COLOUR '
}

setprompt
#show_mode "CMD"

