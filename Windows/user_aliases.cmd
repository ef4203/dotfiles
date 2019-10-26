;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat -n "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
g=git $*
gf=cd /d "%USERPROFILE%\git"
sudo=powershell -NoProfile -NoLogo -Command Start-Process -Verb runAs $*
cmderr=cd /d "%CMDER_ROOT%"
