setlocal EnableDelayedExpansion

::skills, passive - masteries
for %%G in (cbt,mgc,fcs,krm,res,int,syn,spd,exp,reg,rum,hp,mp) do (
	for %%A in (sl,ss) do (
		for %%B in (p1,p2) do (
			set/a %%B.skl.%%G.%%A=0
		)
	)
)
set/a p1.sc=1000000
set/a p1.sx=1000000

set/a skl.cbt.sv=10
set/a skl.mgc.sv=10
set/a skl.fcs.sv=14
set/a skl.krm.sv=14
set/a skl.res.sv=18
set/a skl.int.sv=18
set/a skl.syn.sv=22
set/a skl.spd.sv=22
set/a skl.exp.sv=28
set/a skl.reg.sv=35
set/a skl.rum.sv=35

:p1.shop.stats

:p1.cbt

set/a cost=%skl.cbt.sv% * %p1.skl.cbt.sl% + %skl.cbt.sv% + (%p1.skl.cbt.ss% / 2) + 10 
if %p1.sc% lss %cost% goto:p1.shop.stats & set ssii.errormessage=You do not have enough Soul Coins
if %p1.sx% lss %cost% goto:p1.shop.stats & set ssii.errormessage=You do not have enough Experience
set ssii.errormessage=
set/a p1.skl.cbt.sl+=1
::float 10
set/a p1.str+=%p1.skl.cbt.sl% * 20 / 10
set/a p1.dex+=%p1.skl.cbt.sl% * 20 / 10
set/a p1.skl.cbt.ss+=%p1.skl.cbt.sl% * 20 / 10

echo. cost %cost%
echo. level %p1.skl.cbt.sl%
echo. str %p1.str%
echo. dex %p1.dex%
echo. ss %p1.skl.cbt.ss%
pause
goto:p1.shop.stats