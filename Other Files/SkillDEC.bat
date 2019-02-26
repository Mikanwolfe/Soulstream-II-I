set/a tmp=0
set tmpa=0

echo. > output.txt

:start
echo. >> output.txt
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
set/a no=-1
if %tmp%==26 goto exits
:start2
set/a no+=1
if %no%==0 set sd=Novice
if %no%==1 set sd=F
if %no%==2 set sd=E
if %no%==3 set sd=D
if %no%==4 set sd=C
if %no%==5 set sd=B
if %no%==6 set sd=A
if %no%==7 set sd=9
if %no%==8 set sd=8
if %no%==9 set sd=7
if %no%==10 set sd=6
if %no%==11 set sd=5
if %no%==12 set sd=4
if %no%==13 set sd=3
if %no%==14 set sd=2
if %no%==15 set sd=1
echo if %%p1.%tmpa%.sr%%==%no%  set/a p1.%tmpa%.sm=%%skill.%no%.sm%% >> output.txt
echo if %%p1.%tmpa%.sr%%==%no%  set/a p1.%tmpa%.sc=%%p1.%tmpa%.sv%% * %%skill.%no%.sc%% / 10 >> output.txt
echo if %%p1.%tmpa%.sr%%==%no%  set/a p1.%tmpa%.sx=%%p1.%tmpa%.sv%% * %%skill.%no%.sx%% / 10 >> output.txt
echo if %%p1.%tmpa%.sr%%==%no%  set p1.%tmpa%.sd=%sd% >> output.txt
echo if %%p2.%tmpa%.sr%%==%no%  set/a p1.%tmpa%.sm=%%skill.%no%.sm%% >> output.txt
echo if %%p2.%tmpa%.sr%%==%no%  set/a p1.%tmpa%.sc=%%p1.%tmpa%.sv%% * %%skill.%no%.sc%% / 10 >> output.txt
echo if %%p2.%tmpa%.sr%%==%no%  set/a p1.%tmpa%.sx=%%p1.%tmpa%.sv%% * %%skill.%no%.sx%% / 10 >> output.txt
echo if %%p2.%tmpa%.sr%%==%no%  set p1.%tmpa%.sd=%sd% >> output.txt
if %no%==15 goto start
goto start2
echo.  >> output.txt
goto start
:exits
pause

