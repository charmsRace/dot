#!/usr/bin/env bash
# Re-installs various utils after powerwashing
# sudo bash powerwash.sh

declare -a aptgetpackages=(
    "git"
    "gedit"
    "npm"
    "curl"
)
declare nvmurl='https://raw.githubusercontent.com/xtuple/nvm/master/install.sh'
declare -a globalnpmpackages=(
    "bower"
    "grunt-cli"
    "yo"
    "gulp"
    "gulp-cli"
    "generator-mobileangularui"
    "phonegap"
    "angular"
)

#sudo npm install --save --save-exact bower grunt-cli yo gulp generator-mobileangularui phonegap angular js-data js-data-angular

#apt-get update

for package in "${aptgetpackages[@]}"
do
    echo $nvmurl
    #apt-get install --assume-yes "$package"
done

#curl -o- $nvmurl | bash
#. ~/.bashrc
#nvm install 6

#npm config set prefix /usr/local
for package in "${globalnpmpackages[@]}"
do
    npm install --global "$package"
done
