@echo on
setlocal EnableDelayedExpansion
color 0F
set itemcall=0 0 0 0 10 0 0 40 50 0 70 0 1
call:funct.itemid.eq1
pause

:funct.itemid.eq1
for /f "tokens=5-13" %%A in ("%itemcall%") do (
	::stats!
	set/a item.1=%%A
	set/a item.2=%%B
	set/a item.3=%%C
	set/a item.4=%%D
	set/a item.5=%%E
	set/a item.6=%%F
	set/a item.7=%%G
	set/a item.8=%%H
	set/a item.pv=%%I
)
for /l %%G in (1,1,8) do (
	set itemslot.%%G=
)
set itemcount=1
if %item.1% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.1!&set/a itemslID.%itemcount%=1
if %item.2% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.2!&set/a itemslID.%itemcount%=2
if %item.3% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.3!&set/a itemslID.%itemcount%=3
if %item.4% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.4!&set/a itemslID.%itemcount%=4
if %item.5% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.5!&set/a itemslID.%itemcount%=5
if %item.6% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.6!&set/a itemslID.%itemcount%=6
if %item.7% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.7!&set/a itemslID.%itemcount%=7
if %item.8% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.8!&set/a itemslID.%itemcount%=8
set/a itemcount-=1

if %item.pv%==1 set item.pvd=%%
if %item.pv%==0 set item.pvd=

for /l %%G in (1,1,%itemcount%) do (
	if !itemslID.%%G!==1 set itempre=STR
	if !itemslID.%%G!==2 set itempre=DEX
	if !itemslID.%%G!==3 set itempre=INT
	if !itemslID.%%G!==4 set itempre=LUK
	if !itemslID.%%G!==5 set itempre=WIL
	if !itemslID.%%G!==6 set itempre=DEF
	if !itemslID.%%G!==7 set itempre=DFP
	if !itemslID.%%G!==8 set itempre=BAL
	set itemchar.%%G=!itempre!:!itemslot.%%G!!item.pvd!
)
if %itemcount%==8 (
	set item.stats=%itemchar.1% %itemchar.2% %itemchar.3% %itemchar.4% %itemchar.5% %itemchar.6% %itemchar.7% %itemchar.8%
)
if %itemcount%==7 (
	set item.stats=%itemchar.1% %itemchar.2% %itemchar.3% %itemchar.4% %itemchar.5% %itemchar.6% %itemchar.7%
)
if %itemcount%==6 (
	set item.stats=%itemchar.1% %itemchar.2% %itemchar.3% %itemchar.4% %itemchar.5% %itemchar.6%
)
if %itemcount%==5 (
	set item.stats=%itemchar.1% %itemchar.2% %itemchar.3% %itemchar.4% %itemchar.5%
)
if %itemcount%==4 (
	set item.stats=%itemchar.1% %itemchar.2% %itemchar.3% %itemchar.4%
)
if %itemcount%==3 (
	set item.stats=%itemchar.1% %itemchar.2% %itemchar.3%
)
if %itemcount%==2 (
	set item.stats=%itemchar.1% %itemchar.2%
)
if %itemcount%==1 (
	set item.stats=%itemchar.1%
)
echo. %item.stats%
pause