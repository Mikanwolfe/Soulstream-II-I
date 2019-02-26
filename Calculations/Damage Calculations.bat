
goto start

:funct.random
set/a funct.return=(%random% %% (%2 - %1 + 1)) + %1
goto:eof

::damage calcutions
::returns damage as f.return
::usage: call:funct.damage [Skill_Base_Damage] [Skill_Base_Balance] [Player_STR] [Player_BAL]
:funct.damage
set/a dmg.max=%1 * (100 + %3) / 100
set/a dmg.min=%dmg.max% - (%dmg.max% * 100 / (100 + %4 + %2))
call:funct.random %dmg.min% %dmg.max%
goto:eof

:start
cls
set/p SBD=Skill Base Damage=
set/p SBB=Skill Base Balance=
set/p STR=Player STR=
set/p BAL=Player BAL=

call:funct.damage %SBD% %SBB% %STR% %BAL%
echo. MIN: %dmg.min%
echo. MAX: %dmg.max%
echo. DAMAGE: %funct.return%
pause
goto start