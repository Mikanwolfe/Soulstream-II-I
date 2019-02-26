@echo off
setlocal EnableDelayedExpansion
color 0F
mode con: cols=80 lines=55
set ssii.version=0.5-8
title Soulstream II %ssii.version% by Wolfe Lumi

::ren save
if exist saves.bat ren saves.bat saves.ssii
if exist saves.ssii goto:init.ssii
echo. > saves.bat
ren saves.bat saves.ssii

:init.ssii
::player bases and init
if exist graphics.bat ren graphics.bat graphics.ssii

for %%G in (p1,p2) do (
	for /l %%H in (1,1,9) do (
	set %%G.itemslot_%%H=0
	)
)

call:funct.random 1 25
set/a ssii.1=%funct.return%
call:funct.random 1 25
set/a ssii.2=%funct.return%
for %%G in (1,2) do (
	if !ssii.%%G!==1  set n%%G=Heath
	if !ssii.%%G!==2  set n%%G=Alph
	if !ssii.%%G!==3  set n%%G=Nickolai
	if !ssii.%%G!==4  set n%%G=Hide
	if !ssii.%%G!==5  set n%%G=Lumi
	if !ssii.%%G!==6  set n%%G=Ryuu
	if !ssii.%%G!==7  set n%%G=Tora
	if !ssii.%%G!==8  set n%%G=Kami
	if !ssii.%%G!==9  set n%%G=Theo
	if !ssii.%%G!==10 set n%%G=Lucia
	if !ssii.%%G!==12 set n%%G=Aria
	if !ssii.%%G!==13 set n%%G=Moses
	if !ssii.%%G!==14 set n%%G=Fear
	if !ssii.%%G!==15 set n%%G=Nao
	if !ssii.%%G!==16 set n%%G=Eweca
	if !ssii.%%G!==17 set n%%G=Laceda
	if !ssii.%%G!==18 set n%%G=Meles
	if !ssii.%%G!==19 set n%%G=Morringhan
	if !ssii.%%G!==20 set n%%G=Neamhain
	if !ssii.%%G!==21 set n%%G=Kydos
	if !ssii.%%G!==22 set n%%G=Ryuu
	if !ssii.%%G!==23 set n%%G=Soul
	if !ssii.%%G!==24 set n%%G=Fleta
	if !ssii.%%G!==25 set n%%G=Erinn
)

if %n1%==%n2% goto:init.ssii
set/a ssii.crl=50

set/a p1.loss=0
set/a p2.loss=0

set/a p1.hp=0
set/a p1.mp=0
set/a p1.hpl=0
set/a p1.mpl=0
set/a p1.hpa=0
set/a p1.mpa=0
set/a p1.hpx=0
set/a p1.mpx=0
set/a p1.df=0
set/a p1.dfa=0
set/a p1.bl=0
set/a p1.bla=0
set/a p1.cmp=0
set/a p1.chp=0
set/a p1.sx=0
set/a p1.sc=0
set   p1.ab=N
set   p1.ab.d=Normal
::float 10 multipliers
set/a p1.ast=0
set/a p1.adx=0
set/a p1.ain=0
set/a p1.alk=0
set/a p1.awl=0
set/a p1.adp=0
set/a p1.adf=0
set/a p1.acm=0
set/a p1.acr=0

set/a p2.hp=0
set/a p2.mp=0
set/a p2.hpl=0
set/a p2.mpl=0
set/a p2.hpa=0
set/a p2.mpa=0
set/a p2.hpx=0
set/a p2.mpx=0
set/a p2.df=0
set/a p2.dfa=0
set/a p2.bl=0
set/a p2.bla=0
set/a p2.cmp=0
set/a p2.chp=0
set/a p2.sx=0
set/a p2.sc=0
set   p2.ab=N
set   p2.ab.d=Normal
::float 10 multipliers
set/a p2.ast=0
set/a p2.adx=0
set/a p2.ain=0
set/a p2.alk=0
set/a p2.awl=0
set/a p2.adp=0
set/a p2.adf=0
set/a p2.acm=0
set/a p2.acr=0

set/a p1.crm=0
set/a p1.crr=0
set/a p1.cdf=0
set/a p1.cdp=0
set/a p1.pro=0
set/a p2.crm=0
set/a p2.crr=0
set/a p2.cdp=0
set/a p2.cdf=0
set/a p2.pro=0

set/a p1.str=0
set/a p1.dex=0
set/a p1.int=0
set/a p1.luk=0
set/a p1.wil=0
set/a p2.str=0
set/a p2.dex=0
set/a p2.int=0
set/a p2.luk=0
set/a p2.wil=0

set/a p1.cstr=0
set/a p1.cdex=0
set/a p1.cint=0
set/a p1.cluk=0
set/a p1.cwil=0
set/a p2.cstr=0
set/a p2.cdex=0
set/a p2.cint=0
set/a p2.cluk=0
set/a p2.cwil=0

set/a p1.avd=0
set/a p1.acc=0
set/a p2.avd=0
set/a p2.acc=0

set/a p1.td=0
set/a p2.td=0

set/a p1.ew=0
set/a p2.ew=0
set/a p1.la=0
set/a p2.la=0
set/a p1.lu=0
set/a p2.lu=0
set p1.ew.v=Avaliable
set p2.ew.v=Avaliable
set p1.la.v=Avaliable
set p2.la.v=Avaliable
set p1.lu.v=Avaliable
set p2.lu.v=Avaliable

::classvalue, for display. 1=Ad. 2=Ew, 3=La, 4=Lu.
set/a p1.cv=1
set p1.cd=Adventurer
set/a p2.cv=1
set p2.cd=Adventurer

::skill base attribs.

set/a p1.att.sa=60
set/a p1.att.sb=50 
set/a p1.att.sp=10 
set/a p2.att.sa=60 
set/a p2.att.sb=50 
set/a p2.att.sp=10
 
set/a p1.mga.sa=70
set/a p1.mga.sb=70 
set/a p1.mga.sp=20 
set/a p2.mga.sa=70
set/a p2.mga.sb=70 
set/a p2.mga.sp=20 
 
set/a p1.mgc.sa=40
set/a p1.mgc.sb=80 
set/a p1.mgc.sp=50 
set/a p2.mgc.sa=40 
set/a p2.mgc.sb=80 
set/a p2.mgc.sp=50 
 
set/a p1.fus.sa=40
set/a p1.fus.sb=20 
set/a p1.fus.sp=20 
set/a p2.fus.sa=40 
set/a p2.fus.sb=20 
set/a p2.fus.sp=20 
 
set/a p1.sok.sa=50
set/a p1.sok.sb=60 
set/a p1.sok.sp=50 
set/a p2.sok.sa=50 
set/a p2.sok.sb=60 
set/a p2.sok.sp=50 
 
set/a p1.lig.sa=70
set/a p1.lig.sb=30 
set/a p1.lig.sp=100 
set/a p2.lig.sa=70 
set/a p2.lig.sb=30 
set/a p2.lig.sp=100 
 
set/a p1.dbl.sa=50 
set/a p1.dbl.sb=50 
set/a p1.dbl.sp=60 
set/a p2.dbl.sa=50 
set/a p2.dbl.sb=50 
set/a p2.dbl.sp=60 
 
set/a p1.ice.sa=60 
set/a p1.ice.sb=100 
set/a p1.ice.sp=40 
set/a p2.ice.sa=60 
set/a p2.ice.sb=100 
set/a p2.ice.sp=40 
 
set/a p1.fir.sa=50 
set/a p1.fir.sb=80 
set/a p1.fir.sp=45 
set/a p2.fir.sa=50 
set/a p2.fir.sb=80 
set/a p2.fir.sp=45 
 
set/a p1.esc.sa=40 
set/a p1.esc.sb=70 
set/a p1.esc.sp=120 
set/a p2.esc.sa=40 
set/a p2.esc.sb=70 
set/a p2.esc.sp=120 
 
set/a p1.clr.sa=100 
set/a p1.clr.sb=0 
set/a p1.clr.sp=0 
set/a p2.clr.sa=100 
set/a p2.clr.sb=0 
set/a p2.clr.sp=0 
 
set/a p1.hly.sa=50 
set/a p1.hly.sb=40 
set/a p1.hly.sp=50
set/a p2.hly.sa=50 
set/a p2.hly.sb=40 
set/a p2.hly.sp=50 
 
set/a p1.cer.sa=50 
set/a p1.cer.sb=40 
set/a p1.cer.sp=30 
set/a p2.cer.sa=50 
set/a p2.cer.sb=40 
set/a p2.cer.sp=30 
 
set/a p1.lsc.sa=50 
set/a p1.lsc.sb=30 
set/a p1.lsc.sp=10 
set/a p2.lsc.sa=50 
set/a p2.lsc.sb=30 
set/a p2.lsc.sp=10 
 
set/a p1.lsp.sa=60 
set/a p1.lsp.sb=40 
set/a p1.lsp.sp=40 
set/a p2.lsp.sa=60 
set/a p2.lsp.sb=40 
set/a p2.lsp.sp=40 
 
set/a p1.shm.sa=100 
set/a p1.shm.sb=100 
set/a p1.shm.sp=0 
set/a p2.shm.sa=100 
set/a p2.shm.sb=100 
set/a p2.shm.sp=0 
 
set/a p1.lac.sa=50 
set/a p1.lac.sb=40 
set/a p1.lac.sp=20 
set/a p2.lac.sa=50 
set/a p2.lac.sb=40 
set/a p2.lac.sp=20 
 
set/a p1.wow.sa=40 
set/a p1.wow.sb=10 
set/a p1.wow.sp=80 
set/a p2.wow.sa=40 
set/a p2.wow.sb=10 
set/a p2.wow.sp=80 
 
set/a p1.dkl.sa=60 
set/a p1.dkl.sb=0 
set/a p1.dkl.sp=100 
set/a p2.dkl.sa=60 
set/a p2.dkl.sb=0 
set/a p2.dkl.sp=100 
 
set/a p1.wor.sa=40 
set/a p1.wor.sb=40 
set/a p1.wor.sp=60 
set/a p2.wor.sa=40 
set/a p2.wor.sb=40 
set/a p2.wor.sp=60 
 
set/a p1.wit.sa=100 
set/a p1.wit.sb=100 
set/a p1.wit.sp=0 
set/a p2.wit.sa=100 
set/a p2.wit.sb=100 
set/a p2.wit.sp=0 
 
set/a p1.arc.sa=70 
set/a p1.arc.sb=10 
set/a p1.arc.sp=200 
set/a p2.arc.sa=70 
set/a p2.arc.sb=10 
set/a p2.arc.sp=200 

::skillcal calculations, skill bases. skips attack and passives. these values are universal.
::sd = skilldamage
::sm = skill mp drain
::cr = skill critrate
set fus.sd=50
set fus.sm=80
set fus.cr=20
set mgc.sd=40
set mgc.sm=80
set mgc.cr=10
set mga.sd=50
set mga.sm=100
set mga.cr=25
set sok.sd=40
set sok.sm=70
set sok.cr=10
set lig.sd=80
set lig.sm=160
set lig.cr=2
set dbl.sd=200
set dbl.sm=300
set dbl.cr=10


set ice.sd=120
set ice.sm=80
set ice.cr=10
set fir.sd=180
set fir.sm=200
set fir.cr=20
set esc.sd=240
set esc.sm=260
set esc.cr=5
set hly.sd=440
set hly.sm=660
set hly.cr=5
set cer.sd=200
set cer.sm=150
set cer.cr=5
set lsc.sd=300
set lsc.sm=230
set lsc.cr=5
set lsp.sd=400
set lsp.sm=300
set lsp.cr=5
set lac.sd=600
set lac.sm=500
set lac.cr=5
set wow.sd=160
set wow.sm=150
set wow.cr=25
set dkl.sd=220
set dkl.sm=200
set dkl.cr=25
set wor.sd=310
set wor.sm=300
set wor.cr=25
set arc.sd=560
set arc.sm=500
set arc.cr=25

set enl.sm=80
set cla.sm=280
set shm.sm=280
set wit.sm=280

::inventory init

for %%G in (p1,p2) do (
	for /l %%N in (1,1,4) do (
		set %%G.inv.i.%%N=0
	)
	for /l %%N in (1,1,3) do (
		set %%G.inv.e.%%N=0
	)
	for /l %%N in (1,1,2) do (
		set %%G.inv.q.%%N=0
	)
)

::skill cooldowns

for %%G in (fir,hly,lsc,lac,dkl,arc) do (
	for %%N in (p1,p2) do (
		set/a %%N.%%G.c=0
	)
)


::skill assets

for %%G in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
	for %%N in (sr,sv,sc,sx,) do (
		for %%M in (p1,p2) do (
			set %%M.%%G.%%N=0
		)
	)
)

::skills, passive - masteries
for %%G in (cbt,mgc,fcs,krm,res,int,syn,spd,exp,reg,rum,hp,mp,df) do (
	for %%A in (sl,sc,ss) do (
		for %%B in (p1,p2) do (
			if %%A==sl set/a %%B.skl.%%G.%%A=1
			if %%A==ss set/a %%B.skl.%%G.%%A=0
			if %%A==sc set/a %%B.skl.%%G.%%A=0
		)
	)
)

::intro

call:funct.random 1 15
if %funct.return% lss 10 color 0%funct.return%
if %funct.return%==10 color 0A
if %funct.return%==11 color 0B
if %funct.return%==12 color 0C
if %funct.return%==13 color 0D
if %funct.return%==14 color 0E
if %funct.return%==15 color 0F

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 Wolfe Lumi
echo.
echo.                                  Presents
echo.
echo.                                Soulstream II
echo.
echo.
echo.
timeout 2 >nul
color 0F
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                    Soulstream II is still in development.
echo.
echo.         This means that there will be a lot of bugs and/or glitches
echo.
echo.                        Please be mindful of that.
echo.
echo.                                Thanks. Wolfe.
timeout 3 >nul
:menu
cls
echo.
echo.
echo.
echo.
echo.
echo.          Soulstream II %ssii.version% - Items, Items, Items, Items...
echo.
echo.
echo.
echo.
echo. N                              New Game
echo.
echo. L                              Load Save
echo.
echo. Q                              Leaderboard
echo.
echo. A                              About
echo.
echo. E                              Exit
echo.
echo.
echo.
echo.
echo.                     Soulstream II (C) Wolfe Lumi
echo.
choice /n /c nlaeq >nul
set menu=%errorlevel%
if %menu%==1 goto:menu.start
if %menu%==2 goto:menu.loadsave
if %menu%==3 goto:menu.about
if %menu%==4 exit
if %menu%==5 goto:menu.leaderboard

:menu.leaderboard
::init!
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo.                                %ssii.version%
echo -----                                                                      -----
echo.
echo.                   O F F I C I A L   L E A D E R B O A R D
echo.
echo --------------------------------------------------------------------------------
echo.
echo.                            ----Ranked 1----
echo.                               Wolfe Lumi
echo.
echo.                             ---Ranked 2---
echo.                                 Moses
echo.
echo.                              --Ranked 3--
echo.                              Pherihelion
echo.
echo --------------------------------------------------------------------------------
echo.
echo.                               T O P   1 2
echo.
echo.		Rank 4		Wilson
echo.
echo.		Rank 5		xAzureElectro
echo.
echo.		Rank 6		Srbninja
echo.
echo.		Rank 7		
echo.
echo.		Rank 8		
echo.
echo.		Rank 9		
echo.
echo.		Rank 10		
echo.
echo.		Rank 11		
echo.
echo.		Rank 12		
echo.
echo.
echo.
echo.
pause>nul
goto:menu

:menu.about
cls
echo.
echo.
echo.
echo.
echo.
echo.                       Soulstream II %ssii.version%
echo.
echo.
echo.                     Nothing here yet. check back later.
echo.
echo.
echo.
pause
goto:menu

:menu.loadsave
ren saves.ssii saves.bat
call saves.bat
ren saves.bat saves.ssii
set ssii.loaded=1
goto:start.load

:menu.start
cls
echo.
echo.
echo.
echo.                              Player 1's Name?
echo.
set/p n1=)                               
echo.
echo.                              Player 2's Name?
echo.
set/p n2=)                               
:start.test
cls
if not exist testmode.txt goto start.test.a
echo.
echo.
echo.
echo.                Would you like to run Soulstream II on test mode?
echo.
echo.                                     Y/N
choice /n /c yn >nul
set menu=%errorlevel%
if %menu%==1 goto:start.test.y
if %menu%==2 goto:start.test.a
goto start.test

::graphic for abilities for ease of access.
:graphics.ability
cls
echo.
echo.
echo.
echo.
if %1==1 set name=%n1%
if %1==2 set name=%n2%
echo.                              --%name%--
echo.
echo.                           Class Selection
echo.
echo.
echo.           S         Sniper : +Dexterity       +Strength
echo.                            : -Inc .MP Drain   -Defence
echo.
echo.           T          Thief : +Dexterity       +Intelligence
echo.                            : -Strength        -Defence
echo.
echo.           W        Warrior : +Defence         +Defence Pen.
echo.                            : -Luck            -Intelligence
echo.
echo.           K         Knight : +Will            +Strength
echo.                            : -Dexterity       -Intelligence
echo.
echo.           M           Mage : +Intelligence    +Reduced MP Cost
echo.                            : -Defence         -Strength
echo.
echo.           A      Alchemist : +Critical Rate   +Crit Multiplier
echo.                            : -Defence         -Intelligence
echo.
echo.           R         Reaper : +Defence Pen.    +Strength
echo.                            : -Critical Rate   -Intelligence
echo.
echo.           H           Hero : +Willpower       +Luck
echo.                            : -Intelligence    -Inc. MP Drain
echo.
echo.           N         Ranger : +Defence Pen.    +Dexterity
echo.                            : -Intelligence    -Defence
echo.
echo.           I       Assassin : +Critical Rate   +Luck
echo.                            : -Defence         -Willpower
echo.
echo.           Z         Wizard : +Intelligence    +Reduced MP Cost
echo.                            : -Luck            -Willpower
echo.
echo.           D   Shadowhunter : +Willpower       +Strength
echo.                            : -Critical Rate   -Inc. MP Drain
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
choice /n /c stwkmarhnizd >nul
set menu=%errorlevel%
goto:eof

