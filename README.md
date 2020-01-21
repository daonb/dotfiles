# dotfiles

Dotfiles are the threads that hold the IDE together. Each tool has a configuration file - a dotfile. For the shell it's (.zshrc) for neovim it's the more modern (.config/nvim/init.vim) . 

To keep track of the dotfiles and bootstrap the enviornment we use "yet another dotfiles manager". 

## Installation

You first need to get yadm - yet another dotffile management. In OSX it's `brew
install yadm` and on Ubuntu it's `apt install yadm`.

Once you have yadm, fork this repo and then `yadm clone <fork's url>`.
It will ask you whether to run the bootstrap file. Answer yes and it'll be installed 
and configured for you.

If it fails, DON'T PANIC. 
Please copy the screen output and paste into an issue and mark it as a bug and we'll help.

## Batteries Included

* zsh - a popular shell
* tmux - a terminal multiplexer: lets you switch easily between several
  programs in one terminal
* neovim - The 5th incranation of 
[qed](https://twobithistory.org/2018/08/05/where-vim-came-from.html) the
fittest editor.
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


## Commands

* `hi` - to print last 100 commands
* `vi` - for neovim
* `lg` - concise git log & tree

Using ^ for ctrl:

## Basic Keystrokes

"^" is for CTRL:

### Splitting windows:

    * ^a | - split verticlly  
    * ^a - - split verticlly  
    * ^a x - kill pane 

### Pane Navigation:

The vim-tmux-navigator plugin let's us move seamlessly between vim and tmux panes.

    * ^a ^h - move one pane right
    * ^a ^l - move one pane left
    * ^a ^j - move one pane down
    * ^a ^k - move one pane up

### State

tmux-resurrect let's us store and restore all the panes. As long as you remember to save occasionaly, 

    * ^a ^s - Saving current windows and panes
    * ^a ^r - Restore the last saved windows and panes

