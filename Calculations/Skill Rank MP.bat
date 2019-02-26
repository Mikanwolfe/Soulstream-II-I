
:start
set/p sbm=skill base mana drain=
set/p sr=skill rank

set/a skm=%sbm% * (30-%sr%) / 30
echo. %skm%
goto start