#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "\$@ Parameter #$count = $param"
    count=$(( $count + 1 ))
done

#переделка 4
#  изменения подготовка файла merge.sh
# изменения merge: use shift
