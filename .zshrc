#############################
### Environment variables ###
#############################
export EDITOR='nvim'
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
export ANTIBODY_HOME=~/Libary/antibody
if [ -d "/usr/local/opt/openssl/lib" ]; then 
    export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"
fi
# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# antibody
source <(antibody init)
antibody bundle < ~/.zsh_plugins
# direnv
eval "$(direnv hook zsh)"
# *** A Fittest IDE ***
bindkey -v
setopt extendedhistory
setopt appendhistory
setopt sharehistory
setopt histexpiredupsfirst
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
alias vi=nvim
alias hi="history -100"
alias ab="antibody"
alias ide='[ -z "$TMUX" ] && [ -z "$VIM" ] && tmux new-session -ADs afide'
alias dide="docker run -ti afide tmux new-session -ADs afide "
alias ll="ls -l"
alias zshc='nvim "$HOME/.afide/config/zshrc"'
alias vic='nvim "$HOME/.afide/config/init.vim"'
alias tmuxc='nvim "$HOME/.afide/config/tmux.conf"'
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