::ability function. only to make new abilities easier.
::call:funct.ability [p1/2] choice#
::aac = ability accuracy calculations, positive number, decreases sba
::aid = ability identifier, 1 for sniper, etc. this will be used for ability masteries.
::aab = Abiltiy accuracy balances, increases self sba
:funct.ability
::sniper
if %2==1 (
	set/a %1.ast=50
	set/a %1.adx=50
	set/a %1.ain=20
	set/a %1.alk=00
	set/a %1.awl=-20
	set/a %1.adp=-2
	set/a %1.adf=5
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=-10
	set/a %1.lmp=-1
	set/a %1.lhp=-2
	set/a %1.aac=0
	set/a %1.aid=1
	set/a %1.aab=10
	set %1.ab.d=Sniper
)
::Thief
if %2==2 (
	set/a %1.ast=-20
	set/a %1.adx=30
	set/a %1.ain=30
	set/a %1.alk=40
	set/a %1.awl=00
	set/a %1.adp=0
	set/a %1.adf=-2
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=0
	set/a %1.lmp=-3
	set/a %1.lhp=-4
	set/a %1.aac=10
	set/a %1.aid=2
	set/a %1.aab=0
	set %1.ab.d=Thief
)
::warrior
if %2==3 (
	set/a %1.ast=40
	set/a %1.adx=20
	set/a %1.ain=-20
	set/a %1.alk=-20
	set/a %1.awl=00
	set/a %1.adp=3
	set/a %1.adf=4
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=0
	set/a %1.lmp=-2
	set/a %1.lhp=3
	set/a %1.aac=0
	set/a %1.aid=3
	set/a %1.aab=0
	set %1.ab.d=Warrior
)
::knight
if %2==4 (
	set/a %1.ast=50
	set/a %1.adx=-30
	set/a %1.ain=-30
	set/a %1.alk=00
	set/a %1.awl=50
	set/a %1.adp=3
	set/a %1.adf=5
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=0
	set/a %1.lmp=-1
	set/a %1.lhp=3
	set/a %1.aac=0
	set/a %1.aid=4
	set/a %1.aab=0
	set %1.ab.d=Knight
)
::magician
if %2==5 (
	set/a %1.ast=00
	set/a %1.adx=30
	set/a %1.ain=50
	set/a %1.alk=10
	set/a %1.awl=10
	set/a %1.adp=0
	set/a %1.adf=-3
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.lmp=4
	set/a %1.lhp=-2
	set/a %1.amp=20
	set/a %1.aac=5
	set/a %1.aid=5
	set/a %1.aab=5
	set %1.ab.d=Mage
)
::alchemist
if %2==6 (
	set/a %1.ast=30
	set/a %1.adx=20
	set/a %1.ain=-20
	set/a %1.alk=50
	set/a %1.awl=00
	set/a %1.adp=0
	set/a %1.adf=-3
	set/a %1.acm=5
	set/a %1.acr=10
	set/a %1.amp=-5
	set/a %1.lmp=2
	set/a %1.lhp=-2
	set/a %1.aac=0
	set/a %1.aid=6
	set/a %1.aab=0
	set %1.ab.d=Alchemist
)
::reaper
if %2==7 (
	set/a %1.ast=50
	set/a %1.adx=30
	set/a %1.ain=-50
	set/a %1.alk=00
	set/a %1.awl=40
	set/a %1.adp=5
	set/a %1.adf=0
	set/a %1.acm=0
	set/a %1.acr=-5
	set/a %1.amp=0
	set/a %1.lmp=3
	set/a %1.lhp=-1
	set/a %1.aac=0
	set/a %1.aid=7
	set/a %1.aab=5
	set %1.ab.d=Reaper
)
::hero
if %2==8 (
	set/a %1.ast=50
	set/a %1.adx=00
	set/a %1.ain=-50
	set/a %1.alk=30
	set/a %1.awl=40
	set/a %1.adp=0
	set/a %1.adf=6
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=-10
	set/a %1.lmp=-3
	set/a %1.lhp=3
	set/a %1.aac=0
	set/a %1.aid=8
	set/a %1.aab=0
	set %1.ab.d=Hero
)
::ranger
if %2==9 (
	set/a %1.ast=30
	set/a %1.adx=50
	set/a %1.ain=-50
	set/a %1.alk=00
	set/a %1.awl=20
	set/a %1.adp=5
	set/a %1.adf=-4
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=0
	set/a %1.lmp=-4
	set/a %1.lhp=2
	set/a %1.aac=0
	set/a %1.aid=9
	set/a %1.aab=10
	set %1.ab.d=Ranger
)
::assassin
if %2==10 (
	set/a %1.ast=00
	set/a %1.adx=30
	set/a %1.ain=30
	set/a %1.alk=50
	set/a %1.awl=-50
	set/a %1.adp=2
	set/a %1.adf=-5
	set/a %1.acm=2
	set/a %1.acr=5
	set/a %1.amp=0
	set/a %1.lmp=2
	set/a %1.lhp=-2
	set/a %1.aac=0
	set/a %1.aid=10
	set/a %1.aab=2
	set %1.ab.d=Assassin
)
::wizard
if %2==11 (
	set/a %1.ast=00
	set/a %1.adx=00
	set/a %1.ain=50
	set/a %1.alk=-50
	set/a %1.awl=-50
	set/a %1.adp=0
	set/a %1.adf=0
	set/a %1.acm=0
	set/a %1.acr=0
	set/a %1.amp=20
	set/a %1.lmp=5
	set/a %1.lhp=-2
	set/a %1.aac=0
	set/a %1.aid=11
	set/a %1.aab=5
	set %1.ab.d=Wizard
)
::shadowhunter
if %2==12 (
	set/a %1.ast=50
	set/a %1.adx=40
	set/a %1.ain=40
	set/a %1.alk=30
	set/a %1.awl=50
	set/a %1.adp=0
	set/a %1.adf=0
	set/a %1.acm=0
	set/a %1.acr=-5
	set/a %1.amp=-10
	set/a %1.lmp=2
	set/a %1.lhp=2
	set/a %1.aac=0
	set/a %1.aid=12
	set/a %1.aab=0
	set %1.ab.d=Shadowhunter
)
goto:eof

:start.test.a

call:funct.random 1 2
if %funct.return%==2 goto ssii.ability2
::player 1
call:graphics.ability 1
call:funct.ability p1 %menu%
::player 2
call:graphics.ability 2
call:funct.ability p2 %menu%
goto:ssii:ability3
:ssii.ability2
::player 2
call:graphics.ability 2
call:funct.ability p2 %menu%
::player 1
call:graphics.ability 1
call:funct.ability p1 %menu%
:ssii:ability3
::any init processes

goto start.load.first

::========================================================================================================
::CALL INIT BLOCK

:funct.random
if %2 lss 1 (
	set/a funct.return=1
	goto:eof
)
set/a funct.return=(%random% %% (%2 - %1 + 1)) + %1
goto:eof

:funct.round
::usage: call:funct.round [number] [round to]
set/a ssii.tmp=%1/%2
set/a ssii.tmp+=1
set/a funct.return=%ssii.tmp% * %2
set ssii.tmp=
goto:eof
:funct.cooldown
for %%G in (fir,hly,lsc,lac,dkl,arc) do (
	for %%N in (p1,p2) do (
		set/a %%N.%%G.c=-1
		if !%%N.%%G.c! lss 1 set/a %%N.%%G.c=0
	)
)
goto:eof

:funct.buff
echo. %p1.buff.enl%
for %%G in (enl,cla,shm,wit) do (
	for %%N in (p1,p2) do (
		set/a %%N.buff.%%G-=1
		if !%%N.buff.%%G! lss 0 set/a %%N.buff.%%G=0
			)
		)
	)
)
echo. %p1.buff.enl%
echo. %p1.enl.ba%
for %%G in (enl,cla,shm,wit) do (
	for %%N in (p1,p2) do (
		if !%%N.buff.%%G!==0 (
			if !%%N.%%G.ba!==1 call:funct.buff.%%G %%N
		)
	)
)
goto:eof
:funct.buff.enl
for %%G in (st,dx,in,lk,wl) do (
	set/a %1.%%G-=!%1.enl.%%G!
	set/a %1.enl.ba
)
::===================================================================================
::itemvalue! oh god.
::usage: Set 'itemcall' to string, then call :funct.itemvalue
::returns value in form of itemvalue.
::itemvalue drags from itemstats, say, no percentage is default. therefore: 30str+10dex=40Value.
::all can be rounded up to the nearest 30, with a default cost dependant on the item prefix.

::itemstats also gives itemvalue.

::itemstats! statistical itemry. wow.
::as per usual, set 'itemcall' to the respective string.
::itemstat will return hp mp st dx in lk wl dp df bl pv in the form of item.%%, i.e. item.hp
:funct.itemstat
for /f "tokens=1" %%A in ("%itemcall%") do (
	if "%%A"=="1" set item.type=1 & goto:funct.itemst.eq
	if "%%A"=="2" set item.type=2 & goto:funct.itemst.pt
)
::empty item
set item.empty=1
goto:eof
::st 12 belongs to eq, 34 belongs to pt.
:funct.itemst.pt
set item.empty=0
set item.hp=0
set item.mp=0
set item.pv=0

for /f "tokens=2" %%A in ("%itemcall%") do (
	if "%%A"=="1" set item.type=1 & goto:funct.itemst.3
	if "%%A"=="2" set item.type=2 & goto:funct.itemst.4
)
:funct.itemst.3
::normal potion.
for /f "tokens=3-5" %%A in ("%itemcall%") do (
	set item.hp=%%A
	set item.mp=%%B
	set item.=%%C
)
set itemvalue=20
for %%G in (hp,mp) do (
	set/a itemvalue+=!item.%%G!*2
)
::if it is a percentage, x60
if %item.pv%==1 set/a itemvalue*=60
set itemrate=10
if "%item.hp%" neq "0" ( if "%item.mp%" neq "0" (
	set item.rate=25
))
set/a itemvalue=%itemvalue% * %itemrate% / 10
::itemvalue is affected by the changing rates of SSII! wow.
::rate is %ssii.rate% and is changed at load. it will be a float-100 from 60-200
set/a itemvalue=%itemvalue% * %ssii.rate% / 100
goto:eof
:funct.itemst.4
::special preset potion! gawd...
goto:eof

:funct.itemst.eq
set item.empty=0
set item.st=0
set item.dx=0
set item.in=0
set item.lk=0
set item.wl=0
set item.df=0
set item.dp=0
set item.bl=0
set item.hp=0
set item.mp=0
set item.pv=0

for /f "tokens=2" %%A in ("%itemcall%") do (
	if "%%A"=="1" set item.type=1 & goto:funct.itemst.1
	if "%%A"=="2" set item.type=2 & goto:funct.itemst.2
)
:funct.itemst.1
::this item is a stat item.
::======itemstats
::1 1 3 Lorenzo's 0 -100 100 50 500 0 0 0 0
for /f "tokens=5-13" %%A in ("%itemcall%") do (
	set item.st=%%A
	set item.dx=%%B
	set item.in=%%C
	set item.lk=%%D
	set item.wl=%%E
	set item.df=%%F
	set item.dp=%%G
	set item.bl=%%H
	set item.pv=%%I
)
::======itemvalue
set itemvalue=10
for %%G in (st,dx,in,lk,wl,df,dp,bl) do (
	set/a itemvalue+=!item.%%G! * 2
)
::round itemvalue up to the nearest 30
set/a itemvalue=(%itemvalue% / 30 + 1) * 30
::it is a percentage, x40
if %item.pv%==1 set/a itemvalue*=40
::itemvalue is affected by the changing rates of SSII! wow.
::rate is %ssii.rate% and is changed at load. it will be a float-100 from 60-200
set/a itemvalue=%itemvalue% * %ssii.rate% / 100
goto:eof
::===========================================================================
:funct.itemst.2
::this item is a hp/mp item.
::======itemstats
::1 1 3 Lorenzo's 0 -100 100 50 500 0 0 0 0
for /f "tokens=5-7" %%A in ("%itemcall%") do (
	set item.hp=%%A
	set item.mp=%%B
	set item.pv=%%C
)
::======itemvalue
set itemvalue=10
for %%G in (hp,mp) do (
	set/a itemvalue+=!item.%%G! * 2
)
set/a itemvalue=(%itemvalue% / 30 + 1) * 30
::1 1 3 Lorenzo's 0 -100 100 50 500 0 0 0 0
if %item.pv%==1 set/a itemvalue*=40
::hp is worth more, 1.5x.
set/a itemvalue=%itemvalue% * 15 / 10
set/a itemvalue=%itemvalue% * %ssii.rate% / 100
goto:eof
::===================================================================================
::item init, understanding strings of items.
::usage: SET 'itemcall' to string THEN call:funct.itemid 
::returns item.type, item.name, item.stats
:funct.itemid
set item.empty=0
for /f "tokens=1" %%A in ("%itemcall%") do (
	if "%%A"=="1" set item.type=Equipment & goto:funct.itemid.eq
	if "%%A"=="2" set item.type=Potion & goto:funct.itemid.pt
)
set item.type=   -
set item.name=   -
set item.stats=   -
set item.empty=1
goto:eof
:funct.itemid.pt
set item.type=Potion
for /f "tokens=2" %%A in ("%itemcall%") do (
	::type?
	if "%%A"=="1" goto:funct.itemid.pt1
)
goto:eof

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
goto:eof
:funct.itemid.eq
set item.type=Equipment
for /f "tokens=3,4" %%A in ("%itemcall%") do (
	::naming!!
	if "%%A"=="1" set item.name=Ring of %%B
	if "%%A"=="2" set item.name=Necklace of %%B
	if "%%A"=="3" set item.name=Pendant of %%B
	if "%%A"=="4" set item.name=Scarf of %%B
	if "%%A"=="5" set item.name=Glove of %%B
	if "%%A"=="6" set item.name=Glasses of %%B
	if "%%A"=="7" set item.name=Robe of %%B
	if "%%A"=="8" set item.name=Staff of %%B
	if "%%A"=="9" set item.name=Bane of %%B
	if "%%A"=="10" set item.name=Wings of %%B
	if "%%A"=="11" set item.name=Amulet of %%B
	if "%%A"=="12" set item.name=Cross of %%B
	if "%%A"=="13" set item.name=Mark of %%B
	if "%%A"=="14" set item.name=Charm of %%B
	if "%%A"=="15" set item.name=Spell of %%B
	if "%%A"=="16" set item.name=Rune of %%B
	if "%%A"=="17" set item.name=Hex of %%B
	if "%%A"=="18" set item.name=%%B Wear
	if "%%A"=="19" set item.name=%%B Uniform
	if "%%A"=="20" set item.name=%%B Outfit
	if "%%A"=="21" set item.name=%%B Ring
	if "%%A"=="22" set item.name=%%B Necklace
	if "%%A"=="23" set item.name=%%B Pendant
	if "%%A"=="24" set item.name=%%B Cross
	if "%%A"=="25" set item.name=%%B Amulet
	if "%%A"=="26" set item.name=%%B Wings
	if "%%A"=="27" set item.name=%%B Hex
	if "%%A"=="28" set item.name=%%B Scarf
	if "%%A"=="29" set item.name=%%B Glove
	if "%%A"=="30" set item.name=%%B Glasses
	if "%%A"=="31" set item.name=%%B Staff
	if "%%A"=="32" set item.name=%%B Charm
	if "%%A"=="33" set item.name=%%B Spell
	if "%%A"=="34" set item.name=%%B Rune
	if "%%A"=="35" set item.name=%%B Scrolls
)
for /f "tokens=2" %%A in ("%itemcall%") do (
	::type?
	if "%%A"=="1" goto:funct.itemid.eq1
	if "%%A"=="2" goto:funct.itemid.eq2
)
goto:eof
:funct.itemid.eq2
for /f "tokens=5-8" %%A in ("%itemcall%") do (
	::stats!
	set/a item.1=%%A
	set/a item.2=%%B
	set/a item.pv=%%C
)
for /l %%G in (1,1,2) do (
	set itemslot.%%G=
)
set itemcount=1
if %item.1% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.1!&set/a itemslID.%itemcount%=1
if %item.2% neq 0 set/a itemcount+=1&set/a itemslot.%itemcount%=!item.2!&set/a itemslID.%itemcount%=2
set/a itemcount-=1

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
goto:eof
:funct.itemid.eq1
for /f "tokens=5-13" %%A in ("%itemcall%") do (
	::stats!
	set item.1=%%A
	set item.2=%%B
	set item.3=%%C
	set item.4=%%D
	set item.5=%%E
	set item.6=%%F
	set item.7=%%G
	set item.8=%%H
	set item.pv=%%I
)
for /l %%G in (1,1,8) do (
	set itemslot.%%G=
)
set itemcount=1
if %item.1% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.1!&set itemslID.%itemcount%=1
if %item.2% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.2!&set itemslID.%itemcount%=2
if %item.3% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.3!&set itemslID.%itemcount%=3
if %item.4% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.4!&set itemslID.%itemcount%=4
if %item.5% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.5!&set itemslID.%itemcount%=5
if %item.6% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.6!&set itemslID.%itemcount%=6
if %item.7% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.7!&set itemslID.%itemcount%=7
if %item.8% neq 0 set/a itemcount+=1&set itemslot.%itemcount%=!item.8!&set itemslID.%itemcount%=8
set/a itemcount-=1

if %item.pv%==1 set item.pvd=%%
if %item.pv%==0 set item.pvd=

