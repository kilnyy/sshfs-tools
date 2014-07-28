# bash completion support for sshfs-tools.
# also path info add for sshfs-tools.
#
# To use these routines:
#
#    1) Copy this file to somewhere (e.g. ~/.sshfs-tools.sh).
#    2) Add the following line to your .bashrc:
#        source ~/.ssh-tools.sh
#    3) restart your bash


# path to your mount_point
export SSHFS_TOOLS_DIR=~/remote

export SSHFS_TOOLS_HISTORY=~/.sshfs-tools_history

if [ ! -e "$SSHFS_TOOLS_HISTORY" ] ; then
    touch "$SSHFS_TOOLS_HISTORY"
fi

function __addfs_HUB() {
    local word="${COMP_WORDS[COMP_CWORD]}"
    local at_last=@`echo ${word} | cut -d@ -f 1`
    local at_cur=@`echo ${word} | cut -d@ -f 2`
    local colon_last=`echo ${word} | cut -d: -f 1`
    local colon_cur=`echo ${word} | cut -d: -f 2`
    if [ $at_cur = $at_last ] ; then
        local cur=${word}
        local options=`cat "$SSHFS_TOOLS_HISTORY"`
    else
        if [ $colon_cur = $colon_last ] ; then
            local cur=${at_cur}
            local options=`cat "$SSHFS_TOOLS_HISTORY" | awk 'BEGIN{FS="@"} h="@" {print h$2}'`
        else
            local cur=${colon_cur}
            local options=`cat "$SSHFS_TOOLS_HISTORY" | awk 'BEGIN{FS=":"} {print $2}'`
        fi
    fi
    COMPREPLY=( $(compgen -W "${options}" -- ${cur}) )
}

complete -F __addfs_HUB addfs

function __rmfs_HUB() {
    local word="${COMP_WORDS[COMP_CWORD]}"
    local options=`ls ${SSHFS_TOOLS_DIR}`
    COMPREPLY=( $(compgen -W "${options}" -- ${word}) )
}

complete -F __rmfs_HUB rmfs
