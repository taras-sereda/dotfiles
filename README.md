# dotfiles

## Installation
1. cp .tmux.conf $HOME/
1. cp .vimrc $HOME/
1. cp relevant part of .bashrc to $HOME/.bashrc
1. cp .fdignore to git repo

## Dependecies
1. vim-plug - vim plugin manager. Follow official installation [instructions](https://github.com/junegunn/vim-plug?tab=readme-ov-file#vim) to install
1. fd - `cargo install fd-find`
1. fzf - follow official insallation instratcion to [install from sources](https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)

## Vimrc Post Installation
1. Open vim and run `:PlugInstall` to install plugins listed in the config
1. YouCompleteMe requires to run additional installation step: `cd $HOME/.vim/plugged/YouCompleteMe && python3 install.py --clang-completer`


## tmuxp
1. mkdir $HOME/.config/tmuxp
1. cp tmux-ml.yaml $HOME/.config/tmuxp/
1. tmuxp load tmux-ml

## misc
1. `urldecode` - decodes url encoded file with python's `urllib.parse`

   Example:`urldecode < file.txt`

