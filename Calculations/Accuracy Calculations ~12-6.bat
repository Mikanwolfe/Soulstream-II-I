set/a sba=40
set/a int=80
set/a dex=100
goto start

:funct.random
set/a funct.return=(%random% %% (%2 - %1 + 1)) + %1
goto:eof
::accuracy Calculations
::returns a 1 or 0 as funct.return
::usage call:funct.acc [Skill_Base_Accuracy] [P1_DEX] [P2_INT]

:funct.acc
set/a acc=(1000 / 1000 + (((%2 - %3) * 100) / (%1 + %2))) + %1
if %acc% gtr 99 set/a acc=100
call:funct.random 0 100
if %funct.return% gtr %acc%  ( set/a funct.return=0 ) else ( set/a funct.return=1)
if %acc% lss 1 set/a acc=0
goto:eof

:start
cls
set/p SBA=Skill Base Accuracy=
set/p INT=Player2 INT=
set/p DEX=Player1 DEX=

call:funct.acc %SBA% %DEX% %INT%
echo. ACC: %ACC%
echo. HIT: %funct.return%
pause
goto start