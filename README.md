# dotfiles

A dotfiles to start from.

## Installation

You first need to get yadm - yet another dotffile management. In OSX it's `brew
install yadm` and on Ubuntu it's `apt install git yadm`.

Once you have yadm, fork this repo and then `yadm clone <fork's url>`.
It should ask you whether to run the bootstrap file. Answer yes and it'll be installed 
and configured for you.

If it fails, please copy the screen output and paste into an issue and mark it as a bug.

## Batteries Included

* zsh - a popular shell
* tmux - a terminal multiplexer: lets you switch easily between several
  programs in one terminal
* neovim - The 5th incranation of 
[qed](https://twobithistory.org/2018/08/05/where-vim-came-from.html) and the
best editor bar emacs.
* [direnv](https://direnv.net/) - shell extension for loading local env vars
* [antibody](http://getantibody.github.io/) - zsh plugin manager
* [tpm](https://github.com/tmux-plugins/tpm) - tmux plugin manager
* [liquid prompt](https://github.ocm/nojhan/liquidprompt) - the best prompt, ever
* [alias-tips](https://github.com/djui/alias-tips) - reminding you of aliases
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* [zsh-completions](https://github.com/zsh-users/zsh-completions) - for missing completions
* [tpm](https://github.com/tmux-plugins/tpm) - tmux plugin manager
* [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) - sensible settings
* [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) 
seamless navigation between 
* [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
* [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat)
* [tmux-open](https://github.com/tmux-plugins/tmux-open)
* [ale](https://github.com/dense-analysis/ale) - asynchrounous python linting


## Commands

* `hi` - to print last 100 commands
* `vi` - for neovim, the 4th incaranation of `ed`, named after the 2nd
* `lg` - concise vim log & tree

Using ^ for ctrl:

### Splitting windows:

    * ^a | - split verticlly  
    * ^a - - split verticlly  

### Pane Navigation:

    * ^a ^h - move one pane right
    * ^a ^l - move one pane left
    * ^a ^j - move one pane down
    * ^a ^k - move one pane up

### State

    * ^a ^s - Saving current windows and panes
    * ^a ^r - Restore the last saved windows and panes

