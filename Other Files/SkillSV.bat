set/a tmp=0
set tmpa=0

echo. > output.txt

:start
set/a tmp+=1
if %tmp%==1 set tmpa=att
if %tmp%==2 set tmpa=hea
if %tmp%==3 set tmpa=mga
if %tmp%==4 set tmpa=res
if %tmp%==5 set tmpa=mgc
if %tmp%==6 set tmpa=fus
if %tmp%==7 set tmpa=sok
if %tmp%==8 set tmpa=lig
if %tmp%==9 set tmpa=enl
if %tmp%==10 set tmpa=dbl
if %tmp%==11 set tmpa=ice
if %tmp%==12 set tmpa=fir
if %tmp%==13 set tmpa=esc
if %tmp%==14 set tmpa=clr
if %tmp%==15 set tmpa=hly
if %tmp%==16 set tmpa=cer
if %tmp%==17 set tmpa=lsc
if %tmp%==18 set tmpa=lsp
if %tmp%==19 set tmpa=shm
if %tmp%==20 set tmpa=lac
if %tmp%==21 set tmpa=wow
if %tmp%==22 set tmpa=dkl
if %tmp%==23 set tmpa=wor
if %tmp%==24 set tmpa=wit
if %tmp%==25 set tmpa=arc

echo set/a p1.%tmpa%.sv=0 >> output.txt
if %tmp%==25 goto exits
goto start
:exits
pause

