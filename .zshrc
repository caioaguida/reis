# Configurações do zsh

# Prompt

setopt autocd
autoload -U promptinit

# Core e Afins
autoload -U colors && colors
PS1="%B%{$fg[magenta]%}[%{$fg[cyan]%}%n%{$fg[red]%}@%{$fg[yellow]%}%M %{$fg[red]%}%(4~|%-2~.../%2~|%~)%{$fg[magenta]%}]%{$reset_color%}𐂀%b "
# PS1 = "%B%{$fg[magenta]%}[]%{$reset_color}a%b "


# History in cache directory:
HISTFILE=~/.cache/zshhistfile
HISTSIZE=1000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/silenux/.zshrc'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

bindkey '^A' beginning-of-line
bindkey "\e[3~" delete-char

# Aliases
alias vim="nvim"
alias ls="ls --group-directories-first --color"
alias nlp="pyenv activate nlp"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
export PYENV_ROOT="$HOME/.pyenv"
export EDITOR="/bin/nvim"
export PATH="$PYENV_ROOT/bin:$PATH:/home/silenux/.treetag/cmd:/home/silenux/.treetag/bin:/home/silenux/.anaconda3/bin/"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/silenux/.anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/silenux/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/silenux/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/silenux/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

