set/a tmp=0
set tmpa=0

echo. > output.txt

:start
set/a tmp+=1

if %tmp%==1 set tmpa=fir
if %tmp%==2 set tmpa=hly
if %tmp%==3 set tmpa=lsc
if %tmp%==4 set tmpa=lac
if %tmp%==5 set tmpa=dkl
if %tmp%==6 set tmpa=arc

echo if %%p1.%tmpa%.c%% lss 1 set/a p1.%tmpa%.c=0 >> output.txt
echo if %%p2.%tmpa%.c%% lss 1 set/a p2.%tmpa%.c=0 >> output.txt
if %tmp%==6 goto exits
goto start
:exits
pause