for /l %%G in (1,1,%itemcount%) do (
	if !itemslID.%%G!==1 set itempre=STR
	if !itemslID.%%G!==2 set itempre=DEX
	if !itemslID.%%G!==3 set itempre=INT
	if !itemslID.%%G!==4 set itempre=LUK
	if !itemslID.%%G!==5 set itempre=WILL
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
goto:eof

:funct.save
if "%1"=="1" goto:funct.save.a
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  Saving...
:funct.save.a
ren saves.ssii saves.bat
echo. > saves.bat
::basics
echo set n1=%n1%>> saves.bat
echo set n2=%n2%>> saves.bat
for %%A in (p1,p2) do (
	for %%B in (sc,sx,hpa,mpa,hpl,mpl,hpx,mpx,dfa,bal,chp,cmp) do (
		echo set/a %%A.%%B=!%%A.%%B!>> saves.bat
	)
)

echo. >>saves.bat
::class
for %%A in (p1,p2) do (
	for %%B in (crm,crr,cdf,pro) do (
		echo set/a %%A.%%B=!%%A.%%B!>> saves.bat
	)
)
echo. >>saves.bat
::stats
for %%A in (p1,p2) do (
	for %%B in (str,dex,int,luk,wil) do (
		echo set/a %%A.%%B=!%%A.%%B!>> saves.bat
	)
)
echo. >>saves.bat
::class stats
for %%A in (p1,p2) do (
	for %%B in (cstr,cdex,cint,cluk,cwil) do (
		echo set/a %%A.%%B=!%%A.%%B!>> saves.bat
	)
)
echo. >>saves.bat
::Keysaves
for %%A in (p1,p2) do (
	for %%B in (c1,c2,c3,c4,c5,c6,c7,c8,c1.a,c2.a,c3.a,c4.a,c5.a,c6.a,c7.a,c8.a) do (
		echo set %%A.%%B=!%%A.%%B!>> saves.bat
	)
)
echo. >>saves.bat
::Skillranks!
for %%A in (p1,p2) do (
	for %%B in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
		echo set/a %%A.%%B.sr=!%%A.%%B.sr!>> saves.bat
	)
)
echo. >>saves.bat
::abilities
for %%A in (p1,p2) do (
	for %%B in (ast,adx,ain,alk,awl,adp,adf,acm,acr,amp,lmp,lhp,aac,aid,aab) do (
		echo set/a %%A.%%B=!%%A.%%B!>> saves.bat
	)
)
::skills, passive - masteries
for %%G in (cbt,mgc,fcs,krm,res,int,syn,spd,exp,reg,rum,hp,mp,df) do (
		for %%B in (p1,p2) do (
		echo set/a %%B.skl.%%G.sl=!%%B.skl.%%G.sl!>> saves.bat
		echo set/a %%B.skl.%%G.ss=!%%B.skl.%%G.ss!>> saves.bat
	)
)
::Items
for %%A in (p1,p2) do (
	for /l %%B in (1,1,9) do (
		echo set/a %%A.itemslot_%%B=!%%A.itemslot_%%B!>> saves.bat
	)
)
::other things
echo set p1.ab.d=%p1.ab.d%>> saves.bat
echo set p2.ab.d=%p2.ab.d%>> saves.bat
::wins and losses
echo set p1.loss=%p1.loss% >> saves.bat
echo set p2.loss=%p2.loss% >> saves.bat
echo set preloss=%preloss% >> saves.bat
ren saves.bat saves.ssii
goto:eof
::========================================================================================================
::Battle Calculations as Functions

::Dexterity Calculations
::returns a 1 or 0 as funct.return
::usage call:funct.acc [Skill_Base_Accuracy] [Attacker] [Attacked]
:funct.acc
::SKILL BASE ACCURACY MUST NOT EXCEED 95, recommended 50-70 max.
if %1==100 set/a funct.return=1 & goto:eof
set/a acc.sba=(%1 - !%2.aac! + !%2.aab!) * 10
set/a acc.rmd=1000-%acc.sba%
set/a acc.ratio=!%2.dx! + !%3.in!
:funct.acc.a
if %acc.rmd% lss %acc.ratio% set/a acc.ratio/=10 & goto:funct.acc.a
set/a acc.piece=%acc.rmd% / %acc.ratio%
set/a acc.acc=%acc.piece% * !%2.dx! / 10
set/a acc.dex=!%2.dx% / 30
set/a acc=%1 + %acc.dex% + %acc.acc%
if %acc% gtr 95 set acc=95
call:funct.random 0 100
if %funct.return% gtr %acc%  ( set/a funct.return=1 ) else ( set/a funct.return=0)
goto:eof


::unused accuracy calculations, pre 0.2 13-6
set/a acc=(1000 / 1000 + (((!%2.dx! - !%3.in!) * 100) / (%1 + !%2.dx!))) + %1
if %acc% gtr 90 set/a acc=90
if %acc% lss 15 set/a acc=15
call:funct.random 0 100
if %funct.return% gtr %acc%  ( set/a funct.return=1 ) else ( set/a funct.return=0)
goto:eof
::============================

::damage calcutions
::returns damage as funct.return
::usage: call:funct.damage [Skill_Base_Damage] [Skill_Base_Balance] [Attacker] [Attacked]
:funct.damage
set/a dmg.max=(%1 * (100 + !%3.st!)) / 100
set/a dmg.min=%dmg.max% - (%dmg.max% * 100 / (100 + !%3.bl! + %2))
call:funct.random %dmg.min% %dmg.max%
call:funct.defence %3 %4 %funct.return% 
goto:eof

::defence calculations
::usage call:funct.defence [Attacker] [Attacked] [Damage]
::returns damage as funct.return
:funct.defence

set/a cal.def=!%1.df!-!%2.dp!+10
echo. !%1.df!-!%2.dp!+10
if %cal.def% gtr 1000 set/a cal.def=1000
set/a funct.return = (((10000 / (100 + %cal.def%)) * (%3 * (100-!%1.pro!) / 100))/100)
if %cal.def% lss 1 set/a funct.return=%3
set postdamage=%funct.return%
set/a defdamage=%3 - %funct.return%

goto:eof

::graphics call. Calling graphics!
::usage call:graphics [skill] [attacker] [damage] [crit, 1/0] [critdamage]
:graphics
ren graphics.ssii graphics.bat
call graphics.bat %1 %2 %3 %4 %5 %6
ren graphics.bat graphics.ssii
goto:eof

::funct.stat, call to update stats
:funct.stat
set/a p1.st=%p1.str% + %p1.cstr% + (%p1.str% * %p1.ast% / 100)
set/a p1.dx=%p1.dex% + %p1.cdex% + (%p1.dex% * %p1.adx% / 100)
set/a p1.in=%p1.int% + %p1.cint% + (%p1.int% * %p1.ain% / 100)
set/a p1.lk=%p1.luk% + %p1.cluk% + (%p1.luk% * %p1.alk% / 100)
set/a p1.wl=%p1.wil% + %p1.cwil% + (%p1.wil% * %p1.awl% / 100)
::p2
set/a p2.st=%p2.str% + %p2.cstr% + (%p2.str% * %p2.ast% / 100)
set/a p2.dx=%p2.dex% + %p2.cdex% + (%p2.dex% * %p2.adx% / 100)
set/a p2.in=%p2.int% + %p2.cint% + (%p2.int% * %p2.ain% / 100)
set/a p2.lk=%p2.luk% + %p2.cluk% + (%p2.luk% * %p2.alk% / 100)
set/a p2.wl=%p2.wil% + %p2.cwil% + (%p2.wil% * %p2.awl% / 100)
set/a p1.hp=%p1.chp%+%p1.hpa%+(%p1.wl% / 2) + %p1.hpx%
set/a p1.hp+=%p1.hp% * %p1.lhp% / 10
set/a p1.hpl=%p1.hp% * 15 / 10
set/a p1.mp=%p1.cmp%+%p1.mpa%+(%p1.in% / 2) + %p1.mpx%
set/a p1.mp+=%p1.mp% * %p1.lmp% / 10
set/a p1.mpl=%p1.mp% * 15 / 10
set/a p2.hp=%p2.chp%+%p2.hpa%+(%p2.wl% / 2) + %p2.hpx%
set/a p2.hp+=%p2.hp% * %p2.lhp% / 10
set/a p2.hpl=%p2.hp% * 15 / 10
set/a p2.mp=%p2.cmp%+%p2.mpa%+(%p2.in% / 2) + %p2.mpx%
set/a p2.mp+=%p2.mp% * %p2.lmp% / 10
set/a p2.mpl=%p2.mp% * 15 / 10
set/a p1.df=%p1.cdf%+%p1.dfa% + %p1.st% / 5 + ((%p1.cdf%+%p1.dfa%) * %p1.adf% /10)
set/a p2.df=%p2.cdf%+%p2.dfa% + %p2.st% / 5 + ((%p2.cdf%+%p2.dfa%) * %p2.adf% /10)
set/a p1.dp=%p1.cdp%+(%p1.dx% / 2) + ((%p1.cdp%+(%p1.dx% / 2) * %p1.adp% /10))
set/a p2.dp=%p2.cdp%+(%p2.dx% / 2) + ((%p2.cdp%+(%p2.dx% / 2) * %p2.adp% /10))
set/a p1.cr=%p1.acr% + (%p1.lk% / 40)
set/a p2.cr=%p2.acr% + (%p2.lk% / 40)
set/a p1.cm=%p1.crm% + (%p1.crm% * %p1.acm% / 30) + (%p1.lk% / 40)
set/a p2.cm=%p2.crm% + (%p2.crm% * %p2.acm% / 30) + (%p2.lk% / 40)
if %p1.cm% gtr 30 set/a p1.cm=30
if %p2.cm% gtr 30 set/a p2.cm=30
goto:eof

:funct.skill
for %%G in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
	for /l %%N in (0,1,15) do (
		for %%M in (p1,p2) do (
			if !%%M.%%G.sr!==%%N set/a %%M.%%G.sm=!skill.%%N.sm!
			if !%%M.%%G.sr!==%%N set/a %%M.%%G.sc=!%%M.%%G.sv! * !skill.%%N.sc! / 10
			if !%%M.%%G.sr!==%%N set/a %%M.%%G.sx=!%%M.%%G.sv! * !skill.%%N.sx! / 10
			if !%%M.%%G.sr!==0 set %%M.%%G.sd=-
			if !%%M.%%G.sr!==1 set %%M.%%G.sd=F
			if !%%M.%%G.sr!==2 set %%M.%%G.sd=E
			if !%%M.%%G.sr!==3 set %%M.%%G.sd=D
			if !%%M.%%G.sr!==4 set %%M.%%G.sd=C
			if !%%M.%%G.sr!==5 set %%M.%%G.sd=B
			if !%%M.%%G.sr!==6 set %%M.%%G.sd=A
			if !%%M.%%G.sr!==7 set %%M.%%G.sd=9
			if !%%M.%%G.sr!==8 set %%M.%%G.sd=8
			if !%%M.%%G.sr!==9 set %%M.%%G.sd=7
			if !%%M.%%G.sr!==10 set %%M.%%G.sd=6
			if !%%M.%%G.sr!==11 set %%M.%%G.sd=5
			if !%%M.%%G.sr!==12 set %%M.%%G.sd=4
			if !%%M.%%G.sr!==13 set %%M.%%G.sd=3
			if !%%M.%%G.sr!==14 set %%M.%%G.sd=2
			if !%%M.%%G.sr!==15 set %%M.%%G.sd=1
			
		)
	)
)
goto:eof
::========================================================================================================

:start.load.first
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...10%%
set/a p1.hp=100
set/a p1.mp=100
set/a p1.hpa=0
set/a p1.mpa=0
set/a p1.dfa=80
set/a p1.bal=60
set/a p1.cmp=100
set/a p1.chp=100

set/a p2.hp=100
set/a p2.mp=100
set/a p2.hpa=0
set/a p2.mpa=0
set/a p2.dfa=80
set/a p2.bal=60
set/a p2.cmp=100
set/a p2.chp=100

set/a p1.crm=20
set/a p1.crr=0
set/a p1.cdf=0
set/a p1.cdp=0
set/a p1.pro=0
set/a p2.crm=20
set/a p2.crr=0
set/a p2.cdp=0
set/a p2.cdf=0
set/a p2.pro=0

set/a p1.str=25
set/a p1.dex=25
set/a p1.int=25
set/a p1.luk=25
set/a p1.wil=25
set/a p2.str=25
set/a p2.dex=25
set/a p2.int=25
set/a p2.luk=25
set/a p2.wil=25

set/a p1.cstr=20
set/a p1.cdex=20
set/a p1.cint=20
set/a p1.cluk=20
set/a p1.cwil=20
set/a p2.cstr=20
set/a p2.cdex=20
set/a p2.cint=20
set/a p2.cluk=20
set/a p2.cwil=20

set p1.c1=A
set p1.c2=S
set p1.c3=D
set p1.c4=F
set p1.c5=Z
set p1.c6=X
set p1.c7=C
set p1.c8=V
set p1.c1.a=att
set p1.c2.a=fus
set p1.c3.a=hea
set p1.c4.a=res
set p1.c5.a=att
set p1.c6.a=att
set p1.c7.a=att
set p1.c8.a=att
set p2.c1=A
set p2.c2=S
set p2.c3=D
set p2.c4=F
set p2.c5=Z
set p2.c6=X
set p2.c7=C
set p2.c8=V
set p2.c1.a=att
set p2.c2.a=fus
set p2.c3.a=hea
set p2.c4.a=res
set p2.c5.a=att
set p2.c6.a=att
set p2.c7.a=att
set p2.c8.a=att

::load skillranks!

set/a p1.att.sr=12
set/a p1.hea.sr=6
set/a p1.res.sr=6
set/a p1.fus.sr=2
set/a p1.mgc.sr=0
set/a p1.mga.sr=0
set/a p1.sok.sr=0
set/a p1.lig.sr=0
set/a p1.enl.sr=0
set/a p1.dbl.sr=0
set/a p1.ice.sr=0
set/a p1.fir.sr=0
set/a p1.esc.sr=0
set/a p1.clr.sr=0
set/a p1.hly.sr=0
set/a p1.cer.sr=0
set/a p1.lsc.sr=0
set/a p1.lsp.sr=0
set/a p1.shm.sr=0
set/a p1.lac.sr=0
set/a p1.wow.sr=0
set/a p1.dkl.sr=0
set/a p1.wor.sr=0
set/a p1.wit.sr=0
set/a p1.arc.sr=0

set/a p2.att.sr=12
set/a p2.hea.sr=6
set/a p2.res.sr=6
set/a p2.fus.sr=2
set/a p2.mgc.sr=0
set/a p2.mga.sr=0
set/a p2.sok.sr=0
set/a p2.lig.sr=0
set/a p2.enl.sr=0
set/a p2.dbl.sr=0
set/a p2.ice.sr=0
set/a p2.fir.sr=0
set/a p2.esc.sr=0
set/a p2.clr.sr=0
set/a p2.hly.sr=0
set/a p2.cer.sr=0
set/a p2.lsc.sr=0
set/a p2.lsp.sr=0
set/a p2.shm.sr=0
set/a p2.lac.sr=0
set/a p2.wow.sr=0
set/a p2.dkl.sr=0
set/a p2.wor.sr=0
set/a p2.wit.sr=0
set/a p2.arc.sr=0

call:funct.random 1 2
set/a preloss=%funct.return%

:start.load
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...25%%

::buff active
for %%G in (enl,cla,shm,wit) do (
	for %%N in (p1,p2) do (
		set %%N.%%G.ba=0
	)
)

::ssii rates! the rate is a float 100.
call:funct.random 50 150
set ssii.rate=%funct.return%

:: passive skill or masteries skill value. same for both, may or may not change. it may be affected by ability
::float 10
set ssii.errormessage=
set/a skl.cbt.sv=10
set/a skl.mgc.sv=10
set/a skl.fcs.sv=10
set/a skl.krm.sv=12
set/a skl.res.sv=12
set/a skl.int.sv=16
set/a skl.syn.sv=18
set/a skl.spd.sv=18
set/a skl.exp.sv=18
set/a skl.reg.sv=30
set/a skl.rum.sv=30
set/a skl.hp.sv=8
set/a skl.mp.sv=8
set/a skl.df.sv=12
set/a p1.td=0
set/a p2.td=0
set/a p1.str+=25
set/a p1.dex+=25
set/a p1.int+=25
set/a p1.luk+=25
set/a p1.wil+=25
set/a p1.def+=15
set/a p2.str+=25
set/a p2.dex+=25
set/a p2.int+=25
set/a p2.luk+=25
set/a p2.wil+=25
set/a p2.def+=15
call:funct.stat
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...45%%
set/a p1.hpx+=25
set/a p2.hpx+=25
set/a p1.mpx+=25
set/a p2.mpx+=25
set/a p1.fir.c=1
set/a p2.fir.c=1
set/a p1.hly.c=2
set/a p2.hly.c=2
set/a p1.lsc.c=1
set/a p2.lsc.c=1
set/a p1.lac.c=2
set/a p2.lac.c=2
set/a p1.dkl.c=1
set/a p2.dkl.c=1
set/a p1.arc.c=2
set/a p2.arc.c=2 

set/a p1.att.sv=1
set/a p2.att.sv=1
set/a p1.hea.sv=12
set/a p2.hea.sv=12
set/a p1.res.sv=10
set/a p2.res.sv=10
set/a p1.fus.sv=18
set/a p2.fus.sv=18
set/a p1.mgc.sv=25
set/a p2.mgc.sv=25
set/a p1.mga.sv=30
set/a p2.mga.sv=30
set/a p1.sok.sv=35
set/a p2.sok.sv=35
set/a p1.lig.sv=50
set/a p2.lig.sv=50
set/a p1.enl.sv=25
set/a p2.enl.sv=25
set/a p1.dbl.sv=40
set/a p2.dbl.sv=40
set/a p1.ice.sv=20
set/a p2.ice.sv=20
set/a p1.fir.sv=30
set/a p2.fir.sv=30
set/a p1.esc.sv=40
set/a p2.esc.sv=40
set/a p1.clr.sv=30
set/a p2.clr.sv=30
set/a p1.hly.sv=60
set/a p2.hly.sv=60
set/a p1.cer.sv=20
set/a p2.cer.sv=20
set/a p1.lsc.sv=30
set/a p2.lsc.sv=30
set/a p1.lsp.sv=40
set/a p2.lsp.sv=40
set/a p1.shm.sv=30
set/a p2.shm.sv=30
set/a p1.lac.sv=60
set/a p2.lac.sv=60
set/a p1.wow.sv=20
set/a p2.wow.sv=20
set/a p1.dkl.sv=30
set/a p2.dkl.sv=30
set/a p1.wor.sv=40
set/a p2.wor.sv=40
set/a p1.wit.sv=30
set/a p2.wit.sv=30
set/a p1.arc.sv=60
set/a p2.arc.sv=60 
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...65%%
::Skill loading, oh god.
::skill.rank.sm (skill multiplier), float 10.
set/a  skill.0.sm=0
set/a  skill.1.sm=5
set/a  skill.2.sm=6
set/a  skill.3.sm=7
set/a  skill.4.sm=8
set/a  skill.5.sm=9
set/a  skill.6.sm=10
set/a  skill.7.sm=11
set/a  skill.8.sm=12
set/a  skill.9.sm=14
set/a skill.10.sm=16
set/a skill.11.sm=20
set/a skill.12.sm=24
set/a skill.13.sm=28
set/a skill.14.sm=34
set/a skill.15.sm=40
::skill.rank.sc (skill cost, soul coins)
set/a  skill.0.sc=150
set/a  skill.1.sc=50
set/a  skill.2.sc=60
set/a  skill.3.sc=70
set/a  skill.4.sc=80
set/a  skill.5.sc=90
set/a  skill.6.sc=100
set/a  skill.7.sc=120
set/a  skill.8.sc=180
set/a  skill.9.sc=240
set/a skill.10.sc=360
set/a skill.11.sc=440
set/a skill.12.sc=520
set/a skill.13.sc=680
set/a skill.14.sc=800
set/a skill.15.sc=0
::skill.rank.sx (skill experience cost)
set/a  skill.0.sx=140
set/a  skill.1.sx=60
set/a  skill.2.sx=100
set/a  skill.3.sx=140
set/a  skill.4.sx=200
set/a  skill.5.sx=260
set/a  skill.6.sx=340
set/a  skill.7.sx=410
set/a  skill.8.sx=520
set/a  skill.9.sx=590
set/a skill.10.sx=640
set/a skill.11.sx=710
set/a skill.12.sx=820
set/a skill.13.sx=950
set/a skill.14.sx=1250
set/a skill.15.sx=0
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...70%%
call:funct.skill
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...75%%
call:funct.save 1

