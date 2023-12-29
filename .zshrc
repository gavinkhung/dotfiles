# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export VISUAL=lvim
export EDITOR="$VISUAL"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git gh pip python brew node vscode autopep8 tmux gitignore copyfile copypath zsh-autosuggestions vi-mode history-substring-search zsh-syntax-highlighting)

export ZSH_AUTOSUGGEST_STRATEGY="completion"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#9699a3"

HYPHEN_INSENSITIVE="true"

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --exclude /opt/ --exclude /Library/ --exclude /Pictures/ --exclude /Movies/ --exclude /Music/ --exclude /go/'
export FZF_CTRL_T_COMMAND="fd --type directory --strip-cwd-prefix --exclude /opt/ --exclude /Library/ --exclude /Pictures/ --exclude /Movies/ --exclude /Music/ --exclude /go/"

export BAT_THEME="Visual Studio Dark+"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"


source $ZSH/oh-my-zsh.sh
source ~/.zsh-autopair/autopair.zsh
autopair-init

# You may need to manually set your language environment
export LANG=en_US.UTF-8


# Example aliases
alias vi="lvim"
alias vim="lvim"
alias man="tldr"
alias rm="trash"
alias grep="rg"
alias find="fd"
alias ls="exa"
alias du="dust"
alias df="duf"
alias nnn="nnn -de"
alias cat="bat --paging=never"
alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

alias gcc='gcc'
alias g++='g++'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gavinhung/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gavinhung/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gavinhung/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gavinhung/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PATH=$PATH:~/.local/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"


if [ "$TERM_PROGRAM" != tmux ]; then
  neofetch
fi


# opam configuration
[[ ! -r /Users/gavinhung/.opam/opam-init/init.zsh ]] || source /Users/gavinhung/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null



# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

export PATH="/Users/gavinhung/.cargo/bin:/Library/TeX/texbin/:Users/gavinhung/.opam/4.13.0/bin:/Users/gavinhung/opt/anaconda3/bin:/Users/gavinhung/opt/anaconda3/condabin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/gavinhung/.local/bin:/opt/homebrew/opt/fzf/bin:/Users/gavinhung/.rvm/bin:/Users/gavinhung/.local/bin:/Users/gavinhung/.rvm/bin:/opt/homebrew/opt/llvm/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
