;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat %CMDER_ROOT%\config\.history
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
e.=explorer .
ls=ls --color $*
l=ls $*
ifconfig=ipconfig
rm=rm -i $*
cd=cd /d $*
ll= ls -al $a
clear=cls
d=cd
c=cd

got=echo CommandTypo: git... && git $*
hiy=echo CommandTypo: git... && git $*
hoy=echo CommandTypo: git... && git $*
hot=echo CommandTypo: git... && git $*
hit=echo CommandTypo: git... && git $*

ga=git add $*
gs=git status $*
gc=git commit $*
gd=git diff $*
go=git checkout $*
gp=git push $*
gl=git log --oneline --all --graph --decorate  $*

dockerStart=docker-machine ssh || docker-machine start && docker-machine ssh
dockerStop=docker-machine stop

halt=shutdown -s -f -t $*

localdev=cd /d "P:\Vagrant\local.dev\" && vagrant up && cd /d "P:\Sites\local.dev\" && echo. && echo ----------------------- && echo ls : && ls
vincedev=cd /d "P:\Vagrant\local.dev\" && vagrant up && cd /d "P:\Sites\vince.dev\" && echo. && echo ----------------------- && echo ls : && ls
vagssh=pushd "P:\Vagrant\local.dev\"  && vagrant up && vagrant ssh && popd
vaghalt=pushd "P:\Vagrant\local.dev\"  && vagrant halt && popd