set p1.itemslot_1=2 1 20 0 0
set p1.itemslot_2=1 2 4 Anton 150 0 0
set p1.itemslot_3=1 1 1 Moses 0 0 500 0 0 0 0 0 0
set p1.itemslot_4=2 1 250 150 0
set p1.itemslot_5=0
set p1.itemslot_6=1 1 8 Lorenzo's 0 -100 100 50 500 0 0 0 0
set p1.itemslot_7=1 1 2 Jason 0 0 500 0 0 0 0 0 0
set p1.itemslot_8=2 1 120 70 0
set p1.itemslot_9=2 1 50 50 0

set p2.itemslot_1=2 1 20 0 0
set p2.itemslot_2=2 1 250 250 0
set p2.itemslot_3=0
set p2.itemslot_4=0
set p2.itemslot_5=0
set p2.itemslot_6=0
set p2.itemslot_7=1 1 2 Jason 0 0 500 0 0 0 0 0 0
set p2.itemslot_8=2 1 120 70 0
set p2.itemslot_9=2 1 50 50 0

::------------------------itemslot loading, loading stats.

::this is resetting all values to 0, safety
for %%G in (p1,p2) do (
	for /l %%H in (1,1,9) do (
		for %%I in (st,dx,in,lk,wl,df,dp,bl,hp,mp,pv) do (
			set %%G.item_%%H.%%I=0
		)
	)
)
goto:testpass
::old
::Player 1/2!
for %%G in (p1,p2) do (
	::for each individual item
	for /l %%H in (1,1,9) do (
		::look for itemstats
		set itemcall=!%%G.itemslot_%%H!
		call:funct.itemstat
		for %%I in (st,dx,in,lk,wl,df,dp,bl,hp,mp,pv) do (
			::set them respectively to player.item_number.stat
			set %%G.item_%%H.%%I=!item.%%I!
		)
	)
)
goto:testpass



::new
::now to add them. oh god why....
@echo on
for %%G in (p1,p2) do (
	for %%H in (st,dx,in,lk,wl,df,dp,bl,hp,mp) do (
		for /l %%I in (1,1,9) do (
			echo. BASE:!%%G.%%H!
			echo. ITEMVALUE:!%%G.item_%%I.%%H!
			pause
			if "!p1.itemslot_%%I.pv"=="0" (
				set/a %%G.%%H+=!%%G.item_%%I.%%H!
				) else (
				set/a %%G.%%H+=!%%G.item_%%I.%%H! * !%%G.%%H! / 100
			)
			echo. !%%G.%%H!
			pause
		)
	)
)






cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                               Loading...95%%

goto p1.inventory.pre

::for the sake of reasonability, all hp and mp will be rounded UP to the nearest 5
for %%G in (hp,mp) do (
	for %%N in (p1,p2) do (
		set/a ssii.tmp=!%%N.%%G! / 5
		set/a ssii.tmp+=1
		set/a %%N.%%G=!ssii.tmp! * 5
	)
)

if "%ssii.loaded%"=="1" (
	set ssii.loaded=0
	set/a p1.str-=50
	set/a p1.dex-=50
	set/a p1.int-=50
	set/a p1.luk-=50
	set/a p1.wil-=50
	set/a p1.def-=30
	set/a p2.str-=50
	set/a p2.dex-=50
	set/a p2.int-=50
	set/a p2.luk-=50
	set/a p2.wil-=50
	set/a p2.def-=30
	set/a p1.hpx-=50
	set/a p2.hpx-=50
	set/a p1.mpx-=50
	set/a p2.mpx-=50
	goto:p1.shop
)
::note to self. compressed 3000 lines of code to 25. NICE!
::now. battle!!!
::=========================================================================================================
goto grid.p%preloss%
:grid.p1
::Regen and Rumination kick in!
set/a p1.hp+=%p1.skl.reg.ss%
set/a p1.mp+=%p1.skl.rum.ss%
if %p1.hp% gtr %p1.hpl% set/a p1.hp=%p1.hpl%
if %p1.mp% gtr %p1.mpl% set/a p1.mp=%p1.mpl%
if %p2.hp% gtr %p2.hpl% set/a p2.hp=%p2.hpl%
if %p2.mp% gtr %p2.mpl% set/a p2.mp=%p2.mpl%
if %p1.hp% lss 1 goto p1.die
if %p2.hp% lss 1 goto p2.die
call:funct.cooldown
call:funct.buff
:grid.p1.a
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.                      %ssii.errormessage%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.              +                                              -
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
echo.   T  U  R  N:     %n1%, descendant of the %p1.ab.d%.
echo --------------------------------------------------------------------------------
echo. + %n1%
echo. 	%p1.hp%HP	^|  %p1.mp%MP
echo. - %n2%
echo. 	%p2.hp%HP	^|  %p2.mp%MP
echo. 
echo --------------------------------------------------------------------------------
choice /n /c %p1.c1%%p1.c2%%p1.c3%%p1.c4%%p1.c5%%p1.c6%%p1.c7%%p1.c8%Q >nul
set/a menu=%errorlevel%
if %menu%==9 goto p1.menu

for %%G in (att,hea,res) do (
	if %%G==!p1.c%menu%.a! goto:p1.skill.!p1.c%menu%.a!
)
for %%G in (enl,cla,shm,wit) do (
	if %%G==!p1.c%menu%.a! call:buffcal p1 !p1.c%menu%.a! & goto:grid.p2
)

call:skillcal p1 p2 !p1.c%menu%.a!
goto:grid.p2

:p1.menu
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.                         %n1%, the %p1.cd%,
echo.                          descendant of the %p1.ab.d%.
echo.
echo.
echo.                            Assigned Skills
echo.                          W to assign Skills
echo.
for /l %%G in (1,1,8) do (
	if "!p1.c%%G.a!"=="att" set %%G.sc=Attack
	if "!p1.c%%G.a!"=="hea" set %%G.sc=Heal
	if "!p1.c%%G.a!"=="mga" set %%G.sc=Magic Arrow
	if "!p1.c%%G.a!"=="res" set %%G.sc=Rest
	if "!p1.c%%G.a!"=="mgc" set %%G.sc=Magic Claw
	if "!p1.c%%G.a!"=="fus" set %%G.sc=Fusion
	if "!p1.c%%G.a!"=="sok" set %%G.sc=Sokatsui
	if "!p1.c%%G.a!"=="lig" set %%G.sc=Lightning
	if "!p1.c%%G.a!"=="enl" set %%G.sc=Enlightenment
	if "!p1.c%%G.a!"=="dbl" set %%G.sc=Dire Blade
	if "!p1.c%%G.a!"=="ice" set %%G.sc=Ice Spear
	if "!p1.c%%G.a!"=="fir" set %%G.sc=Firestorm
	if "!p1.c%%G.a!"=="esc" set %%G.sc=Eweca Scythe
	if "!p1.c%%G.a!"=="clr" set %%G.sc=Clairvoyance
	if "!p1.c%%G.a!"=="hly" set %%G.sc=Holy Arrow
	if "!p1.c%%G.a!"=="cer" set %%G.sc=Cero
	if "!p1.c%%G.a!"=="lsc" set %%G.sc=Laceda Scythe
	if "!p1.c%%G.a!"=="lsp" set %%G.sc=Laceda Spear
	if "!p1.c%%G.a!"=="shm" set %%G.sc=Sharp Mind
	if "!p1.c%%G.a!"=="lac" set %%G.sc=Laceda Blade
	if "!p1.c%%G.a!"=="wow" set %%G.sc=Wings of White
	if "!p1.c%%G.a!"=="dkl" set %%G.sc=Dark Light
	if "!p1.c%%G.a!"=="wor" set %%G.sc=Wings of Rage
	if "!p1.c%%G.a!"=="wit" set %%G.sc=Wither
	if "!p1.c%%G.a!"=="arc" set %%G.sc=Luminous Arc
	echo.                            !p1.c%%G!	^|  !%%G.sc!
)
echo.
set/a mp=%p1.in%/2
set/a hp=%p1.wl%/2
set/a astc=%p1.str% * %p1.ast% / 100
set/a adxc=%p1.dex% * %p1.adx% / 100
set/a ainc=%p1.int% * %p1.ain% / 100
set/a alkc=%p1.luk% * %p1.alk% / 100
set/a awlc=%p1.wil% * %p1.awl% / 100
set/a adfc=(%p1.cdf%+%p1.dfa%) * %p1.adf% /10 + (%p1.st% / 5)
set/a adpc=(%p1.cdp%+(%p1.dx% / 2) * %p1.adp% /10)
set/a p1.adpc=%p1.dx%/2
set/a p1.crl=%p1.lk% / 40
set/a p1.cma=%p1.crm% * %p1.acm% / 30
set/a p1.cml=%p1.lk% / 30
set/a p1.cr.a=%p1.cm%/10
set/a p1.cr.b=%p1.cm% %% 10
set/a bl.1=(%p1.dx% / 20)
set/a bl.2=(%p1.wl% / 20)
set/a p1.xhp=%p1.chp%+%p1.hpa%+(%p1.wl% / 2)
set/a p1.xhp+=%p1.hp% * %p1.lhp% / 10
set/a p1.xmp=%p1.cmp%+%p1.mpa%+(%p1.in% / 2)
set/a p1.xmp+=%p1.mp% * %p1.lmp% / 10
set/a hpc=%p1.xhp% * %p1.lhp% / 10
set/a mpc=%p1.xmp% * %p1.lmp% / 10

echo.                                 Stats:
echo.
echo.                          Base   Class  (Ability)
echo.                      STR: %p1.str%	+ %p1.cstr%	+ (%astc%)		=%p1.st%
echo.                      DEX: %p1.dex%	+ %p1.cdex%	+ (%adxc%)		=%p1.dx%
echo.                      INT: %p1.int%	+ %p1.cint%	+ (%ainc%)		=%p1.in%
echo.                      LUK: %p1.luk%	+ %p1.cluk%	+ (%alkc%)		=%p1.lk%
echo.                      WIL: %p1.wil%	+ %p1.cwil%	+ (%awlc%)		=%p1.wl%
echo.                      DEF: %p1.dfa%	+ %p1.cdf%	+ (%adfc%)		=%p1.df%
echo.                      DFP: %p1.adpc%	+ %p1.cdp%	+ (%adpc%)		=%p1.dp%
echo.
echo.                      BAL: %p1.bal%	+ %bl.1%	+ %bl.2%		=%p1.bl%
echo.
echo.                           Base  Ability  Luck
echo.                      CRR: %p1.crr%	+ %p1.acr%	+ %p1.crl%	=+%p1.cr%%%	
echo.                      CRM: %p1.crm%	+ %p1.cma%	+ %p1.cml%	=%p1.cr.a%.%p1.cr.b%x
echo.
echo.                                     Class    Skills    Stats
echo.                       Health: 100 + %hpc%	+ %p1.hpa%	+ %hp%	=%p1.hp%
echo.                         Mana: 100 + %mpc%	+ %p1.mpa%	+ %mp%	=%p1.mp%
echo.
echo.
echo --------------------------------------------------------------------------------
choice /n /c qw >nul
set/a menu=%errorlevel%
if %menu%==1 goto:grid.p1.a
if %menu%==2 goto:p1.menu.assign

:p1.menu.assign
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo.                %n1%, the %p1.cd%, descendant of the %p1.ab.d%.
echo --------------------------------------------------------------------------------
echo.
echo.                             Assign Skills:
echo.
echo.                           Avaliable Skills:
echo.
for %%G in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
	if "%%G"=="att" set %%G.sa=1& set %%G.sb=A& set %%G.sc=Attack
	if "%%G"=="hea" set %%G.sa=2& set %%G.sb=B& set %%G.sc=Heal
	if "%%G"=="mga" set %%G.sa=3& set %%G.sb=C& set %%G.sc=Magic Arrow
	if "%%G"=="res" set %%G.sa=4& set %%G.sb=D& set %%G.sc=Rest
	if "%%G"=="mgc" set %%G.sa=5& set %%G.sb=E& set %%G.sc=Magic Claw
	if "%%G"=="fus" set %%G.sa=6& set %%G.sb=F& set %%G.sc=Fusion
	if "%%G"=="sok" set %%G.sa=7& set %%G.sb=G& set %%G.sc=Sokatsui
	if "%%G"=="lig" set %%G.sa=8& set %%G.sb=H& set %%G.sc=Lightning
	if "%%G"=="enl" set %%G.sa=9& set %%G.sb=I& set %%G.sc=Enlightenment
	if "%%G"=="dbl" set %%G.sa=10& set %%G.sb=J& set %%G.sc=Dire Blade
	if "%%G"=="ice" set %%G.sa=11& set %%G.sb=K& set %%G.sc=Ice Spear
	if "%%G"=="fir" set %%G.sa=12& set %%G.sb=L& set %%G.sc=Firestorm
	if "%%G"=="esc" set %%G.sa=13& set %%G.sb=M& set %%G.sc=Eweca Scythe
	if "%%G"=="clr" set %%G.sa=14& set %%G.sb=N& set %%G.sc=Clairvoyance
	if "%%G"=="hly" set %%G.sa=15& set %%G.sb=O& set %%G.sc=Holy Arrow
	if "%%G"=="cer" set %%G.sa=16& set %%G.sb=P& set %%G.sc=Cero
	if "%%G"=="lsc" set %%G.sa=17& set %%G.sb=Q& set %%G.sc=Laceda Scythe
	if "%%G"=="lsp" set %%G.sa=18& set %%G.sb=R& set %%G.sc=Laceda Spear
	if "%%G"=="shm" set %%G.sa=19& set %%G.sb=S& set %%G.sc=Sharp Mind
	if "%%G"=="lac" set %%G.sa=20& set %%G.sb=T& set %%G.sc=Laceda Blade
	if "%%G"=="wow" set %%G.sa=21& set %%G.sb=U& set %%G.sc=Wings of White
	if "%%G"=="dkl" set %%G.sa=22& set %%G.sb=V& set %%G.sc=Dark Light
	if "%%G"=="wor" set %%G.sa=23& set %%G.sb=W& set %%G.sc=Wings of Rage
	if "%%G"=="wit" set %%G.sa=24& set %%G.sb=X& set %%G.sc=Wither
	if "%%G"=="arc" set %%G.sa=25& set %%G.sb=Y& set %%G.sc=Luminous Arc
	if not !p1.%%G.sr!==0 echo.                            !%%G.sb!      !%%G.sc!
)
echo.
echo.                            Assigned Skills
echo.
for /l %%G in (1,1,8) do (
	if "!p1.c%%G.a!"=="att" set %%G.sc=Attack
	if "!p1.c%%G.a!"=="hea" set %%G.sc=Heal
	if "!p1.c%%G.a!"=="mga" set %%G.sc=Magic Arrow
	if "!p1.c%%G.a!"=="res" set %%G.sc=Rest
	if "!p1.c%%G.a!"=="mgc" set %%G.sc=Magic Claw
	if "!p1.c%%G.a!"=="fus" set %%G.sc=Fusion
	if "!p1.c%%G.a!"=="sok" set %%G.sc=Sokatsui
	if "!p1.c%%G.a!"=="lig" set %%G.sc=Lightning
	if "!p1.c%%G.a!"=="enl" set %%G.sc=Enlightenment
	if "!p1.c%%G.a!"=="dbl" set %%G.sc=Dire Blade
	if "!p1.c%%G.a!"=="ice" set %%G.sc=Ice Spear
	if "!p1.c%%G.a!"=="fir" set %%G.sc=Firestorm
	if "!p1.c%%G.a!"=="esc" set %%G.sc=Eweca Scythe
	if "!p1.c%%G.a!"=="clr" set %%G.sc=Clairvoyance
	if "!p1.c%%G.a!"=="hly" set %%G.sc=Holy Arrow
	if "!p1.c%%G.a!"=="cer" set %%G.sc=Cero
	if "!p1.c%%G.a!"=="lsc" set %%G.sc=Laceda Scythe
	if "!p1.c%%G.a!"=="lsp" set %%G.sc=Laceda Spear
	if "!p1.c%%G.a!"=="shm" set %%G.sc=Sharp Mind
	if "!p1.c%%G.a!"=="lac" set %%G.sc=Laceda Blade
	if "!p1.c%%G.a!"=="wow" set %%G.sc=Wings of White
	if "!p1.c%%G.a!"=="dkl" set %%G.sc=Dark Light
	if "!p1.c%%G.a!"=="wor" set %%G.sc=Wings of Rage
	if "!p1.c%%G.a!"=="wit" set %%G.sc=Wither
	if "!p1.c%%G.a!"=="arc" set %%G.sc=Luminous Arc
	echo.                            !p1.c%%G!	^|  !%%G.sc!
)
echo.

