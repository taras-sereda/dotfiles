# dotfiles

## Installation
1. cp .tmux.conf $HOME/
1. cp .vimrc $HOME/

## Vimrc Post Installation
1. Open vim and run `:PlugInstall` to install plugins listed in the config
1. YouCompleteMe requires to run additional installation step: `cd $HOME/.vim/plugged/YouCompleteMe && python3 install.py --clang-completer`


## tmuxp
1. mkdir ~/.config/tmuxp
2. cp tmux-ml.yaml ~/.config/tmuxp/
3. tmuxp load tmux-ml

## misc
1. `urldecode` - decodes url encoded file with python's `urllib.parse`

   Example:`urldecode < file.txt`

