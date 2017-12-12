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
echo YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./instal.py --clang-completer
#EXTRA YCM STUFF
#only use if want extra c stuff
#mkdir ycm_build
#cd ycm_build
#cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cd ~
echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