echo.
echo.
echo.        The only usable keys right now are: A S D F Z X C V
echo.                  Press the key to assign a skill
echo.
echo. Q to go back
echo --------------------------------------------------------------------------------
choice /n /c qasdfzxcv >nul
set menu=%errorlevel%
if %menu%==1 goto:grid.p1.a
if %menu%==2 echo. Assign to A
if %menu%==3 echo. Assign to S
if %menu%==4 echo. Assign to D
if %menu%==5 echo. Assign to F
if %menu%==6 echo. Assign to Z
if %menu%==7 echo. Assign to X
if %menu%==8 echo. Assign to C
if %menu%==9 echo. Assign to V
set/a menu-=1
choice /n /c abcdefghijklmnopqrstuvwxy >nul
set skill=%errorlevel%
for %%G in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
	if %skill%==!%%G.sa! (
		if !p1.%%G.sr! gtr 0 (
			set p1.c!menu!.a=%%G
		)
	)
)
call:funct.save
goto:p1.menu.assign
:grid.p2
::Regen and Rumination kick in!
set/a p2.hp+=%p2.skl.reg.ss%
set/a p2.mp+=%p2.skl.rum.ss%
if %p1.hp% gtr %p1.hpl% set/a p1.hp=%p1.hpl%
if %p1.mp% gtr %p1.mpl% set/a p1.mp=%p1.mpl%
if %p2.hp% gtr %p2.hpl% set/a p2.hp=%p2.hpl%
if %p2.mp% gtr %p2.mpl% set/a p2.mp=%p2.mpl%
if %p2.hp% lss 1 goto p2.die
if %p1.hp% lss 1 goto p1.die
call:funct.cooldown
call:funct.buff
:grid.p2.a
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.                      %ssii.errormessage%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.              +                                              -
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
echo.   T  U  R  N:     %n2%, descendant of the %p2.ab.d%.
echo --------------------------------------------------------------------------------
echo. - %n2%
echo. 	%p2.hp%HP	^|  %p2.mp%MP
echo. + %n1%
echo. 	%p1.hp%HP	^|  %p1.mp%MP
echo. 
echo --------------------------------------------------------------------------------
choice /n /c %p1.c1%%p1.c2%%p1.c3%%p1.c4%%p1.c5%%p1.c6%%p1.c7%%p1.c8%Q >nul
set/a menu=%errorlevel%
if %menu%==9 goto p2.menu
for %%G in (att,hea,res) do (
	if %%G==!p2.c%menu%.a! goto:p2.skill.!p2.c%menu%.a!
)

for %%G in (enl,cla,shm,wit) do (
	if %%G==!p2.c%menu%.a! call:buffcal p2 !p2.c%menu%.a! & goto:grid.p1
)
call:skillcal p2 p1 !p2.c%menu%.a!
goto:grid.p1


:p2.menu
cls
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.                         %n2%, the %p2.cd%,
echo.                          descendant of the %p2.ab.d%.
echo.
echo.
echo.                            Assigned Skills
echo.                          W to assign Skills
for /l %%G in (1,1,8) do (
	if "!p2.c%%G.a!"=="att" set %%G.sc=Attack
	if "!p2.c%%G.a!"=="hea" set %%G.sc=Heal
	if "!p2.c%%G.a!"=="mga" set %%G.sc=Magic Arrow
	if "!p2.c%%G.a!"=="res" set %%G.sc=Rest
	if "!p2.c%%G.a!"=="mgc" set %%G.sc=Magic Claw
	if "!p2.c%%G.a!"=="fus" set %%G.sc=Fusion
	if "!p2.c%%G.a!"=="sok" set %%G.sc=Sokatsui
	if "!p2.c%%G.a!"=="lig" set %%G.sc=Lightning
	if "!p2.c%%G.a!"=="enl" set %%G.sc=Enlightenment
	if "!p2.c%%G.a!"=="dbl" set %%G.sc=Dire Blade
	if "!p2.c%%G.a!"=="ice" set %%G.sc=Ice Spear
	if "!p2.c%%G.a!"=="fir" set %%G.sc=Firestorm
	if "!p2.c%%G.a!"=="esc" set %%G.sc=Eweca Scythe
	if "!p2.c%%G.a!"=="clr" set %%G.sc=Clairvoyance
	if "!p2.c%%G.a!"=="hly" set %%G.sc=Holy Arrow
	if "!p2.c%%G.a!"=="cer" set %%G.sc=Cero
	if "!p2.c%%G.a!"=="lsc" set %%G.sc=Laceda Scythe
	if "!p2.c%%G.a!"=="lsp" set %%G.sc=Laceda Spear
	if "!p2.c%%G.a!"=="shm" set %%G.sc=Sharp Mind
	if "!p2.c%%G.a!"=="lac" set %%G.sc=Laceda Blade
	if "!p2.c%%G.a!"=="wow" set %%G.sc=Wings of White
	if "!p2.c%%G.a!"=="dkl" set %%G.sc=Dark Light
	if "!p2.c%%G.a!"=="wor" set %%G.sc=Wings of Rage
	if "!p2.c%%G.a!"=="wit" set %%G.sc=Wither
	if "!p2.c%%G.a!"=="arc" set %%G.sc=Luminous Arc
	echo.                            !p2.c%%G!	^|  !%%G.sc!
)
echo.
set/a mp=%p2.in%/2
set/a hp=%p2.wl%/2
set/a astc=%p2.str% * %p2.ast% / 100
set/a adxc=%p2.dex% * %p2.adx% / 100
set/a ainc=%p2.int% * %p2.ain% / 100
set/a alkc=%p2.luk% * %p2.alk% / 100
set/a awlc=%p2.wil% * %p2.awl% / 100
set/a adfc=(%p2.cdf%+%p2.dfa%) * %p2.adf% /10 + (%p2.st% / 5)
set/a adpc=(%p2.cdp%+(%p2.dx% / 2) * %p2.adp% /10)
set/a p2.adpc=%p2.dx%/2
set/a p2.crl=%p2.lk% / 40
set/a p2.cma=%p2.crm% * %p2.acm% / 30
set/a p2.cml=%p2.lk% / 30
set/a p2.cr.a=%p2.cm%/10
set/a p2.cr.b=%p2.cm% %% 10
set/a bl.1=(%p2.dx% / 20)
set/a bl.2=(%p2.wl% / 20)
set/a p2.xhp=%p2.chp%+%p2.hpa%+(%p2.wl% / 2)
set/a p2.xhp+=%p2.hp% * %p2.lhp% / 10
set/a p2.xmp=%p2.cmp%+%p2.mpa%+(%p2.in% / 2)
set/a p2.xmp+=%p2.mp% * %p2.lmp% / 10
set/a hpc=%p2.xhp% * %p2.lhp% / 10
set/a mpc=%p2.xmp% * %p2.lmp% / 10
echo.                                 Stats:
echo.
echo.                          Base   Class  (Ability)
echo.                      STR: %p2.str%	+ %p2.cstr%	+ (%astc%)		=%p2.st%
echo.                      DEX: %p2.dex%	+ %p2.cdex%	+ (%adxc%)		=%p2.dx%
echo.                      INT: %p2.int%	+ %p2.cint%	+ (%ainc%)		=%p2.in%
echo.                      LUK: %p2.luk%	+ %p2.cluk%	+ (%alkc%)		=%p2.lk%
echo.                      WIL: %p2.wil%	+ %p2.cwil%	+ (%awlc%)		=%p2.wl%
echo.                      DEF: %p2.dfa%	+ %p2.cdf%	+ (%adfc%)		=%p2.df%
echo.                      DFP: %p2.adpc%	+ %p2.cdp%	+ (%adpc%)		=%p2.dp%
echo.
echo.                      BAL: %p2.bal%	+ %bl.1%	+ %bl.2%		=%p2.bl%
echo.
echo.                           Base  Ability  Luck
echo.                      CRR: %p2.crr%	+ %p2.acr%	+ %p2.crl%	=+%p2.cr%%%	
echo.                      CRM: %p2.crm%	+ %p2.cma%	+ %p2.cml%	=%p2.cr.a%.%p2.cr.b%x
echo.
echo.                                     Class    Skills    Stats
echo.                       Health: 100 + %hpc%	+ %p2.hpa%	+ %hp%	=%p2.hp%
echo.                         Mana: 100 + %mpc%	+ %p2.mpa%	+ %mp%	=%p2.mp%
echo.
echo.
echo --------------------------------------------------------------------------------
choice /n /c qw >nul
set/a menu=%errorlevel%
if %menu%==1 goto:grid.p2.a
if %menu%==2 goto:p2.menu.assign
:p2.menu.assign
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo.                %n2%, the %p2.cd%, descendant of the %p2.ab.d%.
echo --------------------------------------------------------------------------------
echo.
echo.                             Assign Skills:
echo.
echo.                           Avaliable Skills:
echo.
for %%G in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
	if "%%G"=="att" set %%G.sa=1& set %%G.sb=A& set %%G.sc=Attack
	if "%%G"=="hea" set %%G.sa=2& set %%G.sb=B& set %%G.sc=Heal
	if "%%G"=="mga" set %%G.sa=3& set %%G.sb=C& set %%G.sc=Magic Arrow
	if "%%G"=="res" set %%G.sa=4& set %%G.sb=D& set %%G.sc=Rest
	if "%%G"=="mgc" set %%G.sa=5& set %%G.sb=E& set %%G.sc=Magic Claw
	if "%%G"=="fus" set %%G.sa=6& set %%G.sb=F& set %%G.sc=Fusion
	if "%%G"=="sok" set %%G.sa=7& set %%G.sb=G& set %%G.sc=Sokatsui
	if "%%G"=="lig" set %%G.sa=8& set %%G.sb=H& set %%G.sc=Lightning
	if "%%G"=="enl" set %%G.sa=9& set %%G.sb=I& set %%G.sc=Enlightenment
	if "%%G"=="dbl" set %%G.sa=10& set %%G.sb=J& set %%G.sc=Dire Blade
	if "%%G"=="ice" set %%G.sa=11& set %%G.sb=K& set %%G.sc=Ice Spear
	if "%%G"=="fir" set %%G.sa=12& set %%G.sb=L& set %%G.sc=Firestorm
	if "%%G"=="esc" set %%G.sa=13& set %%G.sb=M& set %%G.sc=Eweca Scythe
	if "%%G"=="clr" set %%G.sa=14& set %%G.sb=N& set %%G.sc=Clairvoyance
	if "%%G"=="hly" set %%G.sa=15& set %%G.sb=O& set %%G.sc=Holy Arrow
	if "%%G"=="cer" set %%G.sa=16& set %%G.sb=P& set %%G.sc=Cero
	if "%%G"=="lsc" set %%G.sa=17& set %%G.sb=Q& set %%G.sc=Laceda Scythe
	if "%%G"=="lsp" set %%G.sa=18& set %%G.sb=R& set %%G.sc=Laceda Spear
	if "%%G"=="shm" set %%G.sa=19& set %%G.sb=S& set %%G.sc=Sharp Mind
	if "%%G"=="lac" set %%G.sa=20& set %%G.sb=T& set %%G.sc=Laceda Blade
	if "%%G"=="wow" set %%G.sa=21& set %%G.sb=U& set %%G.sc=Wings of White
	if "%%G"=="dkl" set %%G.sa=22& set %%G.sb=V& set %%G.sc=Dark Light
	if "%%G"=="wor" set %%G.sa=23& set %%G.sb=W& set %%G.sc=Wings of Rage
	if "%%G"=="wit" set %%G.sa=24& set %%G.sb=X& set %%G.sc=Wither
	if "%%G"=="arc" set %%G.sa=25& set %%G.sb=Y& set %%G.sc=Luminous Arc
	if not !p2.%%G.sr!==0 echo.                            !%%G.sb!      !%%G.sc!
)
echo.
echo.                            Assigned Skills
echo.
for /l %%G in (1,1,8) do (
	if "!p2.c%%G.a!"=="att" set %%G.sc=Attack
	if "!p2.c%%G.a!"=="hea" set %%G.sc=Heal
	if "!p2.c%%G.a!"=="mga" set %%G.sc=Magic Arrow
	if "!p2.c%%G.a!"=="res" set %%G.sc=Rest
	if "!p2.c%%G.a!"=="mgc" set %%G.sc=Magic Claw
	if "!p2.c%%G.a!"=="fus" set %%G.sc=Fusion
	if "!p2.c%%G.a!"=="sok" set %%G.sc=Sokatsui
	if "!p2.c%%G.a!"=="lig" set %%G.sc=Lightning
	if "!p2.c%%G.a!"=="enl" set %%G.sc=Enlightenment
	if "!p2.c%%G.a!"=="dbl" set %%G.sc=Dire Blade
	if "!p2.c%%G.a!"=="ice" set %%G.sc=Ice Spear
	if "!p2.c%%G.a!"=="fir" set %%G.sc=Firestorm
	if "!p2.c%%G.a!"=="esc" set %%G.sc=Eweca Scythe
	if "!p2.c%%G.a!"=="clr" set %%G.sc=Clairvoyance
	if "!p2.c%%G.a!"=="hly" set %%G.sc=Holy Arrow
	if "!p2.c%%G.a!"=="cer" set %%G.sc=Cero
	if "!p2.c%%G.a!"=="lsc" set %%G.sc=Laceda Scythe
	if "!p2.c%%G.a!"=="lsp" set %%G.sc=Laceda Spear
	if "!p2.c%%G.a!"=="shm" set %%G.sc=Sharp Mind
	if "!p2.c%%G.a!"=="lac" set %%G.sc=Laceda Blade
	if "!p2.c%%G.a!"=="wow" set %%G.sc=Wings of White
	if "!p2.c%%G.a!"=="dkl" set %%G.sc=Dark Light
	if "!p2.c%%G.a!"=="wor" set %%G.sc=Wings of Rage
	if "!p2.c%%G.a!"=="wit" set %%G.sc=Wither
	if "!p2.c%%G.a!"=="arc" set %%G.sc=Luminous Arc
	echo.                            !p2.c%%G!	^|  !%%G.sc!
)
echo.

echo.
echo.
echo.        The only usable keys right now are: A S D F Z X C V
echo.                  Press the key to assign a skill
echo.
echo. Q to go back
echo --------------------------------------------------------------------------------
choice /n /c qasdfzxcv >nul
set menu=%errorlevel%
if %menu%==1 goto:grid.p2.a
if %menu%==2 echo. Assign to A
if %menu%==3 echo. Assign to S
if %menu%==4 echo. Assign to D
if %menu%==5 echo. Assign to F
if %menu%==6 echo. Assign to Z
if %menu%==7 echo. Assign to X
if %menu%==8 echo. Assign to C
if %menu%==9 echo. Assign to V
set/a menu-=1
choice /n /c abcdefghijklmnopqrstuvwxy >nul
set skill=%errorlevel%

for %%G in (att,hea,mga,res,mgc,fus,sok,lig,enl,dbl,ice,fir,esc,clr,hly,cer,lsc,lsp,shm,lac,wow,dkl,wor,wit,arc) do (
	if %skill%==!%%G.sa! (
		if !p2.%%G.sr! gtr 0 (
			set p2.c!menu!.a=%%G
		)
	)
)
call:funct.save
goto:p2.menu.assign

:p1.skill.att
set ssii.errormessage=
call:funct.acc %p1.att.sa% p1 p2
if %funct.return%==1 goto:p1.skill.att.m

set/a critchance=%p1.cr% + 15
if %critchance% gtr %ssii.crl% set/a critchance=%ssii.crl%
call:funct.random 1 100
set/a crit=0
if %funct.return% leq %critchance% set/a crit=1
set/a dmg=%p1.att.sm% * 5 / 10
if %dmg% gtr 40 set damage=40
if %crit%==1 set/a dmg=%dmg% * %p1.cm% / 10
call:funct.damage %dmg% %p1.att.sb% p1 p2
set/a p2.hp-=%funct.return%
call:graphics att p1 0 %funct.return% %crit%
set/a p1.td+=%funct.return%
goto:grid.p2
:p1.skill.att.m
::miss!! ha!
call:graphics att p1 1
goto:grid.p2

:p2.skill.att
set ssii.errormessage=
call:funct.acc %p2.att.sa% p2 p1
if %funct.return%==1 goto:p2.skill.att.m

set/a critchance=%p2.cr% + 15
if %critchance% gtr %ssii.crl% set/a critchance=%ssii.crl%
call:funct.random 1 100
set/a crit=0
if %funct.return% leq %critchance% set/a crit=1
set/a dmg=%p2.att.sm% * 5 / 10
if %dmg% gtr 40 set damage=40
if %crit%==1 set/a dmg=%dmg% * %p2.cm% / 10
call:funct.damage %dmg% %p2.att.sb% p2 p1
set/a p1.hp-=%funct.return%
call:graphics att p2 0 %funct.return% %crit%
set/a p2.td+=%funct.return%
goto:grid.p1
:p2.skill.att.m
::miss!! ha!
call:graphics att p2 1
goto:grid.p1

::usage: call:skillcal [attacker] [attackee] [skill]
:skillcal
if "%rng.damage%"=="1" goto:grid.%1
for /l %%G in (1,1,15) do (
	if !%1.%3.sr!==%%G set skill.sm=!skill.%%G.sm!
)
set/a critchance=!%1.cr! + !%3.cr!
if %critchance% gtr %ssii.crl% set/a critchance=%ssii.crl%
call:funct.random 1 100
set rng.damage=1
set/a crit=0
if %funct.return% leq %critchance% set/a crit=1
set/a dmg=%skill.sm% * !%3.sd! / 10
for %%G in (mga,mgc,lig,ice,fir,esc,hly,lac,wow,dkl,wor,arc) do (
	if "%%G"=="%3" set/a dmg+=!%1.in!/8
)
if %crit%==1 set/a dmg=%dmg% * !%1.cm! / 10
call:funct.damage %dmg% !%1.%3.sb! %1 %2
set/a dmg=%funct.return%

set/a skilldrain=!%3.sm! * (30-!%1.%3.sr!) / 30
set/a skilldrain+=(%dmg% / 4)
set/a skilldrain=%skilldrain% - (%skilldrain% * !%1.amp! /100)
if !%1.mp! lss %skilldrain% set ssii.errormessage=You do not have enough MP & goto:grid.%1
set rng.damage=0
set ssii.errormessage=
set/a %1.mp-=%skilldrain%
call:funct.acc !%1.%3.sa! %1 %2
if %funct.return%==1 goto:skillcal.m
set/a %2.hp-=%dmg%
call:graphics %3 %1 0 %dmg% %crit% %skilldrain%
set/a %1.td+=%funct.return%
goto:eof
:skillcal.m
::miss!! ha!
call:graphics %3 %1 1 0 0 %skilldrain%
goto:eof

:buffcal
::call:buffcal [p1/2] [skill]
set ssii.errormessage=
for /l %%G in (1,1,15) do (
	if !%1.%2.sr!==%%G set skill.sm=!skill.%%G.sm!
)
set/a skilldrain=%skill.sm% * !%2.sm! / 10
set/a skilldrain=%skilldrain% - (%skilldrain% * !%1.amp! /100)
if !%1.mp! lss %skilldrain% set ssii.errormessage=You do not have enough MP & goto:grid.%1
set/a %1.mp-=%skilldrain%
if %2==enl goto buffcal.enl
if %2==cla goto buffcal.cla
if %2==shm goto buffcal.shm
if %2==wit goto buffcal.wit
goto:eof
:buffcal.enl
::that 15 right there is a float 100 for how much enlightenment gives.
set/a enl.eff=%skill.sm% * 15 / 10
for %%G in (st,dx,in,lk,wl) do (
	set/a %1.enl.%%G=!%1.%%G! * %enl.eff% / 100
	set/a %1.%%G+=!%1.enl.%%G!
)
set/a %1.enl.ba=1
set/a %1.buff.enl=5
::graphic call for enl: [skill] [player] [mp drain] [percentage]
call:graphics enl %1 %enl.eff%
goto:eof


