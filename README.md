# devops_netology_oleg_pilipenko
# dz 2


\ Local .terraform directories
**/.terraform/* сопоставляем каталог terraform

\ .tfstate files

*.tfstate # игнорировать файлы с окончанием .tfstate
*.tfstate.* # игонирировать что угодно где в составе есть tfstate с любыми символами за звездочкой.

\ Crash log files

crash.log игнорировать данный файл журналов

\ Exclude all .tfvars files, which are likely to contain sentitive data, such as
\ password, private keys, and other secrets. These should not be part of version
\ control as they are data points which are potentially sensitive and subject
\ to change depending on the environment.
\

*.tfvars # игнорировать любые файлы с окончанием .tfvars

\ Ignore override files as they are usually used to override resources locally and so
\ are not checked in

override.tf \ игнорировать конкретно этот файл
ovverride.tf.json \ и этот файл
*_override.tf \ игнорировать все файлы с окончанием _override.tf 
*_override.tf.json \ и с окончанием _override.tf.json



\ Include override files you do wish to add to version control using negated pattern
\ !example_override.tf\# Include tfplan files to ignore the plan output of command: terraform plan -out=tfplan
\ example: *tfplan*

\ Ignore CLI configuration files
.terraformrc игнорировать файлы с окончанием .terraformrc 
terraform.rc  и terraform.rc
