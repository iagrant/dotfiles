curl -L git.io/antigen > antigen.zsh
mkdir -p ~/.antigen
mv antigen.zsh ~/.antigen/
mv ~/.zshrc ~/.zshrc.backup
cp .zshrc ~/.zshrc
