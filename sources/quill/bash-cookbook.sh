echo "Install packages"
sudo apt-get install git terminator curl vim tree

echo "Install Chrome"
wget -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

echo "Install yarn"
wget -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo sh -c 'echo "deb https://dl.yarnpkg.com/debian/ stable main" >> /etc/apt/sources.list.d/yarn.list'
sudo apt-get update
sudo apt-get install yarn


echo "~/.*"
gh="https://raw.githubusercontent.com/Calamitizer/.files/master/"
mkdir -p ~/.config/terminator/
wget "$gh"".terminator-config" -qO ~/.config/terminator/config

echo "Transfer bash stuff"
wget "$gh"".bashrc" -qP ~
wget "$gh"".bash_aliases" -qP ~
wget "$gh"".bash_profile" -qP ~

echo "Setup vim"
wget "$gh"".vimrc" -qP ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors/
wget https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim -qP ~/.vim/colors/
vim +PluginInstall +qall

echo "Setup node/npm"
wget https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -qO - | bash
nvm install 8
