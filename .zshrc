# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Place where your dotfiles folder exist
export ZFILES_HOME="${HOME}/.zfiles"

#export TERM="xterm-256color"

#bindkey -v

## WE ARE NOT USING TERMITE ANYMORE
# if [[ $TERM == xterm-termite ]]; then
#   . /usr/local/etc/profile.d/vte.sh
#   __vte_osc7
# fi

# zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist
zstyle ':completion:*' menu select

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'



setopt  appendhistory
setopt  sharehistory
setopt  incappendhistory

# End of lines configured by zsh-newuser-install

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

source "$ZFILES_HOME/.myzsh_funcs"

source "$ZFILES_HOME/.myzshrc"

source "$ZFILES_HOME/.myzsh_aliases"


####    ZPLUG    ######
export ZPLUG_HOME=$HOME/.zplug
source "$ZFILES_HOME/.zplugrc"


HISTSIZE=100000
SAVEHIST=100000
setopt histignorespace

source "$ZFILES_HOME/.myzshrc.after"
# ctf-tools: gem install
#export PATH=$PATH:/home/kunal/.gem/ruby/2.5.0/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$ZFILES_HOME/.p10k.zsh" ]] || source "$ZFILES_HOME/.p10k.zsh"

export LANG=en_IN.UTF-8

autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /usr/bin/terraform terraform
