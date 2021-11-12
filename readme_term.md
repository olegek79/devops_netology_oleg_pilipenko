Установите средство виртуализации Oracle VirtualBox.
так как пока я основное время работаю в Windows 10 то ставил соотвествено на windows virtual box, 
но я так же попробовал в виртаулбоке установить руками ubuntu и там уже руками ставил virtual box команда apt install virtualbox
опять же в винде скачал vagrant установил сделал отдельную директорию в убунте выполнил для установки apt install vagrant

В вашем основном окружении подготовьте удобный для дальнейшей работы терминал. Можно предложить: пользовался power shell

далее думаю все проще делать под вагрантом из под винды, комманды по сути одни и теже создал папку  E:\vagrantVM> 
в виртуалке на убунту сделал так же выолнил vagrant init так как я уже игрался то вагрнат ответил что уже готово все
`Vagrantfile` already exists in this directory. Remove it before
running `vagrant init`.

заменил соедержиоме файла Vagrantfile на содержимое из дз.

командой vagrant Up запустил получил в shell кучу служебной информации о запуске виртуально машины, имя пользователя адресс SHH, и прочее.

в virtualbox получил вторую машину виртуальную с именем vagrantVM_default_ 

Какие ресурсы выделены по-умолчанию?

памяти по умолчанию 1024
процессора 2

Как добавить оперативной памяти или ресурсов процессора виртуальной машине?

добавить строки в конфигурационный файл на пример

v.memory = 2048
  v.cpus = 4
  
  коммандой vagrant ssh очутился на созданной виртуальной машине.
  
  какой переменной можно задать длину журнала history, и на какой строчке manual это описывается?
  описывается на 545 строке
  HISTFILESIZE максимальное число строк в истории.
              The maximum number of lines contained in the history file.  
              When this variable is assigned a value, the history file is truncated, if necessary, to contain no more than that number of lines 
              by removing the oldest entries.  The history  file  is  also
              truncated  to  this  size after writing it when a shell exits.  
              If the value is 0, the history file is truncated to zero size.  
              Non-numeric values and numeric values less than zero inhibit truncation.  The shell sets the default value to the value of
              HISTSIZE after reading any startup files. число комманд для сохранения.
  
              
 что делает директива ignoreboth в bash?
              

Опция HISTCONTROL контролирует каким образом список команд сохраняется в истории.
ignorespace — не сохранять строки начинающиеся с символа <пробел>
ignoredups — не сохранять строки, совпадающие с последней выполненной командой
ignoreboth — использовать обе опции ‘ignorespace’ и ‘ignoredups’

каких сценариях использования применимы скобки {} и на какой строчке man bash это описано?

69 строка зарезирвированные слова.
RESERVED WORDS
       Reserved words are words that have a special meaning to the shell.  
       The following words are recognized as reserved when unquoted and either the first word of a simple command (see SHELL GRAMMAR below) 
       or the third word of a case or for command:

       ! case  coproc  do done elif else esac fi for function if in select then until while { } time [[ ]]
используется в различных условных циклах, условных операторах, или ограничивает тело функции, 
В командах выполняет подстановку элементов из списка

С учётом ответа на предыдущий вопрос, как создать однократным вызовом touch 100000 файлов? 
touch {000001..100000}.md создать в текущей директории 100000 файлов.

Получится ли аналогичным образом создать 300000? Если нет, то почему? 

нет не получиться, путем не хитрого перебора выяснил что около 110100 файлов, плюс минус...
touch {000001..110100}.md по крайней мере эта комманда отработала, а 120000 уже нет.

В man bash поищите по /\[\[. Что делает конструкция [[ -d /tmp ]]

квадратные скобки в них заключаеться выражение, возвращает 0 или 1 проверяет условие -d /tmp.

       [[ expression ]]
              Return a status of 0 or 1 depending on the evaluation of the conditional  expression  expression.   Ex‐
              pressions  are composed of the primaries described below under CONDITIONAL EXPRESSIONS.  Word splitting
              and pathname expansion are not performed on the words between the [[ and ]]; tilde expansion, parameter
              and variable expansion, arithmetic expansion, command substitution, process substitution, and quote re‐
              moval are performed.  Conditional operators such as -f must be unquoted to be recognized as primaries.

              When used with [[, the < and > operators sort lexicographically using the current locale.
              
  Основываясь на знаниях о просмотре текущих (например, PATH) и установке новых переменных; командах, которые мы рассматривали, 
  добейтесь в выводе type -a bash в виртуальной машине наличия первым пунктом в списке:
              
vagrant@vagrant:~$ vagrant@vagrant:~$ mkdir /tmp/new_path_dir/
vagrant@vagrant:~$ cp /bin/bash /tmp/new_path_dir/
vagrant@vagrant:~$ type -a bash
bash is /usr/bin/bash
bash is /bin/bash

vagrant@vagrant:~$ PATH=/tmp/new_path_dir/:$PATH
vagrant@vagrant:~$ type -a bash
bash is /tmp/new_path_dir/bash
bash is /usr/bin/bash
bash is /bin/bash

Чем отличается планирование команд с помощью batch и at?

команда at используется для назначения одноразового задания на заданное время, 
а команда batch — для назначения одноразовых задач, которые должны выполняться, когда загрузка системы становится меньше 1,5.

Завершите работу виртуальной машины чтобы не расходовать ресурсы компьютера и/или батарею ноутбука.

сначала exit, потому как по заданию мы находились в самой машине, потом vagrant suspend.
