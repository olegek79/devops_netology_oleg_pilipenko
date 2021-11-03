!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "next parametr2"
    count=$(( $count + 1 ))
done

echo "====="

# переделка
#  редактируем из ветки main 4444
=======
# git rebase 1
<<<<<<< HEAD

=======
# git rebase 2
>>>>>>> b6191b3 (git-rebase 2 изменения 4)
