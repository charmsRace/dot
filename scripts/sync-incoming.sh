# Copy dotfiles
cp -r ~/.{vimrc,git{config,ignore-global},bash{rc,-defs,_profile}} ${D_SOURCE}

# Copy VS Code stuff
cp -r ${D_VS}/{css,snippets,{keybindings,settings}.json} ${D_SOURCE}/.vs
