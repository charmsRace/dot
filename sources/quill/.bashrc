export PATH=$PATH:/c/Users/alexb/apache-maven-3.5.0/bin

alias python2="winpty /c/Python27/python.exe"

##### General

alias brc="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias tailn="tail -n"
alias g="git"

##### Directories

export D_OTMS=~/git/opentms
export D_OCONF=~/git/opentms/dist/installer/target/dist/conf
export D_OLOGS=~/git/opentms/dist/installer/target/dist/logs
export D_MLOGS=~/dev/maven/logs

export D_SQL=~/dev/psql
export D_DOT=~/git/dot

##### Maven

export DATEF=(date +%m%d%y-%H%M)
alias smvn="mvn -T 1C -e -P va"
alias smvn-c="mvn -T 1C -e -l ${D_MLOGS}/c-$(${DATEF[@]}).log clean -P va"
alias smvn-i="mvn -T 1C -e -l ${D_MLOGS}/i-$(${DATEF[@]}).log install -P va"
alias smvn-ci="mvn -T 1C -e -l ${D_MLOGS}/ci-$(${DATEF[@]}).log clean install -P va"
alias tailw="tail -n +1 -f \"$(ls -t | head -n1)\""

##### OpenTMS general

alias otms="node ~/git/opentms-dev-tool/index.js"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/AppData/Local/Yarn/bin"
