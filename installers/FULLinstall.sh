echo Installing Custom NeoVim
./vimInstall.sh
echo Installing Custom Zsh
./zshInstall.sh
echo Installing Powerline Fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
echo All Done! Enjoy! :D
