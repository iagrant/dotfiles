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
echo Installing Vim Custom
./vimInstall.sh
echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

