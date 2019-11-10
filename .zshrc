#############################
### Environment variables ###
#############################
export EDITOR='nvim'
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
export LC_ALL=en_US.UTF-8
export ANTIBODY_HOME=~/Libary/antibody
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
alias zshc='nvim "$HOME/.zshrc"'
alias vic='nvim "$HOME/.config/nvim/init.vim"'
alias tmuxc='nvim "$HOME/.tmux.conf"'
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
if [ $(uname -s) = "Darwin" ]; then
    fortune | cowsay -f $(find "/usr/local/Cellar/cowsay/3.04/share/" | sort -R | head -1) -n
else
    fortune | cowsay -f $(find  "/usr/share/cowsay/cows/" | shuf | head -1) -n
fi
export PATH="$HOME/.pyenv/bin:$HOME/.local/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
