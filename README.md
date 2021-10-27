# devops_netology_oleg_pilipenko
# dz 2

\ Local .terraform directories \

\*\*/.terraform/* сопоставляем каталог terraform

 .tfstate files

 *.tfstate \ игнорировать файлы с окончанием .tfstate

 *.tfstate.\* \ игонирировать что угодно где в составе есть tfstate с любыми символами за звездочкой.

 Crash log files

crash.log игнорировать данный файл журналов


 *.tfvars \ игнорировать любые файлы с окончанием .tfvars


override.tf \ игнорировать конкретно этот файл

ovverride.tf.json \ и этот файл

*_override.tf \ игнорировать все файлы с окончанием _override.tf 

*_override.tf.json \ и с окончанием _override.tf.json


\ Ignore CLI configuration files

.terraformrc игнорировать файлы с окончанием .terraformrc 

 terraform.rc  и игнорировать файлы с окончанием terraform.rc
