#!/bin/zsh
ABBREVS_ZSH="$ABBREVIATIONS_HOME/.abbrevs.zsh"


COMMANDS=$ABBREVIATIONS_HOME/commands.conf



function abbreviate(){
  sed "/^#/d" $COMMANDS | sed "/^$/d" | awk -F' ' '{first=$1; $1=""; print "abbrev-alias -g "first"=""\""$0"\""}' | sed 's/=\" /=\"/' > $ABBREVS_ZSH ;
  source $ABBREVS_ZSH ;
}
