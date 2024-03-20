### Environment variables ###
export EDITOR='nvim'
export VISUAL=$EDITOR
export KEYTIMEOUT=1
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export GO11MODULE=on
export PATH="$HOME/.local/bin:$HOME/go/bin:$HOME/node/bin:/usr/local/go/bin:/snap/bin:/sbin:$PATH"
export CHAMBER_KMS_KEY_ALIAS=aws/ssm

if [ -d "/usr/games" ]; then
    export PATH="/usr/games:$PATH"
fi
if [ $(uname -s) = "Darwin" ]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi
# TODO: do we need this?
if [ -d "/usr/local/opt/openssl/lib" ]; then 
    export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"
fi
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
unsetopt PROMPT_CR
# bindkey '^[[A' up-line-or-search
# bindkey '^[[B' down-line-or-search
alias vi=nvim
alias hi="history -5000 | grep $1"
alias ll="lsd -l -I '**/__pycache__'"
alias zshc='nvim "$HOME/.zshrc"'
alias vic='nvim "$HOME/.config/nvim/init.vim"'
alias tmuxc='nvim "$HOME/.tmux.conf"'
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdb="arch -arm64 dlv debug"
alias got="go test -v -race -coverprofile=coverage.txt -covermode=atomic"
alias imgcat="python3 -m imgcat"
# django (python framework) related aliases
alias m="poetry run python manage.py"
alias r="poetry run python manage.py runserver --settings elucd_vault.dev_settings"

eval "$(starship init zsh)"

# Set the color palette
function set_color {
  eval "$1=$2"
}

set_color fuchsia "#F952F9"
set_color turquoise "#00FAFA"
set_color purple "#271D30"
set_color yellow "#F4DB53"

# Set the prompt colors
set_color prompt_symbol_color $fuchsia
set_color hostname_color $turquoise
set_color dir_color $purple
set_color username_color $yellow

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
# Welcome message - fortune piped into a random cow or a plain one on mac
if [ -d /usr/share/cowsay/cows ]; then
    fortune | cowsay -f $(find  /usr/share/cowsay/cows | shuf | head -1) -n
else
    fortune | cowsay
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
# loading zsh plugins
zinit light-mode for \
    djui/alias-tips \
    zsh-users/zsh-completions \
    zsh-users/zsh-syntax-highlighting
