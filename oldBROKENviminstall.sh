echo Exporting packages
echo .vimrc
mv .vimrc ~/.vimrc
echo .bashrc
mv .bashrc ~/.bashrc
echo .tmux.conf
mv .tmux.conf ~/.tmux.conf
echo Making Vim Plugin Directory
mkdir ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo Vim Airline
cd ~/.vim/bundle/
git clone https://github.com/vim-airline/vim-airline.git
echo Vim Airline Themes
git clone https://github.com/vim-airline/vim-airline-themes.git
echo Vim Color-schemes
git clone https://github.com/flazz/vim-colorschemes.git
echo Vim Vinegar
git clone https://github.com/tpope/vim-vinegar.git
echo Tmuxline
git clone https://github.com/edkolev/tmuxline.vim.git
echo Vim Bufferline
git clone https://github.com/bling/vim-bufferline.git
echo Vim Fugitive
git clone https://github.com/tpope/vim-fugitive.git
echo Vim Ruhbarb
git clone https://github.com/tpope/vim-rhubarb.git
echo Syntastic
git clone https://github.com/scrooloose/syntastic.git
echo SuperTab
git clone https://github.com/ervandew/supertab.git
echo Deoplete - AutoComplete plugin
https://github.com/Shougo/deoplete.nvim.git
echo Haskell Stuff
echo Ghc-Mod-Vim
git clone https://github.com/eagletmt/ghcmod-vim.git
echo Neco-Ghc
git clone https://github.com/eagletmt/neco-ghc
echo Crtl-P
git clone https://github.com/ctrlpvim/ctrlp.vim.git
echo Utility Plugins
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/roxma/nvim-yarp.git
git clone https://github.com/roxma/vim-hug-neovim-rpc.git
git clone https://github.com/Shougo/vimproc.vim.git
cd vimproc.vim
make
cd ~
echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

