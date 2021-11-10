полный хеш который начинается на aefea будет aefead2207ef7e2aa5dc81a34aedf0cad4c32545 (комманда git show aefea) коментарий этого коммита такой

Author: Alisdair McDiarmid <alisdair@users.noreply.github.com>
Date:   Thu Jun 18 10:29:58 2020 -0400

    Update CHANGELOG.md

diff --git a/CHANGELOG.md b/CHANGELOG.md
index 86d70e3e0..588d807b1 100644
--- a/CHANGELOG.md
+++ b/CHANGELOG.md
@@ -27,6 +27,7 @@ BUG FIXES:
 * backend/s3: Prefer AWS shared configuration over EC2 metadata credentials by default ([#25134](https://github.com/hashicorp/terraform/issues/25134))
 * backend/s3: Prefer ECS credentials over EC2 metadata credentials by default ([#25134](https://github.com/hashicorp/terraform/issues/25134))
 * backend/s3: Remove hardcoded AWS Provider messaging ([#25134](https://github.com/hashicorp/terraform/issues/25134))
+* command: Fix bug with global `-v`/`-version`/`--version` flags introduced in 0.13.0beta2 [GH-25277]
 * command/0.13upgrade: Fix `0.13upgrade` usage help text to include options ([#25127](https://github.com/hashicorp/terraform/issues/25127))
 * command/0.13upgrade: Do not add source for builtin provider ([#25215](https://github.com/hashicorp/terraform/issues/25215))
 * command/apply: Fix bug which caused Terraform to silently exit on Windows when using absolute plan path ([#25233](https://github.com/hashicorp/terraform/issues/25233))

коммит 85024d3 соотвествует тегу tag: v0.12.23 (комманда используеться так же что и в предыдущем пункте только хеш указываем соответсвенно другой)

задание 3 воспользуемся командой git show b8d720~ родитель один его хеш 56cd7859e05c36c06b56d013b55a252d0bb7e158

задание 4 Перечислите хеши и комментарии всех коммитов которые были сделаны между тегами v0.12.23 и v0.12.24.

git log v0.12.23..v0.12.24 --oneline
33ff1c03b (tag: v0.12.24) v0.12.24
b14b74c49 [Website] vmc provider links
3f235065b Update CHANGELOG.md
6ae64e247 registry: Fix panic when server is unreachable
5c619ca1b website: Remove links to the getting started guide's old location
06275647e Update CHANGELOG.md
d5f9411f5 command: Fix bug when using terraform login on Windows
4b6d06cc5 Update CHANGELOG.md
dd01a3507 Update CHANGELOG.md
225466bc3 Cleanup after v0.12.23 release

задание 5 Найдите коммит в котором была создана функция func providerSource, ее определение в коде выглядит так func providerSource(...) (вместо троеточего перечислены аргументы).

 git log -S 'func providerSource' --oneline
5af1e6234 main: Honor explicit provider_installation CLI config when present
8c928e835 main: Consult local directories as potential mirrors of providers

Найдите все коммиты в которых была изменена функция globalPluginDirs

git log -S 'globalPluginDirs' --oneline
35a058fb3 main: configure credentials from the CLI config file
c0b176109 prevent log output during init
8364383c3 Push plugin discovery down into command package

Кто автор функции synchronizedWriters?

git log -S 'synchronizedWriters' --pretty=format:'%h - %an %ae'
bdfea50cc - James Bardin j.bardin@gmail.com
fd4f7eb0b - James Bardin j.bardin@gmail.com
5ac311e2a - Martin Atkins mart@degeneration.co.uk



