echo Backing up old vimrc
mv .vimrc .vimrc.backup
echo Moving vimrc over
cp .vimrc ~/.vimrc
echo Making Vim Plugin Directory
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
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
echo Vim-Fugitive
git clone https://github.com/tpope/vim-fugitive.git
echo Vim-Rhubarb
git clone https://github.com/tpope/vim-rhubarb.git
echo YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py
