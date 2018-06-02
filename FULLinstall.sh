echo Exporting packages
echo Ghci
cp .ghci ~/.ghci
echo Gitconfig
cp .gitconfig ~/.gitconfig
echo i3
cp .i3/* ~/.config/i3/
echo polybar
cp .config/polybar/* ~/.config/polybar/
echo Installing Vim Custom
./vimInstall.sh
echo Installing Custom Zsh
./zshInstall.sh
echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

