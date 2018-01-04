echo Exporting packages
echo init.vim coppied over
mv init.vim ~/.config/nvim
echo .bashrc
mv .bashrc ~/.bashrc
echo .tmux.conf
mv .tmux.conf ~/.tmux.conf
echo Making Vim Plugin Directory
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle && \
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo Vim Airline
cd ~/.config/nvim/bundle/
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
echo Git Gutter
git clone https://github.com/airblade/vim-gitgutter.git
echo NeoMake
git clone https://github.com/neomake/neomake.git
echo SuperTab
git clone https://github.com/ervandew/supertab.git
echo Deoplete - AutoComplete plugin
https://github.com/Shougo/deoplete.nvim.git
echo Neco-Ghc
git clone https://github.com/eagletmt/neco-ghc
echo Crtl-P
git clone https://github.com/ctrlpvim/ctrlp.vim.git
echo Grepper
git clone https://github.com/mhinz/vim-grepper.git
echo Haskell-Vim
https://github.com/neovimhaskell/haskell-vim.git
echo Intero-NeoVim
https://github.com/parsonsmatt/intero-neovim.git

echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

