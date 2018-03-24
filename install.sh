echo Exporting packages
echo rcs copied over
mv .vimrc ~/.vimrc
echo .bashrc
mv .bashrc ~/.bashrc
echo .tmux.conf
mv .tmux.conf ~/.tmux.conf
echo Ghci
mv .ghci ~/.ghci
echo Gitconfig
mv .gitconfig ~/.gitconfig
echo i3
mv .i3/* ~/.config/i3/
echo polybar
mv .config/polybar/* ~/.config/polybar/
echo Making Vim Plugin Directory
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
#echo Tmuxline
#git clone https://github.com/edkolev/tmuxline.vim.git
echo Vim Bufferline
git clone https://github.com/bling/vim-bufferline.git
#Uncomment Later when i decided which ones i actually use and need
#and possible figure out which one makes it feel slow
#echo Neco-Ghc
#git clone https://github.com/eagletmt/neco-ghc
#echo Haskell-Vim
#https://github.com/neovimhaskell/haskell-vim.git
#echo Ghc-Mod
#git clone https://github.com/eagletmt/ghcmod-vim.git
echo Vim-Fugitive
git clone https://github.com/tpope/vim-fugitive.git
echo Vim-Rhubarb
git clone https://github.com/tpope/vim-rhubarb.git
#echo Vim-Proc # Needed by Ghc-mod
#git clone https://github.com/Shougo/vimproc.vim.git
#cd vimproc.vim
#make
#cd ..
echo YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py
echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

