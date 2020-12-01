### Environment variables ###
export EDITOR='nvim'
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
export LC_ALL=en_US.UTF-8
export ANTIBODY_HOME=~/Libary/antibody
export PATH="$HOME/go/bin:$HOME/node/bin:/usr/local/go/bin:/snap/bin:$PATH"
# TODO: do we need this?
if [ -d "/usr/local/opt/openssl/lib" ]; then 
    export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"
fi
# antibody - zsh plugins FTW
source <(antibody init)
antibody bundle < ~/.zsh_plugins
# direnv - loading a local .envrc on cd
eval "$(direnv hook zsh)"
# *** A Fittest IDE ***
bindkey -v
bindkey -M vicmd '?' history-incremental-search-backward
# History
setopt extendedhistory
# setopt appendhistory
setopt sharehistory
setopt histexpiredupsfirst
# bindkey '^[[A' up-line-or-search
# bindkey '^[[B' down-line-or-search
alias vi=nvim
alias hi="history -100"
alias ab="antibody"
if [ $(uname -s) = "Darwin" ]; then
    alias ll="ls -lG"
else
    alias ll="ls -l --color"
fi
alias zshc='nvim "$HOME/.zshrc"'
alias vic='nvim "$HOME/.config/nvim/init.vim"'
alias tmuxc='nvim "$HOME/.tmux.conf"'
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# Welcome message - fortune piped into a random cow
if [ $(uname -s) = "Darwin" ]; then
    fortune | cowsay -f $(find "/usr/local/Cellar/cowsay/3.04/share/" | sort -R | head -1) -n
else
    fortune | cowsay -f $(find  "/usr/share/cowsay/cows/" | shuf | head -1) -n
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias ft='fzf-tmux'
autoload -Uz compinit && compinit
# pure prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:user color '#00FAFA'
zstyle :prompt:pure:host color '#00FAFA'
zstyle :prompt:pure:git:branch color '#00FA00'
zstyle :prompt:pure:git:dirty color '#F952F9'
zstyle :prompt:pure:git:action color '#00FAFA'
zstyle :prompt:pure:git:arrow color '#00FAFA'
zstyle :prompt:pure:git:stash color '#00FAFA'
zstyle :prompt:pure:execution_time color '#00FAFA'
zstyle :prompt:pure:virtualenv color '#00FAFA'
zstyle :prompt:pure:prompt:success color '#D9F505'
zstyle :prompt:pure:prompt:error color '#F952F9'
zstyle :prompt:pure:prompt:continuation color '#00FAFA'
prompt pure
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
