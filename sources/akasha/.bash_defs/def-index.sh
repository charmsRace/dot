SOURCES=( \
    aliases \
    envars \
    path \
    prompt \
    symlinks \
)

for i in ${SOURCES[@]}; do
    SOURCE=~/.bash_defs/def-${i}.sh
    test -f $SOURCE && . $SOURCE
done
