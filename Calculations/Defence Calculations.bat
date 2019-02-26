set/a DEF=120
set/a DFP=80
set/a DMG=300
set/a PRT=90
goto start

::defence calculations
::usage call:funct.defence [P1_DEF] [P2_DFP] [DMG] [PROT (float 100)]
::returns damage as funct.return
:funct.defence
set/a cal.def=%1-%2+10
echo. %cal.def%
if %cal.def% gtr 200 set/a cal.def=200
set/a funct.return = (((10000 / (100 + %cal.def%)) * (%3 * (100-%4) / 100))/100)
if %cal.def% lss 1 set/a funct.return=%3

goto:eof

:start
cls
set/p DEF=Player1 DEF=
set/p DFP=Player2 DFP=
set/p DMG=Player1 DMG=
set/p PRT=Player1 PRT=

call:funct.defence %def% %dfp% %dmg% %prt%
echo. Damage: %funct.return%
pause
goto start