echo Backing up old vimrc
mv ~/.vimrc ~/.vimrc.backup
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup
echo Moving vimrc over
cp rcs/vimrc ~/.vimrc
echo Making symbolic link for init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim
echo Making Vim Plugin Directory
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
