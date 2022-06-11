# Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +'PlugInstall --sync' +qa

cd ~/.local/share/nvim/plugged/YouCompleteMe && python3 install.py --all 