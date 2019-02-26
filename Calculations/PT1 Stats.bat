@echo on
setlocal EnableDelayedExpansion
color 0F
set itemcall=0 0 90 20 1
call:funct.itemid.pt1
pause

:funct.itemid.pt1
::HP AND MP POTIONS, YAY!
for /f "tokens=3-5" %%A in ("%itemcall%") do (
	::stats!
	set/a item.1=%%A
	set/a item.2=%%B
	set/a item.pv=%%C
)
for /l %%G in (1,1,2) do (
	set itemslot.%%G=
)
set itemcount=1
if %item.1% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.1!&set/a itemslID.%itemcount%=1&set item.name=HP Potion
if %item.2% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.2!&set/a itemslID.%itemcount%=2&set item.name=MP Potion
set/a itemcount-=1

if %item.1% neq 0 (
	if %item.2% neq 0 (
		set item.name=Hybrid Potion
	)
)
if %item.pv%==1 set item.pvd=%%
if %item.pv%==0 set item.pvd=

for /l %%G in (1,1,%itemcount%) do (
	if !itemslID.%%G!==1 set itempre=HP
	if !itemslID.%%G!==2 set itempre=MP
	set itemchar.%%G=!itempre!:!itemslot.%%G!!item.pvd!
)
if %itemcount%==2 (
	set item.stats=%itemchar.1% %itemchar.2%
)
if %itemcount%==1 (
	set item.stats=%itemchar.1%
)
echo. %item.name%
echo. %item.stats%
goto:eof