# devops_netology_oleg_pilipenko
# dz 2
# изменение 3

# Local .terraform directories
**/.terraform/*

# .tfstate files
*.tfstate # игнорировать по типу файла во всех директориях .tfstate
*.tfstate.* # игонирировать что угодно начинающееся на .tfstate. с любыми символами за звездочкой, кроме косой черты.

# Crash log files
crash.log игнорировать данный файл

# Exclude all .tfvars files, which are likely to contain sentitive data, such as
# password, private keys, and other secrets. These should not be part of version
# control as they are data points which are potentially sensitive and subject
# to change depending on the environment.
#
*.tfvars # игнорировать любые файлы с окончанием .tfvars

# Ignore override files as they are usually used to override resources locally and so
# are not checked in
override.tf # игнорировать конкретно этот файл
override.tf.json # и этот
*_override.tf # игнорировать файлы начала которых до _override.tf и _override.tf.json будет любым
*_override.tf.json

# Include override files you do wish to add to version control using negated pattern
#
# !example_override.tf

# Include tfplan files to ignore the plan output of command: terraform plan -out=tfplan
# example: *tfplan*

# Ignore CLI configuration files
.terraformrc игнорировать конкретные файлы
terraform.rc