:p1.skill.res
set ssii.errormessage=
set/a rest=%p1.res.sm% * 20 / 10
set/a rest=%rest% + (%rest% * %p1.amp% /100) + %p2.int%/4
set/a p1.mp+=%rest%
call:graphics res p1 %rest%
goto:grid.p2

:p2.skill.res
set ssii.errormessage=
set/a rest=%p2.res.sm% * 20 / 10
set/a rest=%rest% + (%rest% * %p2.amp% /100) + %p2.int%/4
set/a p2.mp+=%rest%
call:graphics res p2 %rest%
goto:grid.p1

:p1.skill.hea
set/a skilldrain=%p1.hea.sm% * 20 / 10
set/a skilldrain=%skilldrain% - (%skilldrain% * %p1.amp% /100)
if %p1.mp% lss %skilldrain% set ssii.errormessage=You do not have enough MP & goto:grid.p1
set ssii.errormessage=
set/a p1.mp-=%skilldrain%
call:funct.random 5 8
set/a skillheal=%funct.return% * 5 * %p1.hea.sm% / 10
set/a p1.hp+=%skillheal%
call:graphics hea p1 %skilldrain% %skillheal%
goto:grid.p2

:p2.skill.hea
set/a skilldrain=%p2.hea.sm% * 20 / 10
set/a skilldrain=%skilldrain% - (%skilldrain% * %p2.amp% /100)
if %p2.mp% lss %skilldrain% set ssii.errormessage=You do not have enough MP & goto:grid.p2
set ssii.errormessage=
set/a p2.mp-=%skilldrain%
call:funct.random 5 8
set/a skillheal=%funct.return% * 5 * %p2.hea.sm% / 10
set/a p2.hp+=%skillheal%
call:graphics hea p2 %skilldrain% %skillheal%
goto:grid.p1

:p1.die
if %p1.loss% geq 1 set p1.loss=0
set/a p2.loss+=1
set preloss=1
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.             / \
echo.              +                                              -
echo.             \ /
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.             / \
echo.            /   \
echo.              +                                              -
echo.            \   /
echo.             \ /
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.             / \
echo.             / \
echo.            /   \ 
echo.              +                                              -
echo.            \   / 
echo.             \ /
echo.             \ /
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.             / \
echo.             / \
echo.            /   \
echo.            /   \
echo.         / /     \ \
echo.                                                             -
echo.         \ \     / /
echo.            \   /
echo.            \   /
echo.             \ /
echo.             \ /
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.        / /      \ \         
echo.           
echo.       /             \
echo.                                                             -
echo.       \             /
echo.            
echo.        \ \      / /
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.      
echo.                                                        %n2% wins!
echo.
echo.                                                             -
echo.
echo.            
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 1 >nul
set/a p2sc=%p2.td% / 2 + 250 + (%p2.lk%/10)
set/a p2sx=%p2.td% / 2 + 175 + (%p2.wl%/10)
set/a p1sc=%p1.td% / 2 + 175 + (%p1.lk%/10)
set/a p1sx=%p1.td% / 2 + 200 + (%p1.wl%/10)
if %p1.loss% geq 3 set/a p1.sc*=2 & set/a p1.sx*=2
set/a p2.sc+=%p2sc% + (%p1sc% /2)
set/a p2.sx+=%p2sx% + (%p1sx% /2)
set/a p1.sc+=%p1sc% + (%p2sc% /2)
set/a p1.sx+=%p1sx% + (%p2sx% /2)
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.                           %n2% +%p2sc% Soul Coins, +%p2sx% Experience
echo.                           %n1% +%p1sc% Soul Coins, +%p1sx% Experience
echo.
echo.
echo.
echo.                                                             -
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 10 >nul
call:funct.save
goto:p1.shop

:p2.die
if %p2.loss% geq 1 set p2.loss=0
set/a p1.loss+=1
set preloss=2
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                            / \
echo.              +                                              -
echo.                                                            \ /
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                            / \
echo.                                                           /   \
echo.              +                                              -
echo.                                                           \   /
echo.                                                            \ /
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                            / \
echo.                                                            / \
echo.                                                           /   \ 
echo.              +                                              -
echo.                                                           \   / 
echo.                                                            \ /
echo.                                                            \ /
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.                                                            / \
echo.                                                            / \
echo.                                                           /   \
echo.                                                           /   \
echo.                                                        / /     \ \
echo.              +                                              
echo.                                                        \ \     / /
echo.                                                           \   /
echo.                                                           \   /
echo.                                                            \ /
echo.                                                            \ /
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                       / /      \ \         
echo.           
echo.                                                      /             \
echo.              +                                             
echo.                                                      \             /
echo.            
echo.                                                       \ \      / /
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 0 >nul
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.      
echo.        %n1% wins!
echo.
echo.              +                                            
echo.
echo.            
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 2 >nul
set/a p1sc=%p1.td% / 2 + 250 + (%p1.lk%/10)
set/a p1sx=%p1.td% / 2 + 175 + (%p1.wl%/10)
set/a p2sc=%p2.td% / 2 + 175 + (%p2.lk%/10)
set/a p2sx=%p2.td% / 2 + 200 + (%p2.wl%/10)
if %p2.loss% geq 3 set/a p2.sc*=2 & set/a p2.sx*=2
set/a p2.sc+=%p2sc% + (%p1sc% /2)
set/a p2.sx+=%p2sx% + (%p1sx% /2)
set/a p1.sc+=%p1sc% + (%p2sc% /2)
set/a p1.sx+=%p1sx% + (%p2sx% /2)
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo --------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.       %n1% +%p1sc% Soul Coins, +%p1sx% Experience
echo.       %n2% +%p2sc% Soul Coins, +%p2sx% Experience
echo.
echo.
echo.
echo.              +
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
timeout 10 >nul
call:funct.save
goto:p1.shop

:shop.gr
set ssii.errormessage=
if %1==p1 set tmp=%n1%
if %1==p2 set tmp=%n2%
cls
echo --------------------------------------------------------------------------------
echo.
echo.                          S o u l s t r e a m   I I
echo.
echo.
echo.                    !tmp!, the descendant of the !%1.ab.d!
echo --------------------------------------------------------------------------------
echo.
echo.                              ---Store--- 
echo.
echo.                     Soul Coins: !%1.sc!	Experience: !%1.sx!
echo.
echo.                    S           Stats
echo.
echo.                    K           Skills
echo.
echo.                    C           Classes
echo.
echo.                    E           Emporium
echo.
echo.                    N           Next
echo.
echo --------------------------------------------------------------------------------
set/a mp=!%1.in!/2
set/a hp=!%1.wl!/2
set/a astc=!%1.str! * !%1.ast! / 100
set/a adxc=!%1.dex! * !%1.adx! / 100
set/a ainc=!%1.int! * !%1.ain! / 100
set/a alkc=!%1.luk! * !%1.alk! / 100
set/a awlc=!%1.wil! * !%1.awl! / 100
set/a adfc=(!%1.cdf!+!%1.dfa!) * !%1.adf! /10 + (!%1.st! / 5)
set/a adpc=(!%1.cdp!+(!%1.dx! / 2) * !%1.adp! /10)
set/a %1.adpc=!%1.dx!/2
set/a %1.crl=!%1.lk! / 40
set/a %1.cma=!%1.crm! * !%1.acm! / 30
set/a %1.cml=!%1.lk! / 30
set/a %1.cr.a=!%1.cm!/10
set/a %1.cr.b=!%1.cm! %% 10
set/a bl.1=(!%1.dx! / 20)
set/a bl.2=(!%1.wl! / 20)
set/a %1.hp=!%1.chp!+!%1.hpa!+(!%1.wl! / 2)
set/a %1.hp+=!%1.hp! * !%1.lhp! / 10
set/a %1.mp=!%1.cmp!+!%1.mpa!+(!%1.in! / 2)
set/a %1.mp+=!%1.mp! * !%1.lmp! / 10
set/a hpc=!%1.hp! * !%1.lhp! / 10
set/a mpc=!%1.mp! * !%1.lmp! / 10
echo.                                 Stats:
echo.
echo.                          Base   Class  (Ability)
echo.                      STR: !%1.str!	+ !%1.cstr!	+ (!astc!)		=!%1.st!
echo.                      DEX: !%1.dex!	+ !%1.cdex!	+ (!adxc!)		=!%1.dx!
echo.                      INT: !%1.int!	+ !%1.cint!	+ (!ainc!)		=!%1.in!
echo.                      LUK: !%1.luk!	+ !%1.cluk!	+ (!alkc!)		=!%1.lk!
echo.                      WIL: !%1.wil!	+ !%1.cwil!	+ (!awlc!)		=!%1.wl!
echo.                      DEF: !%1.dfa!	+ !%1.cdf!	+ (!adfc!)		=!%1.df!
echo.                      DFP: !%1.adpc!	+ !%1.cdp!	+ (!adpc!)		=!%1.dp!
echo.
echo.                      BAL: !%1.bal!	+ !bl.1!	+ !bl.2!		=!%1.bl!
echo.
echo.                           Base  Ability  Luck
echo.                      CRR: !%1.crr!	+ !%1.acr!	+ !%1.crl!	=+!%1.cr!!!	
echo.                      CRM: !%1.crm!	+ !%1.cma!	+ !%1.cml!	=!%1.cr.a!.!%1.cr.b!x
echo.
echo.                                     Ability    Skills    Stats
echo.                       Health: 100 + !hpc!	+ !%1.hpa!	+ !hp!	=!%1.hp!
echo.                         Mana: 100 + !mpc!	+ !%1.mpa!	+ !mp!	=!%1.mp!
echo.
echo.
echo --------------------------------------------------------------------------------
goto:eof

:p1.shop
call:funct.stat
call:shop.gr p1
::shop=1, shop2=2

choice /n /c skcqen >nul
set menu=%errorlevel%
if %menu%==1 goto p1.shop.stats
if %menu%==2 goto p1.shop.skills
if %menu%==3 goto p1.shop.classes
if %menu%==4 goto p1.shop
if %menu%==5 goto p1.emporium
if %menu%==6 goto p2.shop

:p2.shop
call:funct.stat
call:shop.gr p2
choice /n /c skcqen >nul
set menu=%errorlevel%
set errorlevel=
if %menu%==1 goto p2.shop.stats
if %menu%==2 goto p2.shop.skills
if %menu%==3 goto p2.shop.classes
if %menu%==4 goto p1.shop
if %menu%==5 goto p2.emporium
if %menu%==6 goto start.load
::====================================================================================================
::Emporium ahhhhhh! finally!
:emporium.gr
if %1==p1 set tmp=%n1%
if %1==p2 set tmp=%n2%
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                    %tmp%, the descendant of the !%1.ab.d!
echo --------------------------------------------------------------------------------
echo.           /\                                                                  
echo.          \\//                                                                 
echo.           \/                    
echo.           \/                                                       
echo.           ::                  T  H  E     E  M  P  O  R  I  U  M       
echo.           ::                                                                  
echo.     \     ::     /                                                            
echo.     \\ /\/::\/\ //                                                            
echo.      \\/\ II /\//                                                             
echo.      \\  \\//  //      ----------------------------------------------------  
echo.       \  /\/\  /                                                          
echo.          ^|/\^|                                                              
echo.          ^|^|^|^|                                                             
echo.          ^|\/^|              A      Armoury                                
echo.          \^|^|/                                                              
echo.           \/               P      Potion Store                         
echo.           ^|^|                                                               
echo.           ^|^|               V      Enchanting Room                         
echo.           ^|^|                                                               
echo.           ^|^|               S      Soulstream                              
echo.           ^|^|                                                               
echo.           ^|^|                                                               
echo.           ^|^|                                                               
echo.           ^|^|                                              
echo.           ^|^|               I     Inventory
echo.           ^|^|                             
echo.           ^|^|               Q     Back   
echo.           ^|^|             
echo.           ^|^|           ----------------------------------------------------
echo.           ^|^|                                                               
echo.           ^|^|               Soul Coins:  !%1.sc!                            
echo.           ^|^|                                                               
echo.           ^|^|               Experience:  !%1.sx!                                
echo.           ^|^|                                                                  
echo.           \/                                                                  
echo.           \/                                                                  
echo.           \/                                                                  
goto:eof

:inventory.gr
@echo off
if %1==p1 set tmp=%n1%
if %1==p2 set tmp=%n2%
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                 %tmp%, the descendant of the !%1.ab.d!
echo.
echo.       Soul Coins: !%1.sc!	  Experience: !%1.sx!	  Rate: !ssii.rate!%%
echo.
echo ----------------------------------- Inventory
echo.  %itemslot_1.n%
echo. --------                               Z%sinv.1%
echo.  %itemslot_1.s%
echo.
echo.  %itemslot_2.n%
echo. --------                               X%sinv.2%
echo.  %itemslot_2.s%
echo.
echo.  %itemslot_3.n%
echo. --------                               C%sinv.3%
echo.  %itemslot_3.s%
echo.
echo.  %itemslot_4.n%
echo. --------                               V%sinv.4%
echo.  %itemslot_4.s%
echo ----------------------------------- Equipment
echo.  %itemslot_5.n%
echo. --------                               A%sinv.5%
echo.  %itemslot_5.s%
echo.
echo.  %itemslot_6.n%
echo. --------                               S%sinv.6%
echo.  %itemslot_6.s%
echo.
echo.  %itemslot_7.n%
echo. --------                               D%sinv.7%
echo.  %itemslot_7.s%
echo ----------------------------------- Potions
echo.  %itemslot_8.n%
echo. --------                               F%sinv.8%
echo.  %itemslot_8.s%
echo.
echo.  %itemslot_9.n%
echo. --------                               G%sinv.9%
echo.  %itemslot_9.s%
echo ----------------------------------- 
echo.
echo. W to Move, E to Sell
echo.
goto:eof

:p1.inventory.pre
set sinv=0
for %%G in (1,1,9) do (
	set sinv.%%G=
)
call:p1.inv.updateitems
goto:p1.inventory

:p1.inv.updateitems
for /l %%G in (1,1,9) do (
	set itemcall=!p1.itemslot_%%G!
	call:funct.itemid
	set itemslot_%%G.n=!item.name!
	set itemslot_%%G.t=!item.type!
	set itemslot_%%G.s=!item.stats!
)
goto:eof

:p1.inventory
::presets for testing
call:inventory.gr p1
set ssii.errormessage=
choice /n /c zxcvasdfgqwe >nul
set menu=%errorlevel%
if %menu%==10 goto:p1.emporium
if %menu%==11 goto:p1.inv.move
if %menu%==12 goto:p1.inv.sell
set itemcall=%menu%
goto p1.inv.itemSelect 

:p1.inv.sell
set itemcall=!p1.itemslot_%sinv%!
call:funct.itemstat
set/a itemvalue=%itemvalue% * 8 / 10
call:funct.round %itemvalue% 5
set/a itemvalue=%funct.return%
echo. The !itemslot_%sinv%.n! is worth %itemvalue% Soul Coins
echo.
echo. Are you sure you'd like to sell the !itemslot_%sinv%.n!?
echo. Q:No/E:Yes
choice /n /c eq >nul
set menu=%errorlevel%
if %menu%==2 goto:p1.inventory
::sell! calling itemstats, only itemvalue is needed here.
set p1.itemslot_%sinv%=0
call:p1.inv.updateitems
set/a p1.sc+=%itemvalue%
call:funct.save
goto:p1.inventory

:p1.inv.move
::selected = sinv, currentmoveto = menu
if "!p1.itemslot_%menu%!"=="0" goto:p1.inventory
echo. Move Selected to
choice /n /c zxcvasdfgq >nul
set menu=%errorlevel%
if %menu%==10 goto:p1.inventory
set itemcall=!p1.itemslot_%menu%!
if "%sinv%"=="0" goto:p1.inventory
goto:p1.inv.switch

:p1.inv.switch
set itemcall=!p1.itemslot_%sinv%!
call:funct.itemid
if "%item.type%"=="Equipment" (
	if %menu%==8 goto:p1.inventory
	if %menu%==9 goto:p1.inventory
)
if "%item.type%"=="Potion" (
	if %menu%==5 goto:p1.inventory
	if %menu%==6 goto:p1.inventory
	if %menu%==7 goto:p1.inventory
)
set itemcall=!p1.itemslot_%menu%!
call:funct.itemid
if "%item.type%"=="Equipment" (
	if %sinv%==8 goto:p1.inventory
	if %sinv%==9 goto:p1.inventory
)
if "%item.type%"=="Potion" (
	if %sinv%==5 goto:p1.inventory
	if %sinv%==6 goto:p1.inventory
	if %sinv%==7 goto:p1.inventory
)
::selected = sinv, currentmoveto = menu
::move current to temp, move sinv over and then replace sinv with temp.
set p1.itemslot_tmp=!p1.itemslot_%menu%!
set p1.itemslot_%menu%=!p1.itemslot_%sinv%!
set p1.itemslot_%sinv%=!p1.itemslot_tmp!
set p1.itemslot_tmp=
call:p1.inv.updateitems
set itemcall=%menu%
goto:p1.inv.itemSelect

