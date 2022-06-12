### Environment variables ###
export EDITOR='nvim'
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ANTIBODY_HOME=~/Libary/antibody
export GO11MODULE=on
export PATH="/usr/local/bin:$HOME/go/bin:$HOME/node/bin:/usr/local/go/bin:/snap/bin:/sbin:$PATH"

if [ -d "/usr/games" ]; then
    export PATH="/usr/games:$PATH"
fi
# TODO: do we need this?
if [ -d "/usr/local/opt/openssl/lib" ]; then 
    export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"
fi
# antigen - loading zsh plugins
source $HOME/.zsh/antigen.zsh
antigen bundle mafredri/zsh-async
antigen bundle djui/alias-tips
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
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
alias hi="history -5000 | grep $1"
alias ab="antibody"
alias ll="lsd -l"
alias zshc='nvim "$HOME/.zshrc"'
alias vic='nvim "$HOME/.config/nvim/init.vim"'
alias tmuxc='nvim "$HOME/.tmux.conf"'
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# Welcome message - fortune piped into a random cow
if [ $(uname -s) = "Darwin" ]; then
    fortune | cowsay -f /usr/local/Cellar/cowsay/3.04/share/cows/kosh.cow
else
    fortune | cowsay -f $(find  "/usr/share/cowsay/cows/" | shuf | head -1) -n
fi

eval "$(starship init zsh)"

# pure prompt
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
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daonb/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daonb/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daonb/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daonb/google-cloud-sdk/completion.zsh.inc'; fi

 export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
