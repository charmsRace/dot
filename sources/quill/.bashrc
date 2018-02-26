export PATH=$PATH:/c/Users/alexb/apache-maven-3.5.0/bin

alias python2="winpty /c/Python27/python.exe"

##### General

alias brc="vim ~/.bashrc"
alias vrc="vim ~/.vimrc"
alias tailn="tail -n"

##### Directories

export D_OTMS=~/git/opentms
export D_OCONF=~/git/opentms/dist/installer/target/dist/conf
export D_OLOGS=~/git/opentms/dist/installer/target/dist/logs
export D_MLOGS=~/dev/maven/logs

export D_SQL=~/dev/psql
export D_DOT=~/git/dot

##### Maven

DATEF=(date +%m%d%y-%H%M)
export LOGD=${DATEF[@]}
export MLOG_DIR=~/dev/maven/logs
alias smvn-c="mvn -T 1C -e -l ${MLOG_DIR}/c-$($LOGD).log clean -P va"
alias smvn-i="mvn -T 1C -e -l ${MLOG_DIR}/i-$($LOGD).log install -P va"
alias smvn-ci="mvn -T 1C -e -l ${MLOG_DIR}/ci-$($LOGD).log clean install -P va"

##### OpenTMS general