:p1.inv.itemSelect
for /l %%G in (1,1,9) do (
	set sinv.%%G=
)
set sinv.%itemcall%=(
set sinv=%itemcall%
goto:p1.inventory

::=====================================

:p2.inventory.pre
set sinv=0
for %%G in (1,1,9) do (
	set sinv.%%G=
)
call:p2.inv.updateitems
goto:p2.inventory

:p2.p2.inv.updateitems
for /l %%G in (1,1,9) do (
	set itemcall=!p2.itemslot_%%G!
	call:funct.itemid
	set itemslot_%%G.n=!item.name!
	set itemslot_%%G.t=!item.type!
	set itemslot_%%G.s=!item.stats!
)
goto:eof

:p2.inventory
::presets for testing
call:inventory.gr p2
set ssii.errormessage=
choice /n /c zxcvasdfgqwe >nul
set menu=%errorlevel%
if %menu%==10 goto:p2.emporium
if %menu%==11 goto:p2.inv.move
if %menu%==12 goto:p2.inv.sell
set itemcall=%menu%
goto p2.inv.itemSelect 

:p2.inv.sell
set itemcall=!p2.itemslot_%sinv%!
call:funct.itemstat
set/a itemvalue=%itemvalue% * 8 / 10
echo. The !itemslot_%sinv%.n! is worth %itemvalue% Soul Coins
echo.
echo. Are you sure you'd like to sell the !itemslot_%sinv%.n!?
echo. Q:No/E:Yes
choice /n /c eq >nul
set menu=%errorlevel%
if %menu%==2 goto:p2.inventory
::sell! calling itemstats, only itemvalue is needed here.
set p2.itemslot_%sinv%=0
call:p2.inv.updateitems
set/a p2.sc+=%itemvalue%
call:funct.save
goto:p2.inventory

:p2.inv.move
::selected = sinv, currentmoveto = menu
if "!p2.itemslot_%menu%!"=="0" goto:p2.inventory
echo. Move Selected to
choice /n /c zxcvasdfgq >nul
set menu=%errorlevel%
if %menu%==10 goto:p2.inventory
set itemcall=!p2.itemslot_%menu%!
if "%sinv%"=="0" goto:p2.inventory
goto:p2.inv.switch

:p2.inv.switch
set itemcall=!p2.itemslot_%sinv%!
call:funct.itemid
if "%item.type%"=="Equipment" (
	if %menu%==8 goto:p2.inventory
	if %menu%==9 goto:p2.inventory
)
if "%item.type%"=="Potion" (
	if %menu%==5 goto:p2.inventory
	if %menu%==6 goto:p2.inventory
	if %menu%==7 goto:p2.inventory
)
set itemcall=!p2.itemslot_%menu%!
call:funct.itemid
if "%item.type%"=="Equipment" (
	if %sinv%==8 goto:p2.inventory
	if %sinv%==9 goto:p2.inventory
)
if "%item.type%"=="Potion" (
	if %sinv%==5 goto:p2.inventory
	if %sinv%==6 goto:p2.inventory
	if %sinv%==7 goto:p2.inventory
)
::selected = sinv, currentmoveto = menu
::move current to temp, move sinv over and then replace sinv with temp.
set p2.itemslot_tmp=!p2.itemslot_%menu%!
set p2.itemslot_%menu%=!p2.itemslot_%sinv%!
set p2.itemslot_%sinv%=!p2.itemslot_tmp!
set p2.itemslot_tmp=
call:p2.inv.updateitems
set itemcall=%menu%
goto:p2.inv.itemSelect

:p2.inv.itemSelect
for /l %%G in (1,1,9) do (
	set sinv.%%G=
)
set sinv.%itemcall%=(
set sinv=%itemcall%
goto:p2.inventory


:emporium.a.gr
if %1==p1 set tmp=%n1%
if %1==p2 set tmp=%n2%
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                    %tmp%, the descendant of the !%1.ab.d!
echo --------------------------------------------------------------------------------
echo.
echo.                             A  R  M  O  U  R  Y
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo --------------------------------------------------------------------------------
goto:eof

:p1.emporium
call:emporium.gr p1
choice /n /c apvsiq >nul
set menu=%errorlevel%
set errorlevel=
if %errorlevel%==1 goto p1.emporium.a
if %errorlevel%==2 goto p1.emporium.p
if %errorlevel%==3 goto p1.emporium.e
if %errorlevel%==4 goto p1.emporium.s
if %errorlevel%==5 goto p1.inventory.pre
if %errorlevel%==6 goto p1.shop

:p1.emporium.a

::====================================================================================================
::p1's stat shop
:p1.shop.stats
::init for prices
for %%G in (cbt,mgc,fcs,krm,res,int,syn,spd,exp,reg,rum,hp,mp,df) do (
	set/a p1.skl.%%G.sc=10 + !skl.%%G.sv! * !p1.skl.%%G.sl! + !p1.skl.%%G.ss! / 2
)
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                    %n1%, the descendant of the %p1.ab.d%
echo --------------------------------------------------------------------------------
echo.
echo.                           -------Masteries-------
echo.
echo.                     Soul Coins: %p1.sc%	Experience: %p1.sx%
echo.
echo.                     %ssii.errormessage%
echo.
echo.                                    Skill Cost     Current Stats
echo.
echo.   C          Combat Mastery Rank %p1.skl.cbt.sl% :	%p1.skl.cbt.sc% SC/XP	+%p1.skl.cbt.ss% 
echo.
echo.   A           Magic Mastery Rank %p1.skl.mgc.sl% :	%p1.skl.mgc.sc% SC/XP	+%p1.skl.mgc.ss% 
echo.
echo.   F           Focus Mastery Rank %p1.skl.fcs.sl% :	%p1.skl.fcs.sc% SC/XP	+%p1.skl.fcs.ss% 
echo.
echo.   S           Speed Mastery Rank %p1.skl.spd.sl% :	%p1.skl.spd.sc% SC/XP	+%p1.skl.spd.ss% 
echo.
echo.   K           Karma Mastery Rank %p1.skl.krm.sl% :	%p1.skl.krm.sc% SC/XP	+%p1.skl.krm.ss% 
echo.
echo.   R      Resistence Mastery Rank %p1.skl.res.sl% :	%p1.skl.res.sc% SC/XP	+%p1.skl.res.ss% 
echo.
echo.   I       Intuition Mastery Rank %p1.skl.int.sl% :	%p1.skl.int.sc% SC/XP	+%p1.skl.int.ss% 
echo.
echo.   Y       Synthesis Mastery Rank %p1.skl.syn.sl% :	%p1.skl.syn.sc% SC/XP	+%p1.skl.syn.ss% 
echo.
echo.   E      Experience Mastery Rank %p1.skl.exp.sl% :	%p1.skl.exp.sc% SC/XP	+%p1.skl.exp.ss% 
echo.
echo.   G    Regeneration Mastery Rank %p1.skl.reg.sl% :	%p1.skl.reg.sc% SC/XP	+%p1.skl.reg.ss% 
echo.
echo.   T      Rumination Mastery Rank %p1.skl.rum.sl% :	%p1.skl.rum.sc% SC/XP	+%p1.skl.rum.ss% 
echo.
echo.
echo.
echo.   H          Health Mastery Rank %p1.skl.hp.sl%  :	%p1.skl.hp.sc% SC/XP	+%p1.skl.hp.ss% 
echo.
echo.   M            Mana Mastery Rank %p1.skl.mp.sl%  :	%p1.skl.mp.sc% SC/XP	+%p1.skl.mp.ss% 
echo.
echo.   D         Defence Mastery Rank %p1.skl.df.sl%  :	%p1.skl.df.sc% SC/XP	+%p1.skl.df.ss% 
echo.
echo --------------------------------------------------------------------------------
choice /n /c qcafskriyegthmd >nul
set menu=%errorlevel%
set errorlevel=
if %menu%==1 goto:p1.shop
if %menu%==2 goto:p1.cbt
if %menu%==3 goto:p1.mgc
if %menu%==4 goto:p1.fcs
if %menu%==5 goto:p1.spd
if %menu%==6 goto:p1.krm
if %menu%==7 goto:p1.res
if %menu%==8 goto:p1.int
if %menu%==9 goto:p1.syn
if %menu%==10 goto:p1.exp
if %menu%==11 goto:p1.reg
if %menu%==12 goto:p1.rum
if %menu%==13 goto:p1.shp
if %menu%==14 goto:p1.smp
if %menu%==15 goto:p1.sdf

:p1.cbt
if %p1.sc% lss %p1.skl.cbt.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.cbt.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.cbt.sc%
set/a p1.sx-=%p1.skl.cbt.sc%
set ssii.errormessage=
set/a p1.skl.cbt.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.str+=%p1.skl.cbt.sl% * 20 / 10
set/a p1.dex+=%p1.skl.cbt.sl% * 20 / 10
set/a p1.skl.cbt.ss+=%p1.skl.cbt.sl% * 20 / 10
goto:p1.shop.stats

:p1.mgc
if %p1.sc% lss %p1.skl.mgc.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.mgc.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.mgc.sc%
set/a p1.sx-=%p1.skl.mgc.sc%
set ssii.errormessage=
set/a p1.skl.mgc.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.int+=%p1.skl.mgc.sl% * 20 / 10
set/a p1.wil+=%p1.skl.mgc.sl% * 20 / 10
set/a p1.skl.mgc.ss+=%p1.skl.mgc.sl% * 20 / 10
goto:p1.shop.stats

:p1.fcs
if %p1.sc% lss %p1.skl.fcs.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.fcs.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.fcs.sc%
set/a p1.sx-=%p1.skl.fcs.sc%
set ssii.errormessage=
set/a p1.skl.fcs.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.dex+=%p1.skl.fcs.sl% * 20 / 10
set/a p1.wil+=%p1.skl.fcs.sl% * 20 / 10
set/a p1.skl.fcs.ss+=%p1.skl.fcs.sl% * 20 / 10
goto:p1.shop.stats

:p1.spd
if %p1.sc% lss %p1.skl.spd.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.spd.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.spd.sc%
set/a p1.sx-=%p1.skl.spd.sc%
set ssii.errormessage=
set/a p1.skl.spd.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.dex+=%p1.skl.spd.sl% * 20 / 10
set/a p1.int+=%p1.skl.spd.sl% * 20 / 10
set/a p1.skl.spd.ss+=%p1.skl.spd.sl% * 20 / 10
goto:p1.shop.stats

:p1.krm
if %p1.sc% lss %p1.skl.krm.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.krm.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.krm.sc%
set/a p1.sx-=%p1.skl.krm.sc%
set ssii.errormessage=
set/a p1.skl.krm.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.luk+=%p1.skl.krm.sl% * 20 / 10
set/a p1.int+=%p1.skl.krm.sl% * 20 / 10
set/a p1.skl.krm.ss+=%p1.skl.krm.sl% * 20 / 10
goto:p1.shop.stats

:p1.res
if %p1.sc% lss %p1.skl.res.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.res.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.res.sc%
set/a p1.sx-=%p1.skl.res.sc%
set ssii.errormessage=
set/a p1.skl.res.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.wil+=%p1.skl.res.sl% * 20 / 10
set/a p1.str+=%p1.skl.res.sl% * 20 / 10
set/a p1.skl.res.ss+=%p1.skl.res.sl% * 20 / 10
goto:p1.shop.stats

:p1.int
if %p1.sc% lss %p1.skl.int.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.int.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.int.sc%
set/a p1.sx-=%p1.skl.int.sc%
set ssii.errormessage=
set/a p1.skl.int.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.wil+=%p1.skl.int.sl% * 20 / 10
set/a p1.luk+=%p1.skl.int.sl% * 20 / 10
set/a p1.skl.int.ss+=%p1.skl.int.sl% * 20 / 10
goto:p1.shop.stats

:p1.syn
if %p1.sc% lss %p1.skl.syn.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.syn.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.syn.sc%
set/a p1.sx-=%p1.skl.syn.sc%
set ssii.errormessage=
set/a p1.skl.syn.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.int+=%p1.skl.syn.sl% * 20 / 10
set/a p1.str+=%p1.skl.syn.sl% * 20 / 10
set/a p1.skl.syn.ss+=%p1.skl.syn.sl% * 20 / 10
goto:p1.shop.stats

:p1.exp
if %p1.sc% lss %p1.skl.exp.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.exp.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.exp.sc%
set/a p1.sx-=%p1.skl.exp.sc%
set ssii.errormessage=
set/a p1.skl.exp.sl+=1
::Change the 20 to affect how much each rank gives
set/a p1.luk+=%p1.skl.exp.sl% * 20 / 10
set/a p1.str+=%p1.skl.exp.sl% * 20 / 10
set/a p1.skl.exp.ss+=%p1.skl.exp.sl% * 20 / 10
goto:p1.shop.stats

:p1.reg
if %p1.sc% lss %p1.skl.reg.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.reg.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.reg.sc%
set/a p1.sx-=%p1.skl.reg.sc%
set ssii.errormessage=
set/a p1.skl.reg.sl+=1
::Change the 5 to affect how much each rank gives
set/a p1.skl.reg.ss+=%p1.skl.reg.sl% * 20 / 10
goto:p1.shop.stats

:p1.rum
if %p1.sc% lss %p1.skl.rum.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.rum.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.rum.sc%
set/a p1.sx-=%p1.skl.rum.sc%
set ssii.errormessage=
set/a p1.skl.rum.sl+=1
::Change the 5 to affect how much each rank gives
set/a p1.skl.rum.ss+=%p1.skl.rum.sl% * 20 / 10
goto:p1.shop.stats

:p1.shp
if %p1.sc% lss %p1.skl.hp.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.hp.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.hp.sc%
set/a p1.sx-=%p1.skl.hp.sc%
set ssii.errormessage=
set/a p1.skl.hp.sl+=1
::Change the 30 to affect how much each rank gives
set/a p1.hpa+=%p1.skl.hp.sl% * 30 / 10
set/a p1.skl.hp.ss=%p1.hpa%
goto:p1.shop.stats

:p1.smp
if %p1.sc% lss %p1.skl.mp.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.mp.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.mp.sc%
set/a p1.sx-=%p1.skl.mp.sc%
set ssii.errormessage=
set/a p1.skl.mp.sl+=1
::Change the 30 to affect how much each rank gives
set/a p1.mpa+=%p1.skl.mp.sl% * 30 / 10
set/a p1.skl.mp.ss=%p1.mpa%
goto:p1.shop.stats

:p1.sdf
if %p1.sc% lss %p1.skl.df.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.stats 
if %p1.sx% lss %p1.skl.df.sc% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.stats 
set/a p1.sc-=%p1.skl.df.sc%
set/a p1.sx-=%p1.skl.df.sc%
set ssii.errormessage=
set/a p1.skl.df.sl+=1
::Change the 30 to affect how much each rank gives
set/a p1.dfa+=%p1.skl.df.sl% * 30 / 10
set/a p1.skl.df.ss=%p1.dfa%
goto:p1.shop.stats

::====================================================================================================
::player 2's stat shop
:p2.shop.stats
::init for prices
for %%G in (cbt,mgc,fcs,krm,res,int,syn,spd,exp,reg,rum,hp,mp,df) do (
	set/a p2.skl.%%G.sc=10 + !skl.%%G.sv! * !p2.skl.%%G.sl! + !p2.skl.%%G.ss! / 2
)
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                    %n2%, the descendant of the %p2.ab.d%
echo --------------------------------------------------------------------------------
echo.
echo.                           -------Masteries-------
echo.
echo.                     Soul Coins: %p2.sc%	Experience: %p2.sx%
echo.
echo.                     %ssii.errormessage%
echo.
echo.                                    Skill Cost     Current Stats
echo.
echo.   C          Combat Mastery Rank %p2.skl.cbt.sl% :	%p2.skl.cbt.sc% SC/XP	+%p2.skl.cbt.ss% 
echo.
echo.   A           Magic Mastery Rank %p2.skl.mgc.sl% :	%p2.skl.mgc.sc% SC/XP	+%p2.skl.mgc.ss% 
echo.
echo.   F           Focus Mastery Rank %p2.skl.fcs.sl% :	%p2.skl.fcs.sc% SC/XP	+%p2.skl.fcs.ss% 
echo.
echo.   S           Speed Mastery Rank %p2.skl.spd.sl% :	%p2.skl.spd.sc% SC/XP	+%p2.skl.spd.ss% 
echo.
echo.   K           Karma Mastery Rank %p2.skl.krm.sl% :	%p2.skl.krm.sc% SC/XP	+%p2.skl.krm.ss% 
echo.
echo.   R      Resistence Mastery Rank %p2.skl.res.sl% :	%p2.skl.res.sc% SC/XP	+%p2.skl.res.ss% 
echo.
echo.   I       Intuition Mastery Rank %p2.skl.int.sl% :	%p2.skl.int.sc% SC/XP	+%p2.skl.int.ss% 
echo.
echo.   Y       Synthesis Mastery Rank %p2.skl.syn.sl% :	%p2.skl.syn.sc% SC/XP	+%p2.skl.syn.ss% 
echo.
echo.   E      Experience Mastery Rank %p2.skl.exp.sl% :	%p2.skl.exp.sc% SC/XP	+%p2.skl.exp.ss% 
echo.
echo.   G    Regeneration Mastery Rank %p2.skl.reg.sl% :	%p2.skl.reg.sc% SC/XP	+%p2.skl.reg.ss% 
echo.
echo.   T      Rumination Mastery Rank %p2.skl.rum.sl% :	%p2.skl.rum.sc% SC/XP	+%p2.skl.rum.ss% 
echo.
echo.
echo.
echo.   H          Health Mastery Rank %p2.skl.hp.sl%  :	%p2.skl.hp.sc% SC/XP	+%p2.skl.hp.ss% 
echo.
echo.   M            Mana Mastery Rank %p2.skl.mp.sl%  :	%p2.skl.mp.sc% SC/XP	+%p2.skl.mp.ss% 
echo.
echo.   D         Defence Mastery Rank %p2.skl.df.sl%  :	%p2.skl.df.sc% SC/XP	+%p2.skl.df.ss% 
echo.
echo --------------------------------------------------------------------------------
choice /n /c qcafskriyegthmd >nul
set menu=%errorlevel%
set errorlevel=
if %menu%==1 goto:p2.shop
if %menu%==2 goto:p2.cbt
if %menu%==3 goto:p2.mgc
if %menu%==4 goto:p2.fcs
if %menu%==5 goto:p2.spd
if %menu%==6 goto:p2.krm
if %menu%==7 goto:p2.res
if %menu%==8 goto:p2.int
if %menu%==9 goto:p2.syn
if %menu%==10 goto:p2.exp
if %menu%==11 goto:p2.reg
if %menu%==12 goto:p2.rum
if %menu%==13 goto:p2.shp
if %menu%==14 goto:p2.smp
if %menu%==15 goto:p2.sdf

:p2.cbt
if %p2.sc% lss %p2.skl.cbt.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.cbt.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.cbt.sc%
set/a p2.sx-=%p2.skl.cbt.sc%
set ssii.errormessage=
set/a p2.skl.cbt.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.str+=%p2.skl.cbt.sl% * 20 / 10
set/a p2.dex+=%p2.skl.cbt.sl% * 20 / 10
set/a p2.skl.cbt.ss+=%p2.skl.cbt.sl% * 20 / 10
goto:p2.shop.stats

:p2.mgc
if %p2.sc% lss %p2.skl.mgc.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.mgc.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.mgc.sc%
set/a p2.sx-=%p2.skl.mgc.sc%
set ssii.errormessage=
set/a p2.skl.mgc.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.int+=%p2.skl.mgc.sl% * 20 / 10
set/a p2.wil+=%p2.skl.mgc.sl% * 20 / 10
set/a p2.skl.mgc.ss+=%p2.skl.mgc.sl% * 20 / 10
goto:p2.shop.stats

:p2.fcs
if %p2.sc% lss %p2.skl.fcs.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.fcs.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.fcs.sc%
set/a p2.sx-=%p2.skl.fcs.sc%
set ssii.errormessage=
set/a p2.skl.fcs.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.dex+=%p2.skl.fcs.sl% * 20 / 10
set/a p2.wil+=%p2.skl.fcs.sl% * 20 / 10
set/a p2.skl.fcs.ss+=%p2.skl.fcs.sl% * 20 / 10
goto:p2.shop.stats

:p2.spd
if %p2.sc% lss %p2.skl.spd.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.spd.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.spd.sc%
set/a p2.sx-=%p2.skl.spd.sc%
set ssii.errormessage=
set/a p2.skl.spd.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.dex+=%p2.skl.spd.sl% * 20 / 10
set/a p2.int+=%p2.skl.spd.sl% * 20 / 10
set/a p2.skl.spd.ss+=%p2.skl.spd.sl% * 20 / 10
goto:p2.shop.stats

:p2.krm
if %p2.sc% lss %p2.skl.krm.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.krm.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.krm.sc%
set/a p2.sx-=%p2.skl.krm.sc%
set ssii.errormessage=
set/a p2.skl.krm.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.luk+=%p2.skl.krm.sl% * 20 / 10
set/a p2.int+=%p2.skl.krm.sl% * 20 / 10
set/a p2.skl.krm.ss+=%p2.skl.krm.sl% * 20 / 10
goto:p2.shop.stats

:p2.res
if %p2.sc% lss %p2.skl.res.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.res.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.res.sc%
set/a p2.sx-=%p2.skl.res.sc%
set ssii.errormessage=
set/a p2.skl.res.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.wil+=%p2.skl.res.sl% * 20 / 10
set/a p2.str+=%p2.skl.res.sl% * 20 / 10
set/a p2.skl.res.ss+=%p2.skl.res.sl% * 20 / 10
goto:p2.shop.stats

:p2.int
if %p2.sc% lss %p2.skl.int.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.int.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.int.sc%
set/a p2.sx-=%p2.skl.int.sc%
set ssii.errormessage=
set/a p2.skl.int.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.wil+=%p2.skl.int.sl% * 20 / 10
set/a p2.luk+=%p2.skl.int.sl% * 20 / 10
set/a p2.skl.int.ss+=%p2.skl.int.sl% * 20 / 10
goto:p2.shop.stats

:p2.syn
if %p2.sc% lss %p2.skl.syn.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.syn.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.syn.sc%
set/a p2.sx-=%p2.skl.syn.sc%
set ssii.errormessage=
set/a p2.skl.syn.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.int+=%p2.skl.syn.sl% * 20 / 10
set/a p2.str+=%p2.skl.syn.sl% * 20 / 10
set/a p2.skl.syn.ss+=%p2.skl.syn.sl% * 20 / 10
goto:p2.shop.stats

:p2.exp
if %p2.sc% lss %p2.skl.exp.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.exp.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.exp.sc%
set/a p2.sx-=%p2.skl.exp.sc%
set ssii.errormessage=
set/a p2.skl.exp.sl+=1
::Change the 20 to affect how much each rank gives
set/a p2.luk+=%p2.skl.exp.sl% * 20 / 10
set/a p2.str+=%p2.skl.exp.sl% * 20 / 10
set/a p2.skl.exp.ss+=%p2.skl.exp.sl% * 20 / 10
goto:p2.shop.stats

:p2.reg
if %p2.sc% lss %p2.skl.reg.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.reg.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.reg.sc%
set/a p2.sx-=%p2.skl.reg.sc%
set ssii.errormessage=
set/a p2.skl.reg.sl+=1
::Change the 5 to affect how much each rank gives
set/a p2.skl.reg.ss+=%p2.skl.reg.sl% * 20 / 10
goto:p2.shop.stats

:p2.rum
if %p2.sc% lss %p2.skl.rum.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.rum.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.rum.sc%
set/a p2.sx-=%p2.skl.rum.sc%
set ssii.errormessage=
set/a p2.skl.rum.sl+=1
::Change the 5 to affect how much each rank gives
set/a p2.skl.rum.ss+=%p2.skl.rum.sl% * 20 / 10
goto:p2.shop.stats

:p2.shp
if %p2.sc% lss %p2.skl.hp.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.hp.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.hp.sc%
set/a p2.sx-=%p2.skl.hp.sc%
set ssii.errormessage=
set/a p2.skl.hp.sl+=1
::Change the 30 to affect how much each rank gives
set/a p2.hpa+=%p2.skl.hp.sl% * 30 / 10
set/a p2.skl.hp.ss=%p2.hpa%
goto:p2.shop.stats

:p2.smp
if %p2.sc% lss %p2.skl.mp.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.mp.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.mp.sc%
set/a p2.sx-=%p2.skl.mp.sc%
set ssii.errormessage=
set/a p2.skl.mp.sl+=1
::Change the 30 to affect how much each rank gives
set/a p2.mpa+=%p2.skl.mp.sl% * 30 / 10
set/a p2.skl.mp.ss=%p2.mpa%
goto:p2.shop.stats

:p2.sdf
if %p2.sc% lss %p2.skl.df.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.stats 
if %p2.sx% lss %p2.skl.df.sc% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.stats 
set/a p2.sc-=%p2.skl.df.sc%
set/a p2.sx-=%p2.skl.df.sc%
set ssii.errormessage=
set/a p2.skl.df.sl+=1
::Change the 30 to affect how much each rank gives
set/a p2.dfa+=%p2.skl.df.sl% * 30 / 10
set/a p2.skl.df.ss=%p2.dfa%
goto:p2.shop.stats

::========================================================================================================
::skill shop!
:p1.shop.skills
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                    %n1%, the descendant of the %p1.ab.d%
echo --------------------------------------------------------------------------------
echo.
echo.                         -------- Skills --------
echo.
echo.                     Soul Coins: %p1.sc%	Experience: %p1.sx%
echo.
echo.                     %ssii.errormessage%
echo.
echo.                                     Soul Coins : Experience
echo.
echo.        A          Attack Rank   %p1.att.sd%   :	%p1.att.sc%	:	%p1.att.sx%
echo.
echo.        H            Heal Rank   %p1.hea.sd%   :	%p1.hea.sc%	:	%p1.hea.sx%
echo.
echo.        R            Rest Rank   %p1.res.sd%   :	%p1.res.sc%	:	%p1.res.sx%
echo.
echo.        F          Fusion Rank   %p1.fus.sd%   :	%p1.fus.sc%	:	%p1.fus.sx%
echo.
echo --------------------------------------------------------------------------------
echo.
echo.        C      Magic Claw Rank   %p1.mgc.sd%   :	%p1.mgc.sc%	:	%p1.mgc.sx%
echo.
echo.        W     Magic Arrow Rank   %p1.mga.sd%   :	%p1.mga.sc%	:	%p1.mga.sx%
echo.
echo.        S        Sokatsui Rank   %p1.sok.sd%   :	%p1.sok.sc%	:	%p1.sok.sx%
echo.
echo.        L       Lightning Rank   %p1.lig.sd%   :	%p1.lig.sc%	:	%p1.lig.sx%
echo.
echo.        E   Enlightenment Rank   %p1.enl.sd%   :	%p1.enl.sc%	:	%p1.enl.sx%
echo.
echo.        D      Dire Blade Rank   %p1.dbl.sd%   :	%p1.dbl.sc%	:	%p1.dbl.sx%
echo.
echo.
echo --------------------------------------------------------------------------------
choice /n /c qahrfcwsled >nul
set menu=%errorlevel%
set errorlevel=
if %menu%==1 goto:p1.shop
if %menu%==2 goto:p1.att.a
if %menu%==3 goto:p1.hea.a
if %menu%==4 goto:p1.res.a
if %menu%==5 goto:p1.fus.a
if %menu%==6 goto:p1.mgc.a
if %menu%==7 goto:p1.mga.a
if %menu%==8 goto:p1.sok.a
if %menu%==9 goto:p1.lig.a
if %menu%==10 goto:p1.enl.a
if %menu%==11 goto:p1.dbl.a

:p1.att.a
if %p1.att.sr%==15 set ssii.errormessage=Attack has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.att.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.att.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.att.sc%
set/a p1.sx-=%p1.att.sx%
set/a p1.att.sr+=1
call:funct.skill
set ssii.errormessage=Attack increased to Rank %p1.att.sd%
goto:p1.shop.skills

:p1.hea.a
if %p1.hea.sr%==15 set ssii.errormessage=Heal has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.hea.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.hea.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.hea.sc%
set/a p1.sx-=%p1.hea.sx%
set/a p1.hea.sr+=1
call:funct.skill
set ssii.errormessage=Heal increased to Rank %p1.hea.sd%
goto:p1.shop.skills

:p1.res.a
if %p1.res.sr%==15 set ssii.errormessage=Rest has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.res.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.res.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.res.sc%
set/a p1.sx-=%p1.res.sx%
set/a p1.res.sr+=1
call:funct.skill
set ssii.errormessage=Rest increased to Rank %p1.res.sd%
goto:p1.shop.skills

:p1.fus.a
if %p1.fus.sr%==15 set ssii.errormessage=Fusion has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.fus.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.fus.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.fus.sc%
set/a p1.sx-=%p1.fus.sx%
set/a p1.fus.sr+=1
call:funct.skill
set ssii.errormessage=Fusion increased to Rank %p1.fus.sd%
goto:p1.shop.skills

:p1.mgc.a
if %p1.mgc.sr%==15 set ssii.errormessage=Magic Claw has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.mgc.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.mgc.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.mgc.sc%
set/a p1.sx-=%p1.mgc.sx%
set/a p1.mgc.sr+=1
call:funct.skill
set ssii.errormessage=Magic Claw increased to Rank %p1.mgc.sd%
goto:p1.shop.skills

:p1.mga.a
if %p1.mga.sr%==15 set ssii.errormessage=Magic Arrow has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.mga.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.mga.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.mga.sc%
set/a p1.sx-=%p1.mga.sx%
set/a p1.mga.sr+=1
call:funct.skill
set ssii.errormessage=Magic Arrow increased to Rank %p1.mga.sd%
goto:p1.shop.skills

:p1.sok.a
if %p1.sok.sr%==15 set ssii.errormessage=Sokatsui has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.sok.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.sok.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.sok.sc%
set/a p1.sx-=%p1.sok.sx%
set/a p1.sok.sr+=1
call:funct.skill
set ssii.errormessage=Sokatsui increased to Rank %p1.sok.sd%
goto:p1.shop.skills

:p1.lig.a
if %p1.lig.sr%==15 set ssii.errormessage=Lightning has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.lig.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.lig.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.lig.sc%
set/a p1.sx-=%p1.lig.sx%
set/a p1.lig.sr+=1
call:funct.skill
set ssii.errormessage=Lightning increased to Rank %p1.lig.sd%
goto:p1.shop.skills

:p1.enl.a
if %p1.enl.sr%==15 set ssii.errormessage=Enlightenment has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.enl.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.enl.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.enl.sc%
set/a p1.sx-=%p1.enl.sx%
set/a p1.enl.sr+=1
call:funct.skill
set ssii.errormessage=Enlightenment increased to Rank %p1.enl.sd%
goto:p1.shop.skills

:p1.dbl.a
if %p1.dbl.sr%==15 set ssii.errormessage=Dire Blade has already been maxed. & goto:p1.shop.skills
if %p1.sc% lss %p1.dbl.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p1.shop.skills
if %p1.sx% lss %p1.dbl.sx% set ssii.errormessage=You do not have enough Experience & goto:p1.shop.skills 
set/a p1.sc-=%p1.dbl.sc%
set/a p1.sx-=%p1.dbl.sx%
set/a p1.dbl.sr+=1
call:funct.skill
set ssii.errormessage=Dire Blade increased to Rank %p1.dbl.sd%
goto:p1.shop.skills
::========================================================================================================
::p2's skill shop!! yay!!!
:p2.shop.skills
cls
echo --------------------------------------------------------------------------------
echo.                          S o u l s t r e a m   I I
echo --------------------------------------------------------------------------------
echo.                    %n2%, the descendant of the %p2.ab.d%
echo --------------------------------------------------------------------------------
echo.
echo.                         -------- Skills --------
echo.
echo.                     Soul Coins: %p2.sc%	Experience: %p2.sx%
echo.
echo.                     %ssii.errormessage%
echo.
echo.                                     Soul Coins : Experience
echo.
echo.        A          Attack Rank   %p2.att.sd%   :	%p2.att.sc%	:	%p2.att.sx%
echo.
echo.        H            Heal Rank   %p2.hea.sd%   :	%p2.hea.sc%	:	%p2.hea.sx%
echo.
echo.        R            Rest Rank   %p2.res.sd%   :	%p2.res.sc%	:	%p2.res.sx%
echo.
echo.        F          Fusion Rank   %p2.fus.sd%   :	%p2.fus.sc%	:	%p2.fus.sx%
echo.
echo --------------------------------------------------------------------------------
echo.
echo.        C      Magic Claw Rank   %p2.mgc.sd%   :	%p2.mgc.sc%	:	%p2.mgc.sx%
echo.
echo.        W     Magic Arrow Rank   %p2.mga.sd%   :	%p2.mga.sc%	:	%p2.mga.sx%
echo.
echo.        S        Sokatsui Rank   %p2.sok.sd%   :	%p2.sok.sc%	:	%p2.sok.sx%
echo.
echo.        L       Lightning Rank   %p2.lig.sd%   :	%p2.lig.sc%	:	%p2.lig.sx%
echo.
echo.        E   Enlightenment Rank   %p2.enl.sd%   :	%p2.enl.sc%	:	%p2.enl.sx%
echo.
echo.        D      Dire Blade Rank   %p2.dbl.sd%   :	%p2.dbl.sc%	:	%p2.dbl.sx%
echo.
echo.
echo --------------------------------------------------------------------------------
choice /n /c qahrfcwsled >nul
set menu=%errorlevel%
set errorlevel=
if %menu%==1 goto:p2.shop
if %menu%==2 goto:p2.att.a
if %menu%==3 goto:p2.hea.a
if %menu%==4 goto:p2.res.a
if %menu%==5 goto:p2.fus.a
if %menu%==6 goto:p2.mgc.a
if %menu%==7 goto:p2.mga.a
if %menu%==8 goto:p2.sok.a
if %menu%==9 goto:p2.lig.a
if %menu%==10 goto:p2.enl.a
if %menu%==11 goto:p2.dbl.a

:p2.att.a
if %p2.att.sr%==15 set ssii.errormessage=Attack has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.att.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.att.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.att.sc%
set/a p2.sx-=%p2.att.sx%
set/a p2.att.sr+=1
call:funct.skill
set ssii.errormessage=Attack increased to Rank %p2.att.sd%
goto:p2.shop.skills

:p2.hea.a
if %p2.hea.sr%==15 set ssii.errormessage=Heal has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.hea.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.hea.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.hea.sc%
set/a p2.sx-=%p2.hea.sx%
set/a p2.hea.sr+=1
call:funct.skill
set ssii.errormessage=Heal increased to Rank %p2.hea.sd%
goto:p2.shop.skills

:p2.res.a
if %p2.res.sr%==15 set ssii.errormessage=Rest has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.res.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.res.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.res.sc%
set/a p2.sx-=%p2.res.sx%
set/a p2.res.sr+=1
call:funct.skill
set ssii.errormessage=Rest increased to Rank %p2.res.sd%
goto:p2.shop.skills

:p2.fus.a
if %p2.fus.sr%==15 set ssii.errormessage=Fusion has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.fus.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.fus.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.fus.sc%
set/a p2.sx-=%p2.fus.sx%
set/a p2.fus.sr+=1
call:funct.skill
set ssii.errormessage=Fusion increased to Rank %p2.fus.sd%
goto:p2.shop.skills

:p2.mgc.a
if %p2.mgc.sr%==15 set ssii.errormessage=Magic Claw has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.mgc.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.mgc.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.mgc.sc%
set/a p2.sx-=%p2.mgc.sx%
set/a p2.mgc.sr+=1
call:funct.skill
set ssii.errormessage=Magic Claw increased to Rank %p2.mgc.sd%
goto:p2.shop.skills

:p2.mga.a
if %p2.mga.sr%==15 set ssii.errormessage=Magic Arrow has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.mga.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.mga.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.mga.sc%
set/a p2.sx-=%p2.mga.sx%
set/a p2.mga.sr+=1
call:funct.skill
set ssii.errormessage=Magic Arrow increased to Rank %p2.mga.sd%
goto:p2.shop.skills

:p2.sok.a
if %p2.sok.sr%==15 set ssii.errormessage=Sokatsui has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.sok.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.sok.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.sok.sc%
set/a p2.sx-=%p2.sok.sx%
set/a p2.sok.sr+=1
call:funct.skill
set ssii.errormessage=Sokatsui increased to Rank %p2.sok.sd%
goto:p2.shop.skills

:p2.lig.a
if %p2.lig.sr%==15 set ssii.errormessage=Lightning has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.lig.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.lig.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.lig.sc%
set/a p2.sx-=%p2.lig.sx%
set/a p2.lig.sr+=1
call:funct.skill
set ssii.errormessage=Lightning increased to Rank %p2.lig.sd%
goto:p2.shop.skills

:p2.enl.a
if %p2.enl.sr%==15 set ssii.errormessage=Enlightenment has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.enl.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.enl.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.enl.sc%
set/a p2.sx-=%p2.enl.sx%
set/a p2.enl.sr+=1
call:funct.skill
set ssii.errormessage=Enlightenment increased to Rank %p2.enl.sd%
goto:p2.shop.skills

:p2.dbl.a
if %p2.dbl.sr%==15 set ssii.errormessage=Dire Blade has already been maxed. & goto:p2.shop.skills
if %p2.sc% lss %p2.dbl.sc% set ssii.errormessage=You do not have enough Soul Coins & goto:p2.shop.skills
if %p2.sx% lss %p2.dbl.sx% set ssii.errormessage=You do not have enough Experience & goto:p2.shop.skills 
set/a p2.sc-=%p2.dbl.sc%
set/a p2.sx-=%p2.dbl.sx%
set/a p2.dbl.sr+=1
call:funct.skill
set ssii.errormessage=Dire Blade increased to Rank %p2.dbl.sd%
goto:p2.shop.skills

:p1.shop.classes
goto p1.shop
:p2.shop.classes
goto p2.shop