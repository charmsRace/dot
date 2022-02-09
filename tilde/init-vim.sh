# Vim

mkdir -p ${D_VIM}/{bundle,colors}

declare URL_BADWOLF="https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim"
cd ${D_VIM}/colors
curl -s ${URL_BADWOLF} -O
cd - > /dev/null

declare URL_VUNDLE="https://github.com/VundleVim/Vundle.vim.git"
cd ${D_VIM}/bundle
git clone -q ${URL_VUNDLE}
cd - > /dev/null
vim +PluginInstall +qall

unset URL_BADWOLF
unset URL_VUNDLE
