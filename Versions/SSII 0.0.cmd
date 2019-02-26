@echo off
color 0F
title Soulstream II Version 0.01

::system variables
set/a cal.a=0
set/a cal.b=0
set/a cal.c=0
set/a tmp=0
set/a f.return

::file init
if exist saves.bat ren saves.bat saves.ssii
if exist saves.SSII goto init.game
echo. > saves.bat
ren saves.bat saves.SSII

:init.game
::game variables
set n1=User1
set n2=User2

set menu=1

set/a p1.hp=0
set/a p1.mp=0
set/a p1.hpl=0
set/a p1.mpl=0
set/a p1.hpa=0
set/a p1.mpa=0
set/a p1.df=0
set/a p1.dfa=0
set/a p1.bl=0
set/a p1.bla=0
set/a p1.cmp=0
set/a p1.chp=0
set/a p1.xp=0
set/a p1.sc=0

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

set/a p2.hp=0
set/a p2.mp=0
set/a p2.hpl=0
set/a p2.mpl=0
set/a p2.hpa=0
set/a p2.mpa=0
set/a p2.df=0
set/a p2.dfa=0
set/a p2.bl=0
set/a p2.bla=0
set/a p2.cmp=0
set/a p2.chp=0
set/a p2.xp=0
set/a p2.sc=0

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

::Skill Variables

::skill bases

set/a p1.att.sa=60
set/a p1.att.sb=50 
set/a p1.att.sp=10 
set/a p2.att.sa=6 
set/a p2.att.sb=50 
set/a p2.att.sp=10
 
set/a p1.hea.sa=100
set/a p1.hea.sb=50 
set/a p1.hea.sp=0 
set/a p2.hea.sa=10 
set/a p2.hea.sb=50 
set/a p2.hea.sp=0 
 
set/a p1.mga.sa=70
set/a p1.mga.sb=40 
set/a p1.mga.sp=20 
set/a p2.mga.sa=7 
set/a p2.mga.sb=40 
set/a p2.mga.sp=20 
 
set/a p1.res.sa=100
set/a p1.res.sb=100 
set/a p1.res.sp=0 
set/a p2.res.sa=10 
set/a p2.res.sb=100 
set/a p2.res.sp=0 
 
set/a p1.mgc.sa=60
set/a p1.mgc.sb=80 
set/a p1.mgc.sp=50 
set/a p2.mgc.sa=60 
set/a p2.mgc.sb=80 
set/a p2.mgc.sp=50 
 
set/a p1.fus.sa=50 
set/a p1.fus.sb=20 
set/a p1.fus.sp=20 
set/a p2.fus.sa=50 
set/a p2.fus.sb=20 
set/a p2.fus.sp=20 
 
set/a p1.sok.sa=60 
set/a p1.sok.sb=40 
set/a p1.sok.sp=30 
set/a p2.sok.sa=60 
set/a p2.sok.sb=40 
set/a p2.sok.sp=30 
 
set/a p1.lig.sa=10 
set/a p1.lig.sb=10 
set/a p1.lig.sp=80 
set/a p2.lig.sa=10 
set/a p2.lig.sb=10 
set/a p2.lig.sp=80 
 
set/a p1.enl.sa=100 
set/a p1.enl.sb=100 
set/a p1.enl.sp=0 
set/a p2.enl.sa=100 
set/a p2.enl.sb=100 
set/a p2.enl.sp=0 
 
set/a p1.dbl.sa=80 
set/a p1.dbl.sb=50 
set/a p1.dbl.sp=60 
set/a p2.dbl.sa=80 
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

::Skill Cooldowns
set/a p1.fir.c=0
set/a p2.fir.c=0
set/a p1.hly.c=0
set/a p2.hly.c=0
set/a p1.lsc.c=0
set/a p2.lsc.c=0
set/a p1.lac.c=0
set/a p2.lac.c=0
set/a p1.dkl.c=0
set/a p2.dkl.c=0
set/a p1.arc.c=0
set/a p2.arc.c=0 

::skill base costs
set/a skill.0.sm=0
set/a skill.0.sc=40
set/a skill.0.sx=20
set/a skill.1.sm=5
set/a skill.1.sc=30
set/a skill.1.sx=20
set/a skill.2.sm=6
set/a skill.2.sc=40
set/a skill.2.sx=20
set/a skill.3.sm=7
set/a skill.3.sc=50
set/a skill.3.sx=40
set/a skill.4.sm=8
set/a skill.4.sc=60
set/a skill.4.sx=60
set/a skill.5.sm=9
set/a skill.5.sc=60
set/a skill.5.sx=80
set/a skill.6.sm=10
set/a skill.6.sc=80
set/a skill.6.sx=100
set/a skill.7.sm=11
set/a skill.7.sc=80
set/a skill.7.sx=100
set/a skill.8.sm=12
set/a skill.8.sc=80
set/a skill.8.sx=100
set/a skill.9.sm=14
set/a skill.9.sc=100
set/a skill.9.sx=140
set/a skill.10.sm=16
set/a skill.10.sc=120
set/a skill.10.sx=180
set/a skill.11.sm=20
set/a skill.11.sc=140
set/a skill.11.sx=200
set/a skill.12.sm=24
set/a skill.12.sc=160
set/a skill.12.sx=200
set/a skill.13.sm=28
set/a skill.13.sc=240
set/a skill.13.sx=200
set/a skill.14.sm=34
set/a skill.14.sc=440
set/a skill.14.sx=440
set/a skill.15.sm=45
set/a skill.15.sc=0
set/a skill.15.sx=0


::skill Assets

set/a p1.att.sr=0 
set/a p1.att.sv=0 
set/a p1.att.sc=0 
set/a p1.att.sx=0 
set/a p1.att.sa=0 
set/a p1.att.sb=0 
set/a p1.att.sp=0 
set p1.att.sd=0 
set/a p2.att.sr=0 
set/a p2.att.sv=0 
set/a p2.att.sc=0 
set/a p2.att.sx=0 
set/a p2.att.sa=0 
set/a p2.att.sb=0 
set/a p2.att.sp=0 
set p2.att.sd=0 
  
set/a p1.hea.sr=0 
set/a p1.hea.sv=0 
set/a p1.hea.sc=0 
set/a p1.hea.sx=0 
set/a p1.hea.sa=0 
set/a p1.hea.sb=0 
set/a p1.hea.sp=0 
set p1.hea.sd=0 
set/a p2.hea.sr=0 
set/a p2.hea.sv=0 
set/a p2.hea.sc=0 
set/a p2.hea.sx=0 
set/a p2.hea.sa=0 
set/a p2.hea.sb=0 
set/a p2.hea.sp=0 
set p2.hea.sd=0 
  
set/a p1.mga.sr=0 
set/a p1.mga.sv=0 
set/a p1.mga.sc=0 
set/a p1.mga.sx=0 
set/a p1.mga.sa=0 
set/a p1.mga.sb=0 
set/a p1.mga.sp=0 
set p1.mga.sd=0 
set/a p2.mga.sr=0 
set/a p2.mga.sv=0 
set/a p2.mga.sc=0 
set/a p2.mga.sx=0 
set/a p2.mga.sa=0 
set/a p2.mga.sb=0 
set/a p2.mga.sp=0 
set p2.mga.sd=0 
  
set/a p1.res.sr=0 
set/a p1.res.sv=0 
set/a p1.res.sc=0 
set/a p1.res.sx=0 
set/a p1.res.sa=0 
set/a p1.res.sb=0 
set/a p1.res.sp=0 
set p1.res.sd=0 
set/a p2.res.sr=0 
set/a p2.res.sv=0 
set/a p2.res.sc=0 
set/a p2.res.sx=0 
set/a p2.res.sa=0 
set/a p2.res.sb=0 
set/a p2.res.sp=0 
set p2.res.sd=0 
  
set/a p1.mgc.sr=0 
set/a p1.mgc.sv=0 
set/a p1.mgc.sc=0 
set/a p1.mgc.sx=0 
set/a p1.mgc.sa=0 
set/a p1.mgc.sb=0 
set/a p1.mgc.sp=0 
set p1.mgc.sd=0 
set/a p2.mgc.sr=0 
set/a p2.mgc.sv=0 
set/a p2.mgc.sc=0 
set/a p2.mgc.sx=0 
set/a p2.mgc.sa=0 
set/a p2.mgc.sb=0 
set/a p2.mgc.sp=0 
set p2.mgc.sd=0 
  
set/a p1.fus.sr=0 
set/a p1.fus.sv=0 
set/a p1.fus.sc=0 
set/a p1.fus.sx=0 
set/a p1.fus.sa=0 
set/a p1.fus.sb=0 
set/a p1.fus.sp=0 
set p1.fus.sd=0 
set/a p2.fus.sr=0 
set/a p2.fus.sv=0 
set/a p2.fus.sc=0 
set/a p2.fus.sx=0 
set/a p2.fus.sa=0 
set/a p2.fus.sb=0 
set/a p2.fus.sp=0 
set p2.fus.sd=0 
  
set/a p1.sok.sr=0 
set/a p1.sok.sv=0 
set/a p1.sok.sc=0 
set/a p1.sok.sx=0 
set/a p1.sok.sa=0 
set/a p1.sok.sb=0 
set/a p1.sok.sp=0 
set p1.sok.sd=0 
set/a p2.sok.sr=0 
set/a p2.sok.sv=0 
set/a p2.sok.sc=0 
set/a p2.sok.sx=0 
set/a p2.sok.sa=0 
set/a p2.sok.sb=0 
set/a p2.sok.sp=0 
set p2.sok.sd=0 
  
set/a p1.lig.sr=0 
set/a p1.lig.sv=0 
set/a p1.lig.sc=0 
set/a p1.lig.sx=0 
set/a p1.lig.sa=0 
set/a p1.lig.sb=0 
set/a p1.lig.sp=0 
set p1.lig.sd=0 
set/a p2.lig.sr=0 
set/a p2.lig.sv=0 
set/a p2.lig.sc=0 
set/a p2.lig.sx=0 
set/a p2.lig.sa=0 
set/a p2.lig.sb=0 
set/a p2.lig.sp=0 
set p2.lig.sd=0 
  
set/a p1.enl.sr=0 
set/a p1.enl.sv=0 
set/a p1.enl.sc=0 
set/a p1.enl.sx=0 
set/a p1.enl.sa=0 
set/a p1.enl.sb=0 
set/a p1.enl.sp=0 
set p1.enl.sd=0 
set/a p2.enl.sr=0 
set/a p2.enl.sv=0 
set/a p2.enl.sc=0 
set/a p2.enl.sx=0 
set/a p2.enl.sa=0 
set/a p2.enl.sb=0 
set/a p2.enl.sp=0 
set p2.enl.sd=0 
  
set/a p1.dbl.sr=0 
set/a p1.dbl.sv=0 
set/a p1.dbl.sc=0 
set/a p1.dbl.sx=0 
set/a p1.dbl.sa=0 
set/a p1.dbl.sb=0 
set/a p1.dbl.sp=0 
set p1.dbl.sd=0 
set/a p2.dbl.sr=0 
set/a p2.dbl.sv=0 
set/a p2.dbl.sc=0 
set/a p2.dbl.sx=0 
set/a p2.dbl.sa=0 
set/a p2.dbl.sb=0 
set/a p2.dbl.sp=0 
set p2.dbl.sd=0 
  
set/a p1.ice.sr=0 
set/a p1.ice.sv=0 
set/a p1.ice.sc=0 
set/a p1.ice.sx=0 
set/a p1.ice.sa=0 
set/a p1.ice.sb=0 
set/a p1.ice.sp=0 
set p1.ice.sd=0 
set/a p2.ice.sr=0 
set/a p2.ice.sv=0 
set/a p2.ice.sc=0 
set/a p2.ice.sx=0 
set/a p2.ice.sa=0 
set/a p2.ice.sb=0 
set/a p2.ice.sp=0 
set p2.ice.sd=0 
  
set/a p1.fir.sr=0 
set/a p1.fir.sv=0 
set/a p1.fir.sc=0 
set/a p1.fir.sx=0 
set/a p1.fir.sa=0 
set/a p1.fir.sb=0 
set/a p1.fir.sp=0 
set p1.fir.sd=0 
set/a p2.fir.sr=0 
set/a p2.fir.sv=0 
set/a p2.fir.sc=0 
set/a p2.fir.sx=0 
set/a p2.fir.sa=0 
set/a p2.fir.sb=0 
set/a p2.fir.sp=0 
set p2.fir.sd=0 
  
set/a p1.esc.sr=0 
set/a p1.esc.sv=0 
set/a p1.esc.sc=0 
set/a p1.esc.sx=0 
set/a p1.esc.sa=0 
set/a p1.esc.sb=0 
set/a p1.esc.sp=0 
set p1.esc.sd=0 
set/a p2.esc.sr=0 
set/a p2.esc.sv=0 
set/a p2.esc.sc=0 
set/a p2.esc.sx=0 
set/a p2.esc.sa=0 
set/a p2.esc.sb=0 
set/a p2.esc.sp=0 
set p2.esc.sd=0 
  
set/a p1.clr.sr=0 
set/a p1.clr.sv=0 
set/a p1.clr.sc=0 
set/a p1.clr.sx=0 
set/a p1.clr.sa=0 
set/a p1.clr.sb=0 
set/a p1.clr.sp=0 
set p1.clr.sd=0 
set/a p2.clr.sr=0 
set/a p2.clr.sv=0 
set/a p2.clr.sc=0 
set/a p2.clr.sx=0 
set/a p2.clr.sa=0 
set/a p2.clr.sb=0 
set/a p2.clr.sp=0 
set p2.clr.sd=0 
  
set/a p1.hly.sr=0 
set/a p1.hly.sv=0 
set/a p1.hly.sc=0 
set/a p1.hly.sx=0 
set/a p1.hly.sa=0 
set/a p1.hly.sb=0 
set/a p1.hly.sp=0 
set p1.hly.sd=0 
set/a p2.hly.sr=0 
set/a p2.hly.sv=0 
set/a p2.hly.sc=0 
set/a p2.hly.sx=0 
set/a p2.hly.sa=0 
set/a p2.hly.sb=0 
set/a p2.hly.sp=0 
set p2.hly.sd=0 
  
set/a p1.cer.sr=0 
set/a p1.cer.sv=0 
set/a p1.cer.sc=0 
set/a p1.cer.sx=0 
set/a p1.cer.sa=0 
set/a p1.cer.sb=0 
set/a p1.cer.sp=0 
set p1.cer.sd=0 
set/a p2.cer.sr=0 
set/a p2.cer.sv=0 
set/a p2.cer.sc=0 
set/a p2.cer.sx=0 
set/a p2.cer.sa=0 
set/a p2.cer.sb=0 
set/a p2.cer.sp=0 
set p2.cer.sd=0 
  
set/a p1.lsc.sr=0 
set/a p1.lsc.sv=0 
set/a p1.lsc.sc=0 
set/a p1.lsc.sx=0 
set/a p1.lsc.sa=0 
set/a p1.lsc.sb=0 
set/a p1.lsc.sp=0 
set p1.lsc.sd=0 
set/a p2.lsc.sr=0 
set/a p2.lsc.sv=0 
set/a p2.lsc.sc=0 
set/a p2.lsc.sx=0 
set/a p2.lsc.sa=0 
set/a p2.lsc.sb=0 
set/a p2.lsc.sp=0 
set p2.lsc.sd=0 
  
set/a p1.lsp.sr=0 
set/a p1.lsp.sv=0 
set/a p1.lsp.sc=0 
set/a p1.lsp.sx=0 
set/a p1.lsp.sa=0 
set/a p1.lsp.sb=0 
set/a p1.lsp.sp=0 
set p1.lsp.sd=0 
set/a p2.lsp.sr=0 
set/a p2.lsp.sv=0 
set/a p2.lsp.sc=0 
set/a p2.lsp.sx=0 
set/a p2.lsp.sa=0 
set/a p2.lsp.sb=0 
set/a p2.lsp.sp=0 
set p2.lsp.sd=0 
  
set/a p1.shm.sr=0 
set/a p1.shm.sv=0 
set/a p1.shm.sc=0 
set/a p1.shm.sx=0 
set/a p1.shm.sa=0 
set/a p1.shm.sb=0 
set/a p1.shm.sp=0 
set p1.shm.sd=0 
set/a p2.shm.sr=0 
set/a p2.shm.sv=0 
set/a p2.shm.sc=0 
set/a p2.shm.sx=0 
set/a p2.shm.sa=0 
set/a p2.shm.sb=0 
set/a p2.shm.sp=0 
set p2.shm.sd=0 
  
set/a p1.lac.sr=0 
set/a p1.lac.sv=0 
set/a p1.lac.sc=0 
set/a p1.lac.sx=0 
set/a p1.lac.sa=0 
set/a p1.lac.sb=0 
set/a p1.lac.sp=0 
set p1.lac.sd=0 
set/a p2.lac.sr=0 
set/a p2.lac.sv=0 
set/a p2.lac.sc=0 
set/a p2.lac.sx=0 
set/a p2.lac.sa=0 
set/a p2.lac.sb=0 
set/a p2.lac.sp=0 
set p2.lac.sd=0 
  
set/a p1.wow.sr=0 
set/a p1.wow.sv=0 
set/a p1.wow.sc=0 
set/a p1.wow.sx=0 
set/a p1.wow.sa=0 
set/a p1.wow.sb=0 
set/a p1.wow.sp=0 
set p1.wow.sd=0 
set/a p2.wow.sr=0 
set/a p2.wow.sv=0 
set/a p2.wow.sc=0 
set/a p2.wow.sx=0 
set/a p2.wow.sa=0 
set/a p2.wow.sb=0 
set/a p2.wow.sp=0 
set p2.wow.sd=0 
  
set/a p1.dkl.sr=0 
set/a p1.dkl.sv=0 
set/a p1.dkl.sc=0 
set/a p1.dkl.sx=0 
set/a p1.dkl.sa=0 
set/a p1.dkl.sb=0 
set/a p1.dkl.sp=0 
set p1.dkl.sd=0 
set/a p2.dkl.sr=0 
set/a p2.dkl.sv=0 
set/a p2.dkl.sc=0 
set/a p2.dkl.sx=0 
set/a p2.dkl.sa=0 
set/a p2.dkl.sb=0 
set/a p2.dkl.sp=0 
set p2.dkl.sd=0 
  
set/a p1.wor.sr=0 
set/a p1.wor.sv=0 
set/a p1.wor.sc=0 
set/a p1.wor.sx=0 
set/a p1.wor.sa=0 
set/a p1.wor.sb=0 
set/a p1.wor.sp=0 
set p1.wor.sd=0 
set/a p2.wor.sr=0 
set/a p2.wor.sv=0 
set/a p2.wor.sc=0 
set/a p2.wor.sx=0 
set/a p2.wor.sa=0 
set/a p2.wor.sb=0 
set/a p2.wor.sp=0 
set p2.wor.sd=0 
  
set/a p1.wit.sr=0 
set/a p1.wit.sv=0 
set/a p1.wit.sc=0 
set/a p1.wit.sx=0 
set/a p1.wit.sa=0 
set/a p1.wit.sb=0 
set/a p1.wit.sp=0 
set p1.wit.sd=0 
set/a p2.wit.sr=0 
set/a p2.wit.sv=0 
set/a p2.wit.sc=0 
set/a p2.wit.sx=0 
set/a p2.wit.sa=0 
set/a p2.wit.sb=0 
set/a p2.wit.sp=0 
set p2.wit.sd=0 
  
set/a p1.arc.sr=0 
set/a p1.arc.sv=0 
set/a p1.arc.sc=0 
set/a p1.arc.sx=0 
set/a p1.arc.sa=0 
set/a p1.arc.sb=0 
set/a p1.arc.sp=0 
set p1.arc.sd=0 
set/a p2.arc.sr=0 
set/a p2.arc.sv=0 
set/a p2.arc.sc=0 
set/a p2.arc.sx=0 
set/a p2.arc.sa=0 
set/a p2.arc.sb=0 
set/a p2.arc.sp=0 
set p2.arc.sd=0 

::intro

set/a tmp=%random% %% 16
if %tmp% lss 10 color 0%tmp%
if %tmp%==10 color 0A
if %tmp%==11 color 0B
if %tmp%==12 color 0C
if %tmp%==13 color 0D
if %tmp%==14 color 0E
if %tmp%==15 color 0F
set/a tmp=0

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                             Wolfe Lumi Presents
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
echo.                    Soulstream II is still in development.
echo.
echo.         This means that there will be a lot of bugs and/or glitches
echo.
echo.                        Please be mindful of that.
echo.
echo.                                Thanks. Wolfe.
timeout 3 >nul
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
echo.                   MAXIMISE THIS SCREEN FOR BEST EXPERIENCE
echo.
echo.                                   Have fun
timeout 2 >nul

:menu
cls
echo.
echo.
echo.
echo.
echo.
echo.               Soulstream II 0.01 - The beginning of beginnings!
echo.
echo.
echo.
echo.
echo. 1                                New Game
echo.
echo. 2                               Load Save
echo.
echo. 3                                 About
echo.
echo. 4                                 Exit
echo.
echo.
echo.
echo.
echo.                  Soulstream II (C) Wolfe Lumi
echo.
set/p menu=)                             )  

if %menu%==1 goto menu.start
if %menu%==2 goto menu.autosave
if %menu%==3 goto menu.about
if %menu%==4 goto menu.exit 
if %menu%==start goto menu.start
if %menu%==autosave goto menu.autosave
if %menu%==about goto menu.about
if %menu%==exit goto menu.exit 
echo. Input not recognised.
timeout 2 >nul
goto menu

:menu.start
cls
echo.
echo.
echo.
echo.                              Player 1's Name?
set/p n1=)                               
echo.
echo.                              Player 2's Name?
set/p n2=)                               
:start.test
cls
if not exist testmode.txt goto start.test.a
echo.
echo.
echo.
echo.                Would you like to run Soulstream II on test mode?
set/p menu=>                            
if %menu%==y goto start.test.b
if %menu%==n goto start.test.a
goto start.test
:start.test.a

::any init processes

goto start.load.first

::CALL INIT BLOCK

:funct.random
set/a funct.return=(%random% %% (%2 - %1 + 1)) + %1
goto:eof

::========================================================================================================
::Battle Calculations as Functions

::accuracy Calculations
::returns a 1 or 0 as funct.return
::usage call:funct.acc [Skill_Base_Accuracy] [P1_DEX] [P2_INT]
:funct.acc
set/a acc=(1000 / 1000 + (((%2 - %3) * 100) / (%1 + %2))) + %1
if %acc% gtr 99 set/a acc=100
call:funct.random 0 100
if %funct.return% gtr %acc%  ( set/a funct.return=0 ) else ( set/a funct.return=1)
goto:eof

::damage calcutions
::returns damage as funct.return
::usage: call:funct.damage [Skill_Base_Damage] [Skill_Base_Balance] [Player_STR] [Player_BAL]
:funct.damage
set/a dmg.max=%1 * (100 + %3) / 100
set/a dmg.min=%dmg.max% - (%dmg.max% * 100 / (100 + %4 + %2))
call:funct.random %dmg.min% %dmg.max%
goto:eof

::defence calculations
::usage call:funct.defence [P1_DEF] [P2_DFP] [DMG] [PROT (float 100)]
::returns damage as funct.return
:funct.defence
set/a cal.def=%1-%2+10
echo. %cal.def%
if %cal.def% gtr 200 set/a cal.def=200
set/a funct.return = (((10000 / (100 + %cal.def%)) * (%3 * %4 / 100))/100)
if %cal.def% lss 1 set/a funct.return=%3
goto:eof




:funct.cooldown
set/a p1.fir.c-=1
set/a p2.fir.c-=1 
set/a p1.hly.c-=1 
set/a p2.hly.c-=1  
set/a p1.lsc.c-=1 
set/a p2.lsc.c-=1 
set/a p1.lac.c-=1 
set/a p2.lac.c-=1 
set/a p1.dkl.c-=1 
set/a p2.dkl.c-=1   
set/a p1.arc.c-=1 
set/a p2.arc.c-=1 

if %p1.fir.c% lss 1 set/a p1.fir.c=0 
if %p2.fir.c% lss 1 set/a p2.fir.c=0 
if %p1.hly.c% lss 1 set/a p1.hly.c=0 
if %p2.hly.c% lss 1 set/a p2.hly.c=0 
if %p1.lsc.c% lss 1 set/a p1.lsc.c=0 
if %p2.lsc.c% lss 1 set/a p2.lsc.c=0 
if %p1.lac.c% lss 1 set/a p1.lac.c=0 
if %p2.lac.c% lss 1 set/a p2.lac.c=0 
if %p1.dkl.c% lss 1 set/a p1.dkl.c=0 
if %p2.dkl.c% lss 1 set/a p2.dkl.c=0 
if %p1.arc.c% lss 1 set/a p1.arc.c=0 
if %p2.arc.c% lss 1 set/a p2.arc.c=0 
goto:eof

:funct.save
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
ren saves.ssii saves.bat
echo. > saves.bat
echo set n1=%n1% >> saves.bat
echo set n2=%n2% >> saves.bat

echo set/a p1.hp=%p1.hp% >> saves.bat
echo set/a p1.mp=%p1.mp% >> saves.bat
echo set/a p1.hpl=%p1.hpl% >> saves.bat
echo set/a p1.mpl=%p1.mpl% >> saves.bat
echo set/a p1.hpa=%p1.hpa% >> saves.bat
echo set/a p1.mpa=%p1.mpa% >> saves.bat
echo set/a p1.df=%p1.df% >> saves.bat
echo set/a p1.dfa=%p1.dfa% >> saves.bat
echo set/a p1.bl=%p1.bl% >> saves.bat
echo set/a p1.bla=%p1.bla% >> saves.bat
echo set/a p1.cmp=%p1.cmp% >> saves.bat
echo set/a p1.chp=%p1.chp% >> saves.bat
echo set/a p1.xp=%p1.xp% >> saves.bat
echo set/a p1.sc=%p1.sc% >> saves.bat
echo. >> saves.bat
echo set/a p2.hp=%p2.hp% >> saves.bat
echo set/a p2.mp=%p2.mp% >> saves.bat
echo set/a p2.hpl=%p2.hpl% >> saves.bat
echo set/a p2.mpl=%p2.mpl% >> saves.bat
echo set/a p2.hpa=%p2.hpa% >> saves.bat
echo set/a p2.mpa=%p2.mpa% >> saves.bat
echo set/a p2.df=%p2.df% >> saves.bat
echo set/a p2.dfa=%p2.dfa% >> saves.bat
echo set/a p2.bl=%p2.bl% >> saves.bat
echo set/a p2.bla=%p2.bla% >> saves.bat
echo set/a p2.cmp=%p2.cmp% >> saves.bat
echo set/a p2.chp=%p2.chp% >> saves.bat
echo set/a p2.xp=%p2.xp% >> saves.bat
echo set/a p2.sc=%p2.sc% >> saves.bat
echo. >> saves.bat
echo set/a p1.crm=%p1.crm% >> saves.bat
echo set/a p1.crr=%p1.crr% >> saves.bat
echo set/a p1.cdf=%p1.cdf% >> saves.bat
echo set/a p1.cdp=%p1.cdp% >> saves.bat
echo set/a p1.pro=%p1.pro% >> saves.bat
echo set/a p2.crm=%p2.crm% >> saves.bat
echo set/a p2.crr=%p2.crr% >> saves.bat
echo set/a p2.cdp=%p2.cdp% >> saves.bat
echo set/a p2.cdf=%p2.cdf% >> saves.bat
echo set/a p2.pro=%p2.pro% >> saves.bat
echo. >> saves.bat
echo set/a p1.str=%p1.str% >> saves.bat
echo set/a p1.dex=%p1.dex% >> saves.bat
echo set/a p1.int=%p1.int% >> saves.bat
echo set/a p1.luk=%p1.luk% >> saves.bat
echo set/a p1.wil=%p1.wil% >> saves.bat
echo set/a p2.str=%p2.str% >> saves.bat
echo set/a p2.dex=%p2.dex% >> saves.bat
echo set/a p2.int=%p2.int% >> saves.bat
echo set/a p2.luk=%p2.luk% >> saves.bat
echo set/a p2.wil=%p2.wil% >> saves.bat
echo. >> saves.bat
echo set/a p1.cstr=%p1.cstr% >> saves.bat
echo set/a p1.cdex=%p1.cdex% >> saves.bat
echo set/a p1.cint=%p1.cint% >> saves.bat
echo set/a p1.cluk=%p1.cluk% >> saves.bat
echo set/a p1.cwil=%p1.cwil% >> saves.bat
echo set/a p2.cstr=%p2.cstr% >> saves.bat
echo set/a p2.cdex=%p2.cdex% >> saves.bat
echo set/a p2.cint=%p2.cint% >> saves.bat
echo set/a p2.cluk=%p2.cluk% >> saves.bat
echo set/a p2.cwil=%p2.cwil% >> saves.bat
echo. >> saves.bat
echo set/a p1.avd=%avd% >> saves.bat
echo set/a p1.acc=%acc% >> saves.bat
echo set/a p2.avd=%avd% >> saves.bat
echo set/a p2.acc=%acc% >> saves.bat
echo. >> saves.bat
echo set/a p1.att.sr=%p1.att.sr%  >> saves.bat
echo set/a p2.att.sr=%p1.att.sr%  >> saves.bat
echo set/a p1.hea.sr=%p1.hea.sr%  >> saves.bat
echo set/a p2.hea.sr=%p1.hea.sr%  >> saves.bat
echo set/a p1.mga.sr=%p1.mga.sr%  >> saves.bat
echo set/a p2.mga.sr=%p1.mga.sr%  >> saves.bat
echo set/a p1.res.sr=%p1.res.sr%  >> saves.bat
echo set/a p2.res.sr=%p1.res.sr%  >> saves.bat
echo set/a p1.mgc.sr=%p1.mgc.sr%  >> saves.bat
echo set/a p2.mgc.sr=%p1.mgc.sr%  >> saves.bat
echo set/a p1.fus.sr=%p1.fus.sr%  >> saves.bat
echo set/a p2.fus.sr=%p1.fus.sr%  >> saves.bat
echo set/a p1.sok.sr=%p1.sok.sr%  >> saves.bat
echo set/a p2.sok.sr=%p1.sok.sr%  >> saves.bat
echo set/a p1.lig.sr=%p1.lig.sr%  >> saves.bat
echo set/a p2.lig.sr=%p1.lig.sr%  >> saves.bat
echo set/a p1.enl.sr=%p1.enl.sr%  >> saves.bat
echo set/a p2.enl.sr=%p1.enl.sr%  >> saves.bat
echo set/a p1.dbl.sr=%p1.dbl.sr%  >> saves.bat
echo set/a p2.dbl.sr=%p1.dbl.sr%  >> saves.bat
echo set/a p1.ice.sr=%p1.ice.sr%  >> saves.bat
echo set/a p2.ice.sr=%p1.ice.sr%  >> saves.bat
echo set/a p1.fir.sr=%p1.fir.sr%  >> saves.bat
echo set/a p2.fir.sr=%p1.fir.sr%  >> saves.bat
echo set/a p1.esc.sr=%p1.esc.sr%  >> saves.bat
echo set/a p2.esc.sr=%p1.esc.sr%  >> saves.bat
echo set/a p1.clr.sr=%p1.clr.sr%  >> saves.bat
echo set/a p2.clr.sr=%p1.clr.sr%  >> saves.bat
echo set/a p1.hly.sr=%p1.hly.sr%  >> saves.bat
echo set/a p2.hly.sr=%p1.hly.sr%  >> saves.bat
echo set/a p1.cer.sr=%p1.cer.sr%  >> saves.bat
echo set/a p2.cer.sr=%p1.cer.sr%  >> saves.bat
echo set/a p1.lsc.sr=%p1.lsc.sr%  >> saves.bat
echo set/a p2.lsc.sr=%p1.lsc.sr%  >> saves.bat
echo set/a p1.lsp.sr=%p1.lsp.sr%  >> saves.bat
echo set/a p2.lsp.sr=%p1.lsp.sr%  >> saves.bat
echo set/a p1.shm.sr=%p1.shm.sr%  >> saves.bat
echo set/a p2.shm.sr=%p1.shm.sr%  >> saves.bat
echo set/a p1.lac.sr=%p1.lac.sr%  >> saves.bat
echo set/a p2.lac.sr=%p1.lac.sr%  >> saves.bat
echo set/a p1.wow.sr=%p1.wow.sr%  >> saves.bat
echo set/a p2.wow.sr=%p1.wow.sr%  >> saves.bat
echo set/a p1.dkl.sr=%p1.dkl.sr%  >> saves.bat
echo set/a p2.dkl.sr=%p1.dkl.sr%  >> saves.bat
echo set/a p1.wor.sr=%p1.wor.sr%  >> saves.bat
echo set/a p2.wor.sr=%p1.wor.sr%  >> saves.bat
echo set/a p1.wit.sr=%p1.wit.sr%  >> saves.bat
echo set/a p2.wit.sr=%p1.wit.sr%  >> saves.bat
echo set/a p1.arc.sr=%p1.arc.sr%  >> saves.bat
echo set/a p2.arc.sr=%p1.arc.sr%  >> saves.bat
goto:eof

:funct.loadbar
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                   Loading...
echo.
echo --------------------------------------------------------------------------------
if %1==1 echo.
if %1==2 echo 0100
if %1==3 echo 010011000
if %1==4 echo 0100110001110
if %1==5 echo 01001100011101010
if %1==6 echo 010011000111010101101
if %1==7 echo 0100110001110101011011010
if %1==8 echo 01001100011101010110110101101
if %1==9 echo 010011000111010101101101011010010 
if %1==10 echo 01001100011101010110110101101001011011
if %1==11 echo 01001100011101010110110101101001011011100
if %1==12 echo 0100110001110101011011010110100101101110011011 
if %1==13 echo 01001100011101010110110101101001011011100110111101 
if %1==14 echo 010011000111010101101101011010010110111001101111011101 
if %1==15 echo 0100110001110101011011010110100101101110011011110111010101
if %1==16 echo 01001100011101010110110101101001011011100110111101110101011100 
if %1==17 echo 010011000111010101101101011010010110111001101111011101010111001101 
if %1==18 echo 0100110001110101011011010110100101101110011011110111010101110011010001 
if %1==19 echo 01001100011101010110110101101001011011100110111101110101011100110100011001
if %1==20 echo 01001100011101010110110101101001011011100110111101110101011100110100011001010011 
echo --------------------------------------------------------------------------------
echo.                                 ))%2 %3 %4 %5 %6
echo.
goto:eof

:start.load.first
cls
call:funct.loadbar 1 Setting defaults

set/a p1.hp=100
set/a p1.mp=100
set/a p1.hpl=140
set/a p1.mpl=140
set/a p1.hpa=0
set/a p1.mpa=0
set/a p1.def=0
set/a p1.dfa=0
set/a p1.bal=60
set/a p1.cmp=100
set/a p1.chp=100

set/a p2.hp=100
set/a p2.mp=100
set/a p2.hpl=140
set/a p2.mpl=140
set/a p2.hpa=0
set/a p2.mpa=0
set/a p2.def=0
set/a p2.dfa=0
set/a p2.bal=60
set/a p2.cmp=100
set/a p2.chp=100

set/a p1.crm=15
set/a p1.crr=10
set/a p1.cdf=0
set/a p1.cdp=0
set/a p1.pro=0
set/a p2.crm=15
set/a p2.crr=10
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

call:funct.loadbar 3 Initiating 

set/a p1.td=0
set/a p2.td=0

set/a p1.hp=%p1.chp%+%p1.hpa%
set/a p1.mp=%p1.cmp%+%p1.mpa%
set/a p2.hp=%p2.chp%+%p2.hpa%
set/a p2.mp=%p2.cmp%+%p2.mpa%
set/a p1.df=%p1.cdf%+%p1.dfa%
set/a p2.df=%p2.cdf%+%p2.dfa%

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

set/a p1.att.sv=5 
set/a p2.att.sv=5 
set/a p1.hea.sv=3 
set/a p2.hea.sv=3 
set/a p1.mga.sv=7 
set/a p2.mga.sv=7 
set/a p1.res.sv=5 
set/a p2.res.sv=5 
set/a p1.mgc.sv=10 
set/a p2.mgc.sv=10 
set/a p1.fus.sv=12 
set/a p2.fus.sv=12 
set/a p1.sok.sv=8 
set/a p2.sok.sv=8 
set/a p1.lig.sv=15 
set/a p2.lig.sv=15 
set/a p1.enl.sv=10 
set/a p2.enl.sv=10 
set/a p1.dbl.sv=15
set/a p2.dbl.sv=15 
set/a p1.ice.sv=10 
set/a p2.ice.sv=10 
set/a p1.fir.sv=20 
set/a p2.fir.sv=20 
set/a p1.esc.sv=30 
set/a p2.esc.sv=30 
set/a p1.clr.sv=20 
set/a p2.clr.sv=20 
set/a p1.hly.sv=50 
set/a p2.hly.sv=50 
set/a p1.cer.sv=10 
set/a p2.cer.sv=10 
set/a p1.lsc.sv=20 
set/a p2.lsc.sv=20 
set/a p1.lsp.sv=30 
set/a p2.lsp.sv=30 
set/a p1.shm.sv=20 
set/a p2.shm.sv=20 
set/a p1.lac.sv=50 
set/a p2.lac.sv=50 
set/a p1.wow.sv=10 
set/a p2.wow.sv=10 
set/a p1.dkl.sv=20 
set/a p2.dkl.sv=20 
set/a p1.wor.sv=30 
set/a p2.wor.sv=30 
set/a p1.wit.sv=20 
set/a p2.wit.sv=20 
set/a p1.arc.sv=50 
set/a p2.arc.sv=50 

call:funct.loadbar 4 Loading Skills

 
if %p1.att.sr%==0  set/a p1.att.sm=%skill.0.sm% 
if %p1.att.sr%==0  set/a p1.att.sc=%p1.att.sv% * %skill.0.sc% / 10 
if %p1.att.sr%==0  set/a p1.att.sx=%p1.att.sv% * %skill.0.sx% / 10 
if %p1.att.sr%==0  set p1.att.sd=Novice 
if %p2.att.sr%==0  set/a p1.att.sm=%skill.0.sm% 
if %p2.att.sr%==0  set/a p1.att.sc=%p1.att.sv% * %skill.0.sc% / 10 
if %p2.att.sr%==0  set/a p1.att.sx=%p1.att.sv% * %skill.0.sx% / 10 
if %p2.att.sr%==0  set p1.att.sd=Novice 
if %p1.att.sr%==1  set/a p1.att.sm=%skill.1.sm% 
if %p1.att.sr%==1  set/a p1.att.sc=%p1.att.sv% * %skill.1.sc% / 10 
if %p1.att.sr%==1  set/a p1.att.sx=%p1.att.sv% * %skill.1.sx% / 10 
if %p1.att.sr%==1  set p1.att.sd=F 
if %p2.att.sr%==1  set/a p1.att.sm=%skill.1.sm% 
if %p2.att.sr%==1  set/a p1.att.sc=%p1.att.sv% * %skill.1.sc% / 10 
if %p2.att.sr%==1  set/a p1.att.sx=%p1.att.sv% * %skill.1.sx% / 10 
if %p2.att.sr%==1  set p1.att.sd=F 
if %p1.att.sr%==2  set/a p1.att.sm=%skill.2.sm% 
if %p1.att.sr%==2  set/a p1.att.sc=%p1.att.sv% * %skill.2.sc% / 10 
if %p1.att.sr%==2  set/a p1.att.sx=%p1.att.sv% * %skill.2.sx% / 10 
if %p1.att.sr%==2  set p1.att.sd=E 
if %p2.att.sr%==2  set/a p1.att.sm=%skill.2.sm% 
if %p2.att.sr%==2  set/a p1.att.sc=%p1.att.sv% * %skill.2.sc% / 10 
if %p2.att.sr%==2  set/a p1.att.sx=%p1.att.sv% * %skill.2.sx% / 10 
if %p2.att.sr%==2  set p1.att.sd=E 
if %p1.att.sr%==3  set/a p1.att.sm=%skill.3.sm% 
if %p1.att.sr%==3  set/a p1.att.sc=%p1.att.sv% * %skill.3.sc% / 10 
if %p1.att.sr%==3  set/a p1.att.sx=%p1.att.sv% * %skill.3.sx% / 10 
if %p1.att.sr%==3  set p1.att.sd=D 
if %p2.att.sr%==3  set/a p1.att.sm=%skill.3.sm% 
if %p2.att.sr%==3  set/a p1.att.sc=%p1.att.sv% * %skill.3.sc% / 10 
if %p2.att.sr%==3  set/a p1.att.sx=%p1.att.sv% * %skill.3.sx% / 10 
if %p2.att.sr%==3  set p1.att.sd=D 
if %p1.att.sr%==4  set/a p1.att.sm=%skill.4.sm% 
if %p1.att.sr%==4  set/a p1.att.sc=%p1.att.sv% * %skill.4.sc% / 10 
if %p1.att.sr%==4  set/a p1.att.sx=%p1.att.sv% * %skill.4.sx% / 10 
if %p1.att.sr%==4  set p1.att.sd=C 
if %p2.att.sr%==4  set/a p1.att.sm=%skill.4.sm% 
if %p2.att.sr%==4  set/a p1.att.sc=%p1.att.sv% * %skill.4.sc% / 10 
if %p2.att.sr%==4  set/a p1.att.sx=%p1.att.sv% * %skill.4.sx% / 10 
if %p2.att.sr%==4  set p1.att.sd=C 
if %p1.att.sr%==5  set/a p1.att.sm=%skill.5.sm% 
if %p1.att.sr%==5  set/a p1.att.sc=%p1.att.sv% * %skill.5.sc% / 10 
if %p1.att.sr%==5  set/a p1.att.sx=%p1.att.sv% * %skill.5.sx% / 10 
if %p1.att.sr%==5  set p1.att.sd=B 
if %p2.att.sr%==5  set/a p1.att.sm=%skill.5.sm% 
if %p2.att.sr%==5  set/a p1.att.sc=%p1.att.sv% * %skill.5.sc% / 10 
if %p2.att.sr%==5  set/a p1.att.sx=%p1.att.sv% * %skill.5.sx% / 10 
if %p2.att.sr%==5  set p1.att.sd=B 
if %p1.att.sr%==6  set/a p1.att.sm=%skill.6.sm% 
if %p1.att.sr%==6  set/a p1.att.sc=%p1.att.sv% * %skill.6.sc% / 10 
if %p1.att.sr%==6  set/a p1.att.sx=%p1.att.sv% * %skill.6.sx% / 10 
if %p1.att.sr%==6  set p1.att.sd=A 
if %p2.att.sr%==6  set/a p1.att.sm=%skill.6.sm% 
if %p2.att.sr%==6  set/a p1.att.sc=%p1.att.sv% * %skill.6.sc% / 10 
if %p2.att.sr%==6  set/a p1.att.sx=%p1.att.sv% * %skill.6.sx% / 10 
if %p2.att.sr%==6  set p1.att.sd=A 
if %p1.att.sr%==7  set/a p1.att.sm=%skill.7.sm% 
if %p1.att.sr%==7  set/a p1.att.sc=%p1.att.sv% * %skill.7.sc% / 10 
if %p1.att.sr%==7  set/a p1.att.sx=%p1.att.sv% * %skill.7.sx% / 10 
if %p1.att.sr%==7  set p1.att.sd=9 
if %p2.att.sr%==7  set/a p1.att.sm=%skill.7.sm% 
if %p2.att.sr%==7  set/a p1.att.sc=%p1.att.sv% * %skill.7.sc% / 10 
if %p2.att.sr%==7  set/a p1.att.sx=%p1.att.sv% * %skill.7.sx% / 10 
if %p2.att.sr%==7  set p1.att.sd=9 
if %p1.att.sr%==8  set/a p1.att.sm=%skill.8.sm% 
if %p1.att.sr%==8  set/a p1.att.sc=%p1.att.sv% * %skill.8.sc% / 10 
if %p1.att.sr%==8  set/a p1.att.sx=%p1.att.sv% * %skill.8.sx% / 10 
if %p1.att.sr%==8  set p1.att.sd=8 
if %p2.att.sr%==8  set/a p1.att.sm=%skill.8.sm% 
if %p2.att.sr%==8  set/a p1.att.sc=%p1.att.sv% * %skill.8.sc% / 10 
if %p2.att.sr%==8  set/a p1.att.sx=%p1.att.sv% * %skill.8.sx% / 10 
if %p2.att.sr%==8  set p1.att.sd=8 
if %p1.att.sr%==9  set/a p1.att.sm=%skill.9.sm% 
if %p1.att.sr%==9  set/a p1.att.sc=%p1.att.sv% * %skill.9.sc% / 10 
if %p1.att.sr%==9  set/a p1.att.sx=%p1.att.sv% * %skill.9.sx% / 10 
if %p1.att.sr%==9  set p1.att.sd=7 
if %p2.att.sr%==9  set/a p1.att.sm=%skill.9.sm% 
if %p2.att.sr%==9  set/a p1.att.sc=%p1.att.sv% * %skill.9.sc% / 10 
if %p2.att.sr%==9  set/a p1.att.sx=%p1.att.sv% * %skill.9.sx% / 10 
if %p2.att.sr%==9  set p1.att.sd=7 
if %p1.att.sr%==10  set/a p1.att.sm=%skill.10.sm% 
if %p1.att.sr%==10  set/a p1.att.sc=%p1.att.sv% * %skill.10.sc% / 10 
if %p1.att.sr%==10  set/a p1.att.sx=%p1.att.sv% * %skill.10.sx% / 10 
if %p1.att.sr%==10  set p1.att.sd=6 
if %p2.att.sr%==10  set/a p1.att.sm=%skill.10.sm% 
if %p2.att.sr%==10  set/a p1.att.sc=%p1.att.sv% * %skill.10.sc% / 10 
if %p2.att.sr%==10  set/a p1.att.sx=%p1.att.sv% * %skill.10.sx% / 10 
if %p2.att.sr%==10  set p1.att.sd=6 
if %p1.att.sr%==11  set/a p1.att.sm=%skill.11.sm% 
if %p1.att.sr%==11  set/a p1.att.sc=%p1.att.sv% * %skill.11.sc% / 10 
if %p1.att.sr%==11  set/a p1.att.sx=%p1.att.sv% * %skill.11.sx% / 10 
if %p1.att.sr%==11  set p1.att.sd=5 
if %p2.att.sr%==11  set/a p1.att.sm=%skill.11.sm% 
if %p2.att.sr%==11  set/a p1.att.sc=%p1.att.sv% * %skill.11.sc% / 10 
if %p2.att.sr%==11  set/a p1.att.sx=%p1.att.sv% * %skill.11.sx% / 10 
if %p2.att.sr%==11  set p1.att.sd=5 
if %p1.att.sr%==12  set/a p1.att.sm=%skill.12.sm% 
if %p1.att.sr%==12  set/a p1.att.sc=%p1.att.sv% * %skill.12.sc% / 10 
if %p1.att.sr%==12  set/a p1.att.sx=%p1.att.sv% * %skill.12.sx% / 10 
if %p1.att.sr%==12  set p1.att.sd=4 
if %p2.att.sr%==12  set/a p1.att.sm=%skill.12.sm% 
if %p2.att.sr%==12  set/a p1.att.sc=%p1.att.sv% * %skill.12.sc% / 10 
if %p2.att.sr%==12  set/a p1.att.sx=%p1.att.sv% * %skill.12.sx% / 10 
if %p2.att.sr%==12  set p1.att.sd=4 
if %p1.att.sr%==13  set/a p1.att.sm=%skill.13.sm% 
if %p1.att.sr%==13  set/a p1.att.sc=%p1.att.sv% * %skill.13.sc% / 10 
if %p1.att.sr%==13  set/a p1.att.sx=%p1.att.sv% * %skill.13.sx% / 10 
if %p1.att.sr%==13  set p1.att.sd=3 
if %p2.att.sr%==13  set/a p1.att.sm=%skill.13.sm% 
if %p2.att.sr%==13  set/a p1.att.sc=%p1.att.sv% * %skill.13.sc% / 10 
if %p2.att.sr%==13  set/a p1.att.sx=%p1.att.sv% * %skill.13.sx% / 10 
if %p2.att.sr%==13  set p1.att.sd=3 
if %p1.att.sr%==14  set/a p1.att.sm=%skill.14.sm% 
if %p1.att.sr%==14  set/a p1.att.sc=%p1.att.sv% * %skill.14.sc% / 10 
if %p1.att.sr%==14  set/a p1.att.sx=%p1.att.sv% * %skill.14.sx% / 10 
if %p1.att.sr%==14  set p1.att.sd=2 
if %p2.att.sr%==14  set/a p1.att.sm=%skill.14.sm% 
if %p2.att.sr%==14  set/a p1.att.sc=%p1.att.sv% * %skill.14.sc% / 10 
if %p2.att.sr%==14  set/a p1.att.sx=%p1.att.sv% * %skill.14.sx% / 10 
if %p2.att.sr%==14  set p1.att.sd=2 
if %p1.att.sr%==15  set/a p1.att.sm=%skill.15.sm% 
if %p1.att.sr%==15  set/a p1.att.sc=%p1.att.sv% * %skill.15.sc% / 10 
if %p1.att.sr%==15  set/a p1.att.sx=%p1.att.sv% * %skill.15.sx% / 10 
if %p1.att.sr%==15  set p1.att.sd=1 
if %p2.att.sr%==15  set/a p1.att.sm=%skill.15.sm% 
if %p2.att.sr%==15  set/a p1.att.sc=%p1.att.sv% * %skill.15.sc% / 10 
if %p2.att.sr%==15  set/a p1.att.sx=%p1.att.sv% * %skill.15.sx% / 10 
if %p2.att.sr%==15  set p1.att.sd=1 
 
if %p1.hea.sr%==0  set/a p1.hea.sm=%skill.0.sm% 
if %p1.hea.sr%==0  set/a p1.hea.sc=%p1.hea.sv% * %skill.0.sc% / 10 
if %p1.hea.sr%==0  set/a p1.hea.sx=%p1.hea.sv% * %skill.0.sx% / 10 
if %p1.hea.sr%==0  set p1.hea.sd=Novice 
if %p2.hea.sr%==0  set/a p1.hea.sm=%skill.0.sm% 
if %p2.hea.sr%==0  set/a p1.hea.sc=%p1.hea.sv% * %skill.0.sc% / 10 
if %p2.hea.sr%==0  set/a p1.hea.sx=%p1.hea.sv% * %skill.0.sx% / 10 
if %p2.hea.sr%==0  set p1.hea.sd=Novice 
if %p1.hea.sr%==1  set/a p1.hea.sm=%skill.1.sm% 
if %p1.hea.sr%==1  set/a p1.hea.sc=%p1.hea.sv% * %skill.1.sc% / 10 
if %p1.hea.sr%==1  set/a p1.hea.sx=%p1.hea.sv% * %skill.1.sx% / 10 
if %p1.hea.sr%==1  set p1.hea.sd=F 
if %p2.hea.sr%==1  set/a p1.hea.sm=%skill.1.sm% 
if %p2.hea.sr%==1  set/a p1.hea.sc=%p1.hea.sv% * %skill.1.sc% / 10 
if %p2.hea.sr%==1  set/a p1.hea.sx=%p1.hea.sv% * %skill.1.sx% / 10 
if %p2.hea.sr%==1  set p1.hea.sd=F 
if %p1.hea.sr%==2  set/a p1.hea.sm=%skill.2.sm% 
if %p1.hea.sr%==2  set/a p1.hea.sc=%p1.hea.sv% * %skill.2.sc% / 10 
if %p1.hea.sr%==2  set/a p1.hea.sx=%p1.hea.sv% * %skill.2.sx% / 10 
if %p1.hea.sr%==2  set p1.hea.sd=E 
if %p2.hea.sr%==2  set/a p1.hea.sm=%skill.2.sm% 
if %p2.hea.sr%==2  set/a p1.hea.sc=%p1.hea.sv% * %skill.2.sc% / 10 
if %p2.hea.sr%==2  set/a p1.hea.sx=%p1.hea.sv% * %skill.2.sx% / 10 
if %p2.hea.sr%==2  set p1.hea.sd=E 
if %p1.hea.sr%==3  set/a p1.hea.sm=%skill.3.sm% 
if %p1.hea.sr%==3  set/a p1.hea.sc=%p1.hea.sv% * %skill.3.sc% / 10 
if %p1.hea.sr%==3  set/a p1.hea.sx=%p1.hea.sv% * %skill.3.sx% / 10 
if %p1.hea.sr%==3  set p1.hea.sd=D 
if %p2.hea.sr%==3  set/a p1.hea.sm=%skill.3.sm% 
if %p2.hea.sr%==3  set/a p1.hea.sc=%p1.hea.sv% * %skill.3.sc% / 10 
if %p2.hea.sr%==3  set/a p1.hea.sx=%p1.hea.sv% * %skill.3.sx% / 10 
if %p2.hea.sr%==3  set p1.hea.sd=D 
if %p1.hea.sr%==4  set/a p1.hea.sm=%skill.4.sm% 
if %p1.hea.sr%==4  set/a p1.hea.sc=%p1.hea.sv% * %skill.4.sc% / 10 
if %p1.hea.sr%==4  set/a p1.hea.sx=%p1.hea.sv% * %skill.4.sx% / 10 
if %p1.hea.sr%==4  set p1.hea.sd=C 
if %p2.hea.sr%==4  set/a p1.hea.sm=%skill.4.sm% 
if %p2.hea.sr%==4  set/a p1.hea.sc=%p1.hea.sv% * %skill.4.sc% / 10 
if %p2.hea.sr%==4  set/a p1.hea.sx=%p1.hea.sv% * %skill.4.sx% / 10 
if %p2.hea.sr%==4  set p1.hea.sd=C 
if %p1.hea.sr%==5  set/a p1.hea.sm=%skill.5.sm% 
if %p1.hea.sr%==5  set/a p1.hea.sc=%p1.hea.sv% * %skill.5.sc% / 10 
if %p1.hea.sr%==5  set/a p1.hea.sx=%p1.hea.sv% * %skill.5.sx% / 10 
if %p1.hea.sr%==5  set p1.hea.sd=B 
if %p2.hea.sr%==5  set/a p1.hea.sm=%skill.5.sm% 
if %p2.hea.sr%==5  set/a p1.hea.sc=%p1.hea.sv% * %skill.5.sc% / 10 
if %p2.hea.sr%==5  set/a p1.hea.sx=%p1.hea.sv% * %skill.5.sx% / 10 
if %p2.hea.sr%==5  set p1.hea.sd=B 
if %p1.hea.sr%==6  set/a p1.hea.sm=%skill.6.sm% 
if %p1.hea.sr%==6  set/a p1.hea.sc=%p1.hea.sv% * %skill.6.sc% / 10 
if %p1.hea.sr%==6  set/a p1.hea.sx=%p1.hea.sv% * %skill.6.sx% / 10 
if %p1.hea.sr%==6  set p1.hea.sd=A 
if %p2.hea.sr%==6  set/a p1.hea.sm=%skill.6.sm% 
if %p2.hea.sr%==6  set/a p1.hea.sc=%p1.hea.sv% * %skill.6.sc% / 10 
if %p2.hea.sr%==6  set/a p1.hea.sx=%p1.hea.sv% * %skill.6.sx% / 10 
if %p2.hea.sr%==6  set p1.hea.sd=A 
if %p1.hea.sr%==7  set/a p1.hea.sm=%skill.7.sm% 
if %p1.hea.sr%==7  set/a p1.hea.sc=%p1.hea.sv% * %skill.7.sc% / 10 
if %p1.hea.sr%==7  set/a p1.hea.sx=%p1.hea.sv% * %skill.7.sx% / 10 
if %p1.hea.sr%==7  set p1.hea.sd=9 
if %p2.hea.sr%==7  set/a p1.hea.sm=%skill.7.sm% 
if %p2.hea.sr%==7  set/a p1.hea.sc=%p1.hea.sv% * %skill.7.sc% / 10 
if %p2.hea.sr%==7  set/a p1.hea.sx=%p1.hea.sv% * %skill.7.sx% / 10 
if %p2.hea.sr%==7  set p1.hea.sd=9 
if %p1.hea.sr%==8  set/a p1.hea.sm=%skill.8.sm% 
if %p1.hea.sr%==8  set/a p1.hea.sc=%p1.hea.sv% * %skill.8.sc% / 10 
if %p1.hea.sr%==8  set/a p1.hea.sx=%p1.hea.sv% * %skill.8.sx% / 10 
if %p1.hea.sr%==8  set p1.hea.sd=8 
if %p2.hea.sr%==8  set/a p1.hea.sm=%skill.8.sm% 
if %p2.hea.sr%==8  set/a p1.hea.sc=%p1.hea.sv% * %skill.8.sc% / 10 
if %p2.hea.sr%==8  set/a p1.hea.sx=%p1.hea.sv% * %skill.8.sx% / 10 
if %p2.hea.sr%==8  set p1.hea.sd=8 
if %p1.hea.sr%==9  set/a p1.hea.sm=%skill.9.sm% 
if %p1.hea.sr%==9  set/a p1.hea.sc=%p1.hea.sv% * %skill.9.sc% / 10 
if %p1.hea.sr%==9  set/a p1.hea.sx=%p1.hea.sv% * %skill.9.sx% / 10 
if %p1.hea.sr%==9  set p1.hea.sd=7 
if %p2.hea.sr%==9  set/a p1.hea.sm=%skill.9.sm% 
if %p2.hea.sr%==9  set/a p1.hea.sc=%p1.hea.sv% * %skill.9.sc% / 10 
if %p2.hea.sr%==9  set/a p1.hea.sx=%p1.hea.sv% * %skill.9.sx% / 10 
if %p2.hea.sr%==9  set p1.hea.sd=7 
if %p1.hea.sr%==10  set/a p1.hea.sm=%skill.10.sm% 
if %p1.hea.sr%==10  set/a p1.hea.sc=%p1.hea.sv% * %skill.10.sc% / 10 
if %p1.hea.sr%==10  set/a p1.hea.sx=%p1.hea.sv% * %skill.10.sx% / 10 
if %p1.hea.sr%==10  set p1.hea.sd=6 
if %p2.hea.sr%==10  set/a p1.hea.sm=%skill.10.sm% 
if %p2.hea.sr%==10  set/a p1.hea.sc=%p1.hea.sv% * %skill.10.sc% / 10 
if %p2.hea.sr%==10  set/a p1.hea.sx=%p1.hea.sv% * %skill.10.sx% / 10 
if %p2.hea.sr%==10  set p1.hea.sd=6 
if %p1.hea.sr%==11  set/a p1.hea.sm=%skill.11.sm% 
if %p1.hea.sr%==11  set/a p1.hea.sc=%p1.hea.sv% * %skill.11.sc% / 10 
if %p1.hea.sr%==11  set/a p1.hea.sx=%p1.hea.sv% * %skill.11.sx% / 10 
if %p1.hea.sr%==11  set p1.hea.sd=5 
if %p2.hea.sr%==11  set/a p1.hea.sm=%skill.11.sm% 
if %p2.hea.sr%==11  set/a p1.hea.sc=%p1.hea.sv% * %skill.11.sc% / 10 
if %p2.hea.sr%==11  set/a p1.hea.sx=%p1.hea.sv% * %skill.11.sx% / 10 
if %p2.hea.sr%==11  set p1.hea.sd=5 
if %p1.hea.sr%==12  set/a p1.hea.sm=%skill.12.sm% 
if %p1.hea.sr%==12  set/a p1.hea.sc=%p1.hea.sv% * %skill.12.sc% / 10 
if %p1.hea.sr%==12  set/a p1.hea.sx=%p1.hea.sv% * %skill.12.sx% / 10 
if %p1.hea.sr%==12  set p1.hea.sd=4 
if %p2.hea.sr%==12  set/a p1.hea.sm=%skill.12.sm% 
if %p2.hea.sr%==12  set/a p1.hea.sc=%p1.hea.sv% * %skill.12.sc% / 10 
if %p2.hea.sr%==12  set/a p1.hea.sx=%p1.hea.sv% * %skill.12.sx% / 10 
if %p2.hea.sr%==12  set p1.hea.sd=4 
if %p1.hea.sr%==13  set/a p1.hea.sm=%skill.13.sm% 
if %p1.hea.sr%==13  set/a p1.hea.sc=%p1.hea.sv% * %skill.13.sc% / 10 
if %p1.hea.sr%==13  set/a p1.hea.sx=%p1.hea.sv% * %skill.13.sx% / 10 
if %p1.hea.sr%==13  set p1.hea.sd=3 
if %p2.hea.sr%==13  set/a p1.hea.sm=%skill.13.sm% 
if %p2.hea.sr%==13  set/a p1.hea.sc=%p1.hea.sv% * %skill.13.sc% / 10 
if %p2.hea.sr%==13  set/a p1.hea.sx=%p1.hea.sv% * %skill.13.sx% / 10 
if %p2.hea.sr%==13  set p1.hea.sd=3 
if %p1.hea.sr%==14  set/a p1.hea.sm=%skill.14.sm% 
if %p1.hea.sr%==14  set/a p1.hea.sc=%p1.hea.sv% * %skill.14.sc% / 10 
if %p1.hea.sr%==14  set/a p1.hea.sx=%p1.hea.sv% * %skill.14.sx% / 10 
if %p1.hea.sr%==14  set p1.hea.sd=2 
if %p2.hea.sr%==14  set/a p1.hea.sm=%skill.14.sm% 
if %p2.hea.sr%==14  set/a p1.hea.sc=%p1.hea.sv% * %skill.14.sc% / 10 
if %p2.hea.sr%==14  set/a p1.hea.sx=%p1.hea.sv% * %skill.14.sx% / 10 
if %p2.hea.sr%==14  set p1.hea.sd=2 
if %p1.hea.sr%==15  set/a p1.hea.sm=%skill.15.sm% 
if %p1.hea.sr%==15  set/a p1.hea.sc=%p1.hea.sv% * %skill.15.sc% / 10 
if %p1.hea.sr%==15  set/a p1.hea.sx=%p1.hea.sv% * %skill.15.sx% / 10 
if %p1.hea.sr%==15  set p1.hea.sd=1 
if %p2.hea.sr%==15  set/a p1.hea.sm=%skill.15.sm% 
if %p2.hea.sr%==15  set/a p1.hea.sc=%p1.hea.sv% * %skill.15.sc% / 10 
if %p2.hea.sr%==15  set/a p1.hea.sx=%p1.hea.sv% * %skill.15.sx% / 10 
if %p2.hea.sr%==15  set p1.hea.sd=1 
 
if %p1.mga.sr%==0  set/a p1.mga.sm=%skill.0.sm% 
if %p1.mga.sr%==0  set/a p1.mga.sc=%p1.mga.sv% * %skill.0.sc% / 10 
if %p1.mga.sr%==0  set/a p1.mga.sx=%p1.mga.sv% * %skill.0.sx% / 10 
if %p1.mga.sr%==0  set p1.mga.sd=Novice 
if %p2.mga.sr%==0  set/a p1.mga.sm=%skill.0.sm% 
if %p2.mga.sr%==0  set/a p1.mga.sc=%p1.mga.sv% * %skill.0.sc% / 10 
if %p2.mga.sr%==0  set/a p1.mga.sx=%p1.mga.sv% * %skill.0.sx% / 10 
if %p2.mga.sr%==0  set p1.mga.sd=Novice 
if %p1.mga.sr%==1  set/a p1.mga.sm=%skill.1.sm% 
if %p1.mga.sr%==1  set/a p1.mga.sc=%p1.mga.sv% * %skill.1.sc% / 10 
if %p1.mga.sr%==1  set/a p1.mga.sx=%p1.mga.sv% * %skill.1.sx% / 10 
if %p1.mga.sr%==1  set p1.mga.sd=F 
if %p2.mga.sr%==1  set/a p1.mga.sm=%skill.1.sm% 
if %p2.mga.sr%==1  set/a p1.mga.sc=%p1.mga.sv% * %skill.1.sc% / 10 
if %p2.mga.sr%==1  set/a p1.mga.sx=%p1.mga.sv% * %skill.1.sx% / 10 
if %p2.mga.sr%==1  set p1.mga.sd=F 
if %p1.mga.sr%==2  set/a p1.mga.sm=%skill.2.sm% 
if %p1.mga.sr%==2  set/a p1.mga.sc=%p1.mga.sv% * %skill.2.sc% / 10 
if %p1.mga.sr%==2  set/a p1.mga.sx=%p1.mga.sv% * %skill.2.sx% / 10 
if %p1.mga.sr%==2  set p1.mga.sd=E 
if %p2.mga.sr%==2  set/a p1.mga.sm=%skill.2.sm% 
if %p2.mga.sr%==2  set/a p1.mga.sc=%p1.mga.sv% * %skill.2.sc% / 10 
if %p2.mga.sr%==2  set/a p1.mga.sx=%p1.mga.sv% * %skill.2.sx% / 10 
if %p2.mga.sr%==2  set p1.mga.sd=E 
if %p1.mga.sr%==3  set/a p1.mga.sm=%skill.3.sm% 
if %p1.mga.sr%==3  set/a p1.mga.sc=%p1.mga.sv% * %skill.3.sc% / 10 
if %p1.mga.sr%==3  set/a p1.mga.sx=%p1.mga.sv% * %skill.3.sx% / 10 
if %p1.mga.sr%==3  set p1.mga.sd=D 
if %p2.mga.sr%==3  set/a p1.mga.sm=%skill.3.sm% 
if %p2.mga.sr%==3  set/a p1.mga.sc=%p1.mga.sv% * %skill.3.sc% / 10 
if %p2.mga.sr%==3  set/a p1.mga.sx=%p1.mga.sv% * %skill.3.sx% / 10 
if %p2.mga.sr%==3  set p1.mga.sd=D 
if %p1.mga.sr%==4  set/a p1.mga.sm=%skill.4.sm% 
if %p1.mga.sr%==4  set/a p1.mga.sc=%p1.mga.sv% * %skill.4.sc% / 10 
if %p1.mga.sr%==4  set/a p1.mga.sx=%p1.mga.sv% * %skill.4.sx% / 10 
if %p1.mga.sr%==4  set p1.mga.sd=C 
if %p2.mga.sr%==4  set/a p1.mga.sm=%skill.4.sm% 
if %p2.mga.sr%==4  set/a p1.mga.sc=%p1.mga.sv% * %skill.4.sc% / 10 
if %p2.mga.sr%==4  set/a p1.mga.sx=%p1.mga.sv% * %skill.4.sx% / 10 
if %p2.mga.sr%==4  set p1.mga.sd=C 
if %p1.mga.sr%==5  set/a p1.mga.sm=%skill.5.sm% 
if %p1.mga.sr%==5  set/a p1.mga.sc=%p1.mga.sv% * %skill.5.sc% / 10 
if %p1.mga.sr%==5  set/a p1.mga.sx=%p1.mga.sv% * %skill.5.sx% / 10 
if %p1.mga.sr%==5  set p1.mga.sd=B 
if %p2.mga.sr%==5  set/a p1.mga.sm=%skill.5.sm% 
if %p2.mga.sr%==5  set/a p1.mga.sc=%p1.mga.sv% * %skill.5.sc% / 10 
if %p2.mga.sr%==5  set/a p1.mga.sx=%p1.mga.sv% * %skill.5.sx% / 10 
if %p2.mga.sr%==5  set p1.mga.sd=B 
if %p1.mga.sr%==6  set/a p1.mga.sm=%skill.6.sm% 
if %p1.mga.sr%==6  set/a p1.mga.sc=%p1.mga.sv% * %skill.6.sc% / 10 
if %p1.mga.sr%==6  set/a p1.mga.sx=%p1.mga.sv% * %skill.6.sx% / 10 
if %p1.mga.sr%==6  set p1.mga.sd=A 
if %p2.mga.sr%==6  set/a p1.mga.sm=%skill.6.sm% 
if %p2.mga.sr%==6  set/a p1.mga.sc=%p1.mga.sv% * %skill.6.sc% / 10 
if %p2.mga.sr%==6  set/a p1.mga.sx=%p1.mga.sv% * %skill.6.sx% / 10 
if %p2.mga.sr%==6  set p1.mga.sd=A 
if %p1.mga.sr%==7  set/a p1.mga.sm=%skill.7.sm% 
if %p1.mga.sr%==7  set/a p1.mga.sc=%p1.mga.sv% * %skill.7.sc% / 10 
if %p1.mga.sr%==7  set/a p1.mga.sx=%p1.mga.sv% * %skill.7.sx% / 10 
if %p1.mga.sr%==7  set p1.mga.sd=9 
if %p2.mga.sr%==7  set/a p1.mga.sm=%skill.7.sm% 
if %p2.mga.sr%==7  set/a p1.mga.sc=%p1.mga.sv% * %skill.7.sc% / 10 
if %p2.mga.sr%==7  set/a p1.mga.sx=%p1.mga.sv% * %skill.7.sx% / 10 
if %p2.mga.sr%==7  set p1.mga.sd=9 
if %p1.mga.sr%==8  set/a p1.mga.sm=%skill.8.sm% 
if %p1.mga.sr%==8  set/a p1.mga.sc=%p1.mga.sv% * %skill.8.sc% / 10 
if %p1.mga.sr%==8  set/a p1.mga.sx=%p1.mga.sv% * %skill.8.sx% / 10 
if %p1.mga.sr%==8  set p1.mga.sd=8 
if %p2.mga.sr%==8  set/a p1.mga.sm=%skill.8.sm% 
if %p2.mga.sr%==8  set/a p1.mga.sc=%p1.mga.sv% * %skill.8.sc% / 10 
if %p2.mga.sr%==8  set/a p1.mga.sx=%p1.mga.sv% * %skill.8.sx% / 10 
if %p2.mga.sr%==8  set p1.mga.sd=8 
if %p1.mga.sr%==9  set/a p1.mga.sm=%skill.9.sm% 
if %p1.mga.sr%==9  set/a p1.mga.sc=%p1.mga.sv% * %skill.9.sc% / 10 
if %p1.mga.sr%==9  set/a p1.mga.sx=%p1.mga.sv% * %skill.9.sx% / 10 
if %p1.mga.sr%==9  set p1.mga.sd=7 
if %p2.mga.sr%==9  set/a p1.mga.sm=%skill.9.sm% 
if %p2.mga.sr%==9  set/a p1.mga.sc=%p1.mga.sv% * %skill.9.sc% / 10 
if %p2.mga.sr%==9  set/a p1.mga.sx=%p1.mga.sv% * %skill.9.sx% / 10 
if %p2.mga.sr%==9  set p1.mga.sd=7 
if %p1.mga.sr%==10  set/a p1.mga.sm=%skill.10.sm% 
if %p1.mga.sr%==10  set/a p1.mga.sc=%p1.mga.sv% * %skill.10.sc% / 10 
if %p1.mga.sr%==10  set/a p1.mga.sx=%p1.mga.sv% * %skill.10.sx% / 10 
if %p1.mga.sr%==10  set p1.mga.sd=6 
if %p2.mga.sr%==10  set/a p1.mga.sm=%skill.10.sm% 
if %p2.mga.sr%==10  set/a p1.mga.sc=%p1.mga.sv% * %skill.10.sc% / 10 
if %p2.mga.sr%==10  set/a p1.mga.sx=%p1.mga.sv% * %skill.10.sx% / 10 
if %p2.mga.sr%==10  set p1.mga.sd=6 
if %p1.mga.sr%==11  set/a p1.mga.sm=%skill.11.sm% 
if %p1.mga.sr%==11  set/a p1.mga.sc=%p1.mga.sv% * %skill.11.sc% / 10 
if %p1.mga.sr%==11  set/a p1.mga.sx=%p1.mga.sv% * %skill.11.sx% / 10 
if %p1.mga.sr%==11  set p1.mga.sd=5 
if %p2.mga.sr%==11  set/a p1.mga.sm=%skill.11.sm% 
if %p2.mga.sr%==11  set/a p1.mga.sc=%p1.mga.sv% * %skill.11.sc% / 10 
if %p2.mga.sr%==11  set/a p1.mga.sx=%p1.mga.sv% * %skill.11.sx% / 10 
if %p2.mga.sr%==11  set p1.mga.sd=5 
if %p1.mga.sr%==12  set/a p1.mga.sm=%skill.12.sm% 
if %p1.mga.sr%==12  set/a p1.mga.sc=%p1.mga.sv% * %skill.12.sc% / 10 
if %p1.mga.sr%==12  set/a p1.mga.sx=%p1.mga.sv% * %skill.12.sx% / 10 
if %p1.mga.sr%==12  set p1.mga.sd=4 
if %p2.mga.sr%==12  set/a p1.mga.sm=%skill.12.sm% 
if %p2.mga.sr%==12  set/a p1.mga.sc=%p1.mga.sv% * %skill.12.sc% / 10 
if %p2.mga.sr%==12  set/a p1.mga.sx=%p1.mga.sv% * %skill.12.sx% / 10 
if %p2.mga.sr%==12  set p1.mga.sd=4 
if %p1.mga.sr%==13  set/a p1.mga.sm=%skill.13.sm% 
if %p1.mga.sr%==13  set/a p1.mga.sc=%p1.mga.sv% * %skill.13.sc% / 10 
if %p1.mga.sr%==13  set/a p1.mga.sx=%p1.mga.sv% * %skill.13.sx% / 10 
if %p1.mga.sr%==13  set p1.mga.sd=3 
if %p2.mga.sr%==13  set/a p1.mga.sm=%skill.13.sm% 
if %p2.mga.sr%==13  set/a p1.mga.sc=%p1.mga.sv% * %skill.13.sc% / 10 
if %p2.mga.sr%==13  set/a p1.mga.sx=%p1.mga.sv% * %skill.13.sx% / 10 
if %p2.mga.sr%==13  set p1.mga.sd=3 
if %p1.mga.sr%==14  set/a p1.mga.sm=%skill.14.sm% 
if %p1.mga.sr%==14  set/a p1.mga.sc=%p1.mga.sv% * %skill.14.sc% / 10 
if %p1.mga.sr%==14  set/a p1.mga.sx=%p1.mga.sv% * %skill.14.sx% / 10 
if %p1.mga.sr%==14  set p1.mga.sd=2 
if %p2.mga.sr%==14  set/a p1.mga.sm=%skill.14.sm% 
if %p2.mga.sr%==14  set/a p1.mga.sc=%p1.mga.sv% * %skill.14.sc% / 10 
if %p2.mga.sr%==14  set/a p1.mga.sx=%p1.mga.sv% * %skill.14.sx% / 10 
if %p2.mga.sr%==14  set p1.mga.sd=2 
if %p1.mga.sr%==15  set/a p1.mga.sm=%skill.15.sm% 
if %p1.mga.sr%==15  set/a p1.mga.sc=%p1.mga.sv% * %skill.15.sc% / 10 
if %p1.mga.sr%==15  set/a p1.mga.sx=%p1.mga.sv% * %skill.15.sx% / 10 
if %p1.mga.sr%==15  set p1.mga.sd=1 
if %p2.mga.sr%==15  set/a p1.mga.sm=%skill.15.sm% 
if %p2.mga.sr%==15  set/a p1.mga.sc=%p1.mga.sv% * %skill.15.sc% / 10 
if %p2.mga.sr%==15  set/a p1.mga.sx=%p1.mga.sv% * %skill.15.sx% / 10 
if %p2.mga.sr%==15  set p1.mga.sd=1 

call:funct.loadbar 5 Loading Skills
 
if %p1.res.sr%==0  set/a p1.res.sm=%skill.0.sm% 
if %p1.res.sr%==0  set/a p1.res.sc=%p1.res.sv% * %skill.0.sc% / 10 
if %p1.res.sr%==0  set/a p1.res.sx=%p1.res.sv% * %skill.0.sx% / 10 
if %p1.res.sr%==0  set p1.res.sd=Novice 
if %p2.res.sr%==0  set/a p1.res.sm=%skill.0.sm% 
if %p2.res.sr%==0  set/a p1.res.sc=%p1.res.sv% * %skill.0.sc% / 10 
if %p2.res.sr%==0  set/a p1.res.sx=%p1.res.sv% * %skill.0.sx% / 10 
if %p2.res.sr%==0  set p1.res.sd=Novice 
if %p1.res.sr%==1  set/a p1.res.sm=%skill.1.sm% 
if %p1.res.sr%==1  set/a p1.res.sc=%p1.res.sv% * %skill.1.sc% / 10 
if %p1.res.sr%==1  set/a p1.res.sx=%p1.res.sv% * %skill.1.sx% / 10 
if %p1.res.sr%==1  set p1.res.sd=F 
if %p2.res.sr%==1  set/a p1.res.sm=%skill.1.sm% 
if %p2.res.sr%==1  set/a p1.res.sc=%p1.res.sv% * %skill.1.sc% / 10 
if %p2.res.sr%==1  set/a p1.res.sx=%p1.res.sv% * %skill.1.sx% / 10 
if %p2.res.sr%==1  set p1.res.sd=F 
if %p1.res.sr%==2  set/a p1.res.sm=%skill.2.sm% 
if %p1.res.sr%==2  set/a p1.res.sc=%p1.res.sv% * %skill.2.sc% / 10 
if %p1.res.sr%==2  set/a p1.res.sx=%p1.res.sv% * %skill.2.sx% / 10 
if %p1.res.sr%==2  set p1.res.sd=E 
if %p2.res.sr%==2  set/a p1.res.sm=%skill.2.sm% 
if %p2.res.sr%==2  set/a p1.res.sc=%p1.res.sv% * %skill.2.sc% / 10 
if %p2.res.sr%==2  set/a p1.res.sx=%p1.res.sv% * %skill.2.sx% / 10 
if %p2.res.sr%==2  set p1.res.sd=E 
if %p1.res.sr%==3  set/a p1.res.sm=%skill.3.sm% 
if %p1.res.sr%==3  set/a p1.res.sc=%p1.res.sv% * %skill.3.sc% / 10 
if %p1.res.sr%==3  set/a p1.res.sx=%p1.res.sv% * %skill.3.sx% / 10 
if %p1.res.sr%==3  set p1.res.sd=D 
if %p2.res.sr%==3  set/a p1.res.sm=%skill.3.sm% 
if %p2.res.sr%==3  set/a p1.res.sc=%p1.res.sv% * %skill.3.sc% / 10 
if %p2.res.sr%==3  set/a p1.res.sx=%p1.res.sv% * %skill.3.sx% / 10 
if %p2.res.sr%==3  set p1.res.sd=D 
if %p1.res.sr%==4  set/a p1.res.sm=%skill.4.sm% 
if %p1.res.sr%==4  set/a p1.res.sc=%p1.res.sv% * %skill.4.sc% / 10 
if %p1.res.sr%==4  set/a p1.res.sx=%p1.res.sv% * %skill.4.sx% / 10 
if %p1.res.sr%==4  set p1.res.sd=C 
if %p2.res.sr%==4  set/a p1.res.sm=%skill.4.sm% 
if %p2.res.sr%==4  set/a p1.res.sc=%p1.res.sv% * %skill.4.sc% / 10 
if %p2.res.sr%==4  set/a p1.res.sx=%p1.res.sv% * %skill.4.sx% / 10 
if %p2.res.sr%==4  set p1.res.sd=C 
if %p1.res.sr%==5  set/a p1.res.sm=%skill.5.sm% 
if %p1.res.sr%==5  set/a p1.res.sc=%p1.res.sv% * %skill.5.sc% / 10 
if %p1.res.sr%==5  set/a p1.res.sx=%p1.res.sv% * %skill.5.sx% / 10 
if %p1.res.sr%==5  set p1.res.sd=B 
if %p2.res.sr%==5  set/a p1.res.sm=%skill.5.sm% 
if %p2.res.sr%==5  set/a p1.res.sc=%p1.res.sv% * %skill.5.sc% / 10 
if %p2.res.sr%==5  set/a p1.res.sx=%p1.res.sv% * %skill.5.sx% / 10 
if %p2.res.sr%==5  set p1.res.sd=B 
if %p1.res.sr%==6  set/a p1.res.sm=%skill.6.sm% 
if %p1.res.sr%==6  set/a p1.res.sc=%p1.res.sv% * %skill.6.sc% / 10 
if %p1.res.sr%==6  set/a p1.res.sx=%p1.res.sv% * %skill.6.sx% / 10 
if %p1.res.sr%==6  set p1.res.sd=A 
if %p2.res.sr%==6  set/a p1.res.sm=%skill.6.sm% 
if %p2.res.sr%==6  set/a p1.res.sc=%p1.res.sv% * %skill.6.sc% / 10 
if %p2.res.sr%==6  set/a p1.res.sx=%p1.res.sv% * %skill.6.sx% / 10 
if %p2.res.sr%==6  set p1.res.sd=A 
if %p1.res.sr%==7  set/a p1.res.sm=%skill.7.sm% 
if %p1.res.sr%==7  set/a p1.res.sc=%p1.res.sv% * %skill.7.sc% / 10 
if %p1.res.sr%==7  set/a p1.res.sx=%p1.res.sv% * %skill.7.sx% / 10 
if %p1.res.sr%==7  set p1.res.sd=9 
if %p2.res.sr%==7  set/a p1.res.sm=%skill.7.sm% 
if %p2.res.sr%==7  set/a p1.res.sc=%p1.res.sv% * %skill.7.sc% / 10 
if %p2.res.sr%==7  set/a p1.res.sx=%p1.res.sv% * %skill.7.sx% / 10 
if %p2.res.sr%==7  set p1.res.sd=9 
if %p1.res.sr%==8  set/a p1.res.sm=%skill.8.sm% 
if %p1.res.sr%==8  set/a p1.res.sc=%p1.res.sv% * %skill.8.sc% / 10 
if %p1.res.sr%==8  set/a p1.res.sx=%p1.res.sv% * %skill.8.sx% / 10 
if %p1.res.sr%==8  set p1.res.sd=8 
if %p2.res.sr%==8  set/a p1.res.sm=%skill.8.sm% 
if %p2.res.sr%==8  set/a p1.res.sc=%p1.res.sv% * %skill.8.sc% / 10 
if %p2.res.sr%==8  set/a p1.res.sx=%p1.res.sv% * %skill.8.sx% / 10 
if %p2.res.sr%==8  set p1.res.sd=8 
if %p1.res.sr%==9  set/a p1.res.sm=%skill.9.sm% 
if %p1.res.sr%==9  set/a p1.res.sc=%p1.res.sv% * %skill.9.sc% / 10 
if %p1.res.sr%==9  set/a p1.res.sx=%p1.res.sv% * %skill.9.sx% / 10 
if %p1.res.sr%==9  set p1.res.sd=7 
if %p2.res.sr%==9  set/a p1.res.sm=%skill.9.sm% 
if %p2.res.sr%==9  set/a p1.res.sc=%p1.res.sv% * %skill.9.sc% / 10 
if %p2.res.sr%==9  set/a p1.res.sx=%p1.res.sv% * %skill.9.sx% / 10 
if %p2.res.sr%==9  set p1.res.sd=7 
if %p1.res.sr%==10  set/a p1.res.sm=%skill.10.sm% 
if %p1.res.sr%==10  set/a p1.res.sc=%p1.res.sv% * %skill.10.sc% / 10 
if %p1.res.sr%==10  set/a p1.res.sx=%p1.res.sv% * %skill.10.sx% / 10 
if %p1.res.sr%==10  set p1.res.sd=6 
if %p2.res.sr%==10  set/a p1.res.sm=%skill.10.sm% 
if %p2.res.sr%==10  set/a p1.res.sc=%p1.res.sv% * %skill.10.sc% / 10 
if %p2.res.sr%==10  set/a p1.res.sx=%p1.res.sv% * %skill.10.sx% / 10 
if %p2.res.sr%==10  set p1.res.sd=6 
if %p1.res.sr%==11  set/a p1.res.sm=%skill.11.sm% 
if %p1.res.sr%==11  set/a p1.res.sc=%p1.res.sv% * %skill.11.sc% / 10 
if %p1.res.sr%==11  set/a p1.res.sx=%p1.res.sv% * %skill.11.sx% / 10 
if %p1.res.sr%==11  set p1.res.sd=5 
if %p2.res.sr%==11  set/a p1.res.sm=%skill.11.sm% 
if %p2.res.sr%==11  set/a p1.res.sc=%p1.res.sv% * %skill.11.sc% / 10 
if %p2.res.sr%==11  set/a p1.res.sx=%p1.res.sv% * %skill.11.sx% / 10 
if %p2.res.sr%==11  set p1.res.sd=5 
if %p1.res.sr%==12  set/a p1.res.sm=%skill.12.sm% 
if %p1.res.sr%==12  set/a p1.res.sc=%p1.res.sv% * %skill.12.sc% / 10 
if %p1.res.sr%==12  set/a p1.res.sx=%p1.res.sv% * %skill.12.sx% / 10 
if %p1.res.sr%==12  set p1.res.sd=4 
if %p2.res.sr%==12  set/a p1.res.sm=%skill.12.sm% 
if %p2.res.sr%==12  set/a p1.res.sc=%p1.res.sv% * %skill.12.sc% / 10 
if %p2.res.sr%==12  set/a p1.res.sx=%p1.res.sv% * %skill.12.sx% / 10 
if %p2.res.sr%==12  set p1.res.sd=4 
if %p1.res.sr%==13  set/a p1.res.sm=%skill.13.sm% 
if %p1.res.sr%==13  set/a p1.res.sc=%p1.res.sv% * %skill.13.sc% / 10 
if %p1.res.sr%==13  set/a p1.res.sx=%p1.res.sv% * %skill.13.sx% / 10 
if %p1.res.sr%==13  set p1.res.sd=3 
if %p2.res.sr%==13  set/a p1.res.sm=%skill.13.sm% 
if %p2.res.sr%==13  set/a p1.res.sc=%p1.res.sv% * %skill.13.sc% / 10 
if %p2.res.sr%==13  set/a p1.res.sx=%p1.res.sv% * %skill.13.sx% / 10 
if %p2.res.sr%==13  set p1.res.sd=3 
if %p1.res.sr%==14  set/a p1.res.sm=%skill.14.sm% 
if %p1.res.sr%==14  set/a p1.res.sc=%p1.res.sv% * %skill.14.sc% / 10 
if %p1.res.sr%==14  set/a p1.res.sx=%p1.res.sv% * %skill.14.sx% / 10 
if %p1.res.sr%==14  set p1.res.sd=2 
if %p2.res.sr%==14  set/a p1.res.sm=%skill.14.sm% 
if %p2.res.sr%==14  set/a p1.res.sc=%p1.res.sv% * %skill.14.sc% / 10 
if %p2.res.sr%==14  set/a p1.res.sx=%p1.res.sv% * %skill.14.sx% / 10 
if %p2.res.sr%==14  set p1.res.sd=2 
if %p1.res.sr%==15  set/a p1.res.sm=%skill.15.sm% 
if %p1.res.sr%==15  set/a p1.res.sc=%p1.res.sv% * %skill.15.sc% / 10 
if %p1.res.sr%==15  set/a p1.res.sx=%p1.res.sv% * %skill.15.sx% / 10 
if %p1.res.sr%==15  set p1.res.sd=1 
if %p2.res.sr%==15  set/a p1.res.sm=%skill.15.sm% 
if %p2.res.sr%==15  set/a p1.res.sc=%p1.res.sv% * %skill.15.sc% / 10 
if %p2.res.sr%==15  set/a p1.res.sx=%p1.res.sv% * %skill.15.sx% / 10 
if %p2.res.sr%==15  set p1.res.sd=1 
 
if %p1.mgc.sr%==0  set/a p1.mgc.sm=%skill.0.sm% 
if %p1.mgc.sr%==0  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.0.sc% / 10 
if %p1.mgc.sr%==0  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.0.sx% / 10 
if %p1.mgc.sr%==0  set p1.mgc.sd=Novice 
if %p2.mgc.sr%==0  set/a p1.mgc.sm=%skill.0.sm% 
if %p2.mgc.sr%==0  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.0.sc% / 10 
if %p2.mgc.sr%==0  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.0.sx% / 10 
if %p2.mgc.sr%==0  set p1.mgc.sd=Novice 
if %p1.mgc.sr%==1  set/a p1.mgc.sm=%skill.1.sm% 
if %p1.mgc.sr%==1  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.1.sc% / 10 
if %p1.mgc.sr%==1  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.1.sx% / 10 
if %p1.mgc.sr%==1  set p1.mgc.sd=F 
if %p2.mgc.sr%==1  set/a p1.mgc.sm=%skill.1.sm% 
if %p2.mgc.sr%==1  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.1.sc% / 10 
if %p2.mgc.sr%==1  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.1.sx% / 10 
if %p2.mgc.sr%==1  set p1.mgc.sd=F 
if %p1.mgc.sr%==2  set/a p1.mgc.sm=%skill.2.sm% 
if %p1.mgc.sr%==2  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.2.sc% / 10 
if %p1.mgc.sr%==2  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.2.sx% / 10 
if %p1.mgc.sr%==2  set p1.mgc.sd=E 
if %p2.mgc.sr%==2  set/a p1.mgc.sm=%skill.2.sm% 
if %p2.mgc.sr%==2  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.2.sc% / 10 
if %p2.mgc.sr%==2  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.2.sx% / 10 
if %p2.mgc.sr%==2  set p1.mgc.sd=E 
if %p1.mgc.sr%==3  set/a p1.mgc.sm=%skill.3.sm% 
if %p1.mgc.sr%==3  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.3.sc% / 10 
if %p1.mgc.sr%==3  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.3.sx% / 10 
if %p1.mgc.sr%==3  set p1.mgc.sd=D 
if %p2.mgc.sr%==3  set/a p1.mgc.sm=%skill.3.sm% 
if %p2.mgc.sr%==3  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.3.sc% / 10 
if %p2.mgc.sr%==3  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.3.sx% / 10 
if %p2.mgc.sr%==3  set p1.mgc.sd=D 
if %p1.mgc.sr%==4  set/a p1.mgc.sm=%skill.4.sm% 
if %p1.mgc.sr%==4  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.4.sc% / 10 
if %p1.mgc.sr%==4  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.4.sx% / 10 
if %p1.mgc.sr%==4  set p1.mgc.sd=C 
if %p2.mgc.sr%==4  set/a p1.mgc.sm=%skill.4.sm% 
if %p2.mgc.sr%==4  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.4.sc% / 10 
if %p2.mgc.sr%==4  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.4.sx% / 10 
if %p2.mgc.sr%==4  set p1.mgc.sd=C 
if %p1.mgc.sr%==5  set/a p1.mgc.sm=%skill.5.sm% 
if %p1.mgc.sr%==5  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.5.sc% / 10 
if %p1.mgc.sr%==5  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.5.sx% / 10 
if %p1.mgc.sr%==5  set p1.mgc.sd=B 
if %p2.mgc.sr%==5  set/a p1.mgc.sm=%skill.5.sm% 
if %p2.mgc.sr%==5  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.5.sc% / 10 
if %p2.mgc.sr%==5  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.5.sx% / 10 
if %p2.mgc.sr%==5  set p1.mgc.sd=B 
if %p1.mgc.sr%==6  set/a p1.mgc.sm=%skill.6.sm% 
if %p1.mgc.sr%==6  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.6.sc% / 10 
if %p1.mgc.sr%==6  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.6.sx% / 10 
if %p1.mgc.sr%==6  set p1.mgc.sd=A 
if %p2.mgc.sr%==6  set/a p1.mgc.sm=%skill.6.sm% 
if %p2.mgc.sr%==6  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.6.sc% / 10 
if %p2.mgc.sr%==6  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.6.sx% / 10 
if %p2.mgc.sr%==6  set p1.mgc.sd=A 
if %p1.mgc.sr%==7  set/a p1.mgc.sm=%skill.7.sm% 
if %p1.mgc.sr%==7  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.7.sc% / 10 
if %p1.mgc.sr%==7  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.7.sx% / 10 
if %p1.mgc.sr%==7  set p1.mgc.sd=9 
if %p2.mgc.sr%==7  set/a p1.mgc.sm=%skill.7.sm% 
if %p2.mgc.sr%==7  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.7.sc% / 10 
if %p2.mgc.sr%==7  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.7.sx% / 10 
if %p2.mgc.sr%==7  set p1.mgc.sd=9 
if %p1.mgc.sr%==8  set/a p1.mgc.sm=%skill.8.sm% 
if %p1.mgc.sr%==8  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.8.sc% / 10 
if %p1.mgc.sr%==8  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.8.sx% / 10 
if %p1.mgc.sr%==8  set p1.mgc.sd=8 
if %p2.mgc.sr%==8  set/a p1.mgc.sm=%skill.8.sm% 
if %p2.mgc.sr%==8  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.8.sc% / 10 
if %p2.mgc.sr%==8  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.8.sx% / 10 
if %p2.mgc.sr%==8  set p1.mgc.sd=8 
if %p1.mgc.sr%==9  set/a p1.mgc.sm=%skill.9.sm% 
if %p1.mgc.sr%==9  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.9.sc% / 10 
if %p1.mgc.sr%==9  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.9.sx% / 10 
if %p1.mgc.sr%==9  set p1.mgc.sd=7 
if %p2.mgc.sr%==9  set/a p1.mgc.sm=%skill.9.sm% 
if %p2.mgc.sr%==9  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.9.sc% / 10 
if %p2.mgc.sr%==9  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.9.sx% / 10 
if %p2.mgc.sr%==9  set p1.mgc.sd=7 
if %p1.mgc.sr%==10  set/a p1.mgc.sm=%skill.10.sm% 
if %p1.mgc.sr%==10  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.10.sc% / 10 
if %p1.mgc.sr%==10  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.10.sx% / 10 
if %p1.mgc.sr%==10  set p1.mgc.sd=6 
if %p2.mgc.sr%==10  set/a p1.mgc.sm=%skill.10.sm% 
if %p2.mgc.sr%==10  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.10.sc% / 10 
if %p2.mgc.sr%==10  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.10.sx% / 10 
if %p2.mgc.sr%==10  set p1.mgc.sd=6 
if %p1.mgc.sr%==11  set/a p1.mgc.sm=%skill.11.sm% 
if %p1.mgc.sr%==11  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.11.sc% / 10 
if %p1.mgc.sr%==11  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.11.sx% / 10 
if %p1.mgc.sr%==11  set p1.mgc.sd=5 
if %p2.mgc.sr%==11  set/a p1.mgc.sm=%skill.11.sm% 
if %p2.mgc.sr%==11  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.11.sc% / 10 
if %p2.mgc.sr%==11  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.11.sx% / 10 
if %p2.mgc.sr%==11  set p1.mgc.sd=5 
if %p1.mgc.sr%==12  set/a p1.mgc.sm=%skill.12.sm% 
if %p1.mgc.sr%==12  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.12.sc% / 10 
if %p1.mgc.sr%==12  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.12.sx% / 10 
if %p1.mgc.sr%==12  set p1.mgc.sd=4 
if %p2.mgc.sr%==12  set/a p1.mgc.sm=%skill.12.sm% 
if %p2.mgc.sr%==12  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.12.sc% / 10 
if %p2.mgc.sr%==12  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.12.sx% / 10 
if %p2.mgc.sr%==12  set p1.mgc.sd=4 
if %p1.mgc.sr%==13  set/a p1.mgc.sm=%skill.13.sm% 
if %p1.mgc.sr%==13  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.13.sc% / 10 
if %p1.mgc.sr%==13  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.13.sx% / 10 
if %p1.mgc.sr%==13  set p1.mgc.sd=3 
if %p2.mgc.sr%==13  set/a p1.mgc.sm=%skill.13.sm% 
if %p2.mgc.sr%==13  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.13.sc% / 10 
if %p2.mgc.sr%==13  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.13.sx% / 10 
if %p2.mgc.sr%==13  set p1.mgc.sd=3 
if %p1.mgc.sr%==14  set/a p1.mgc.sm=%skill.14.sm% 
if %p1.mgc.sr%==14  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.14.sc% / 10 
if %p1.mgc.sr%==14  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.14.sx% / 10 
if %p1.mgc.sr%==14  set p1.mgc.sd=2 
if %p2.mgc.sr%==14  set/a p1.mgc.sm=%skill.14.sm% 
if %p2.mgc.sr%==14  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.14.sc% / 10 
if %p2.mgc.sr%==14  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.14.sx% / 10 
if %p2.mgc.sr%==14  set p1.mgc.sd=2 
if %p1.mgc.sr%==15  set/a p1.mgc.sm=%skill.15.sm% 
if %p1.mgc.sr%==15  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.15.sc% / 10 
if %p1.mgc.sr%==15  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.15.sx% / 10 
if %p1.mgc.sr%==15  set p1.mgc.sd=1 
if %p2.mgc.sr%==15  set/a p1.mgc.sm=%skill.15.sm% 
if %p2.mgc.sr%==15  set/a p1.mgc.sc=%p1.mgc.sv% * %skill.15.sc% / 10 
if %p2.mgc.sr%==15  set/a p1.mgc.sx=%p1.mgc.sv% * %skill.15.sx% / 10 
if %p2.mgc.sr%==15  set p1.mgc.sd=1 
 
if %p1.fus.sr%==0  set/a p1.fus.sm=%skill.0.sm% 
if %p1.fus.sr%==0  set/a p1.fus.sc=%p1.fus.sv% * %skill.0.sc% / 10 
if %p1.fus.sr%==0  set/a p1.fus.sx=%p1.fus.sv% * %skill.0.sx% / 10 
if %p1.fus.sr%==0  set p1.fus.sd=Novice 
if %p2.fus.sr%==0  set/a p1.fus.sm=%skill.0.sm% 
if %p2.fus.sr%==0  set/a p1.fus.sc=%p1.fus.sv% * %skill.0.sc% / 10 
if %p2.fus.sr%==0  set/a p1.fus.sx=%p1.fus.sv% * %skill.0.sx% / 10 
if %p2.fus.sr%==0  set p1.fus.sd=Novice 
if %p1.fus.sr%==1  set/a p1.fus.sm=%skill.1.sm% 
if %p1.fus.sr%==1  set/a p1.fus.sc=%p1.fus.sv% * %skill.1.sc% / 10 
if %p1.fus.sr%==1  set/a p1.fus.sx=%p1.fus.sv% * %skill.1.sx% / 10 
if %p1.fus.sr%==1  set p1.fus.sd=F 
if %p2.fus.sr%==1  set/a p1.fus.sm=%skill.1.sm% 
if %p2.fus.sr%==1  set/a p1.fus.sc=%p1.fus.sv% * %skill.1.sc% / 10 
if %p2.fus.sr%==1  set/a p1.fus.sx=%p1.fus.sv% * %skill.1.sx% / 10 
if %p2.fus.sr%==1  set p1.fus.sd=F 
if %p1.fus.sr%==2  set/a p1.fus.sm=%skill.2.sm% 
if %p1.fus.sr%==2  set/a p1.fus.sc=%p1.fus.sv% * %skill.2.sc% / 10 
if %p1.fus.sr%==2  set/a p1.fus.sx=%p1.fus.sv% * %skill.2.sx% / 10 
if %p1.fus.sr%==2  set p1.fus.sd=E 
if %p2.fus.sr%==2  set/a p1.fus.sm=%skill.2.sm% 
if %p2.fus.sr%==2  set/a p1.fus.sc=%p1.fus.sv% * %skill.2.sc% / 10 
if %p2.fus.sr%==2  set/a p1.fus.sx=%p1.fus.sv% * %skill.2.sx% / 10 
if %p2.fus.sr%==2  set p1.fus.sd=E 
if %p1.fus.sr%==3  set/a p1.fus.sm=%skill.3.sm% 
if %p1.fus.sr%==3  set/a p1.fus.sc=%p1.fus.sv% * %skill.3.sc% / 10 
if %p1.fus.sr%==3  set/a p1.fus.sx=%p1.fus.sv% * %skill.3.sx% / 10 
if %p1.fus.sr%==3  set p1.fus.sd=D 
if %p2.fus.sr%==3  set/a p1.fus.sm=%skill.3.sm% 
if %p2.fus.sr%==3  set/a p1.fus.sc=%p1.fus.sv% * %skill.3.sc% / 10 
if %p2.fus.sr%==3  set/a p1.fus.sx=%p1.fus.sv% * %skill.3.sx% / 10 
if %p2.fus.sr%==3  set p1.fus.sd=D 
if %p1.fus.sr%==4  set/a p1.fus.sm=%skill.4.sm% 
if %p1.fus.sr%==4  set/a p1.fus.sc=%p1.fus.sv% * %skill.4.sc% / 10 
if %p1.fus.sr%==4  set/a p1.fus.sx=%p1.fus.sv% * %skill.4.sx% / 10 
if %p1.fus.sr%==4  set p1.fus.sd=C 
if %p2.fus.sr%==4  set/a p1.fus.sm=%skill.4.sm% 
if %p2.fus.sr%==4  set/a p1.fus.sc=%p1.fus.sv% * %skill.4.sc% / 10 
if %p2.fus.sr%==4  set/a p1.fus.sx=%p1.fus.sv% * %skill.4.sx% / 10 
if %p2.fus.sr%==4  set p1.fus.sd=C 
if %p1.fus.sr%==5  set/a p1.fus.sm=%skill.5.sm% 
if %p1.fus.sr%==5  set/a p1.fus.sc=%p1.fus.sv% * %skill.5.sc% / 10 
if %p1.fus.sr%==5  set/a p1.fus.sx=%p1.fus.sv% * %skill.5.sx% / 10 
if %p1.fus.sr%==5  set p1.fus.sd=B 
if %p2.fus.sr%==5  set/a p1.fus.sm=%skill.5.sm% 
if %p2.fus.sr%==5  set/a p1.fus.sc=%p1.fus.sv% * %skill.5.sc% / 10 
if %p2.fus.sr%==5  set/a p1.fus.sx=%p1.fus.sv% * %skill.5.sx% / 10 
if %p2.fus.sr%==5  set p1.fus.sd=B 
if %p1.fus.sr%==6  set/a p1.fus.sm=%skill.6.sm% 
if %p1.fus.sr%==6  set/a p1.fus.sc=%p1.fus.sv% * %skill.6.sc% / 10 
if %p1.fus.sr%==6  set/a p1.fus.sx=%p1.fus.sv% * %skill.6.sx% / 10 
if %p1.fus.sr%==6  set p1.fus.sd=A 
if %p2.fus.sr%==6  set/a p1.fus.sm=%skill.6.sm% 
if %p2.fus.sr%==6  set/a p1.fus.sc=%p1.fus.sv% * %skill.6.sc% / 10 
if %p2.fus.sr%==6  set/a p1.fus.sx=%p1.fus.sv% * %skill.6.sx% / 10 
if %p2.fus.sr%==6  set p1.fus.sd=A 
if %p1.fus.sr%==7  set/a p1.fus.sm=%skill.7.sm% 
if %p1.fus.sr%==7  set/a p1.fus.sc=%p1.fus.sv% * %skill.7.sc% / 10 
if %p1.fus.sr%==7  set/a p1.fus.sx=%p1.fus.sv% * %skill.7.sx% / 10 
if %p1.fus.sr%==7  set p1.fus.sd=9 
if %p2.fus.sr%==7  set/a p1.fus.sm=%skill.7.sm% 
if %p2.fus.sr%==7  set/a p1.fus.sc=%p1.fus.sv% * %skill.7.sc% / 10 
if %p2.fus.sr%==7  set/a p1.fus.sx=%p1.fus.sv% * %skill.7.sx% / 10 
if %p2.fus.sr%==7  set p1.fus.sd=9 
if %p1.fus.sr%==8  set/a p1.fus.sm=%skill.8.sm% 
if %p1.fus.sr%==8  set/a p1.fus.sc=%p1.fus.sv% * %skill.8.sc% / 10 
if %p1.fus.sr%==8  set/a p1.fus.sx=%p1.fus.sv% * %skill.8.sx% / 10 
if %p1.fus.sr%==8  set p1.fus.sd=8 
if %p2.fus.sr%==8  set/a p1.fus.sm=%skill.8.sm% 
if %p2.fus.sr%==8  set/a p1.fus.sc=%p1.fus.sv% * %skill.8.sc% / 10 
if %p2.fus.sr%==8  set/a p1.fus.sx=%p1.fus.sv% * %skill.8.sx% / 10 
if %p2.fus.sr%==8  set p1.fus.sd=8 
if %p1.fus.sr%==9  set/a p1.fus.sm=%skill.9.sm% 
if %p1.fus.sr%==9  set/a p1.fus.sc=%p1.fus.sv% * %skill.9.sc% / 10 
if %p1.fus.sr%==9  set/a p1.fus.sx=%p1.fus.sv% * %skill.9.sx% / 10 
if %p1.fus.sr%==9  set p1.fus.sd=7 
if %p2.fus.sr%==9  set/a p1.fus.sm=%skill.9.sm% 
if %p2.fus.sr%==9  set/a p1.fus.sc=%p1.fus.sv% * %skill.9.sc% / 10 
if %p2.fus.sr%==9  set/a p1.fus.sx=%p1.fus.sv% * %skill.9.sx% / 10 
if %p2.fus.sr%==9  set p1.fus.sd=7 
if %p1.fus.sr%==10  set/a p1.fus.sm=%skill.10.sm% 
if %p1.fus.sr%==10  set/a p1.fus.sc=%p1.fus.sv% * %skill.10.sc% / 10 
if %p1.fus.sr%==10  set/a p1.fus.sx=%p1.fus.sv% * %skill.10.sx% / 10 
if %p1.fus.sr%==10  set p1.fus.sd=6 
if %p2.fus.sr%==10  set/a p1.fus.sm=%skill.10.sm% 
if %p2.fus.sr%==10  set/a p1.fus.sc=%p1.fus.sv% * %skill.10.sc% / 10 
if %p2.fus.sr%==10  set/a p1.fus.sx=%p1.fus.sv% * %skill.10.sx% / 10 
if %p2.fus.sr%==10  set p1.fus.sd=6 
if %p1.fus.sr%==11  set/a p1.fus.sm=%skill.11.sm% 
if %p1.fus.sr%==11  set/a p1.fus.sc=%p1.fus.sv% * %skill.11.sc% / 10 
if %p1.fus.sr%==11  set/a p1.fus.sx=%p1.fus.sv% * %skill.11.sx% / 10 
if %p1.fus.sr%==11  set p1.fus.sd=5 
if %p2.fus.sr%==11  set/a p1.fus.sm=%skill.11.sm% 
if %p2.fus.sr%==11  set/a p1.fus.sc=%p1.fus.sv% * %skill.11.sc% / 10 
if %p2.fus.sr%==11  set/a p1.fus.sx=%p1.fus.sv% * %skill.11.sx% / 10 
if %p2.fus.sr%==11  set p1.fus.sd=5 
if %p1.fus.sr%==12  set/a p1.fus.sm=%skill.12.sm% 
if %p1.fus.sr%==12  set/a p1.fus.sc=%p1.fus.sv% * %skill.12.sc% / 10 
if %p1.fus.sr%==12  set/a p1.fus.sx=%p1.fus.sv% * %skill.12.sx% / 10 
if %p1.fus.sr%==12  set p1.fus.sd=4 
if %p2.fus.sr%==12  set/a p1.fus.sm=%skill.12.sm% 
if %p2.fus.sr%==12  set/a p1.fus.sc=%p1.fus.sv% * %skill.12.sc% / 10 
if %p2.fus.sr%==12  set/a p1.fus.sx=%p1.fus.sv% * %skill.12.sx% / 10 
if %p2.fus.sr%==12  set p1.fus.sd=4 
if %p1.fus.sr%==13  set/a p1.fus.sm=%skill.13.sm% 
if %p1.fus.sr%==13  set/a p1.fus.sc=%p1.fus.sv% * %skill.13.sc% / 10 
if %p1.fus.sr%==13  set/a p1.fus.sx=%p1.fus.sv% * %skill.13.sx% / 10 
if %p1.fus.sr%==13  set p1.fus.sd=3 
if %p2.fus.sr%==13  set/a p1.fus.sm=%skill.13.sm% 
if %p2.fus.sr%==13  set/a p1.fus.sc=%p1.fus.sv% * %skill.13.sc% / 10 
if %p2.fus.sr%==13  set/a p1.fus.sx=%p1.fus.sv% * %skill.13.sx% / 10 
if %p2.fus.sr%==13  set p1.fus.sd=3 
if %p1.fus.sr%==14  set/a p1.fus.sm=%skill.14.sm% 
if %p1.fus.sr%==14  set/a p1.fus.sc=%p1.fus.sv% * %skill.14.sc% / 10 
if %p1.fus.sr%==14  set/a p1.fus.sx=%p1.fus.sv% * %skill.14.sx% / 10 
if %p1.fus.sr%==14  set p1.fus.sd=2 
if %p2.fus.sr%==14  set/a p1.fus.sm=%skill.14.sm% 
if %p2.fus.sr%==14  set/a p1.fus.sc=%p1.fus.sv% * %skill.14.sc% / 10 
if %p2.fus.sr%==14  set/a p1.fus.sx=%p1.fus.sv% * %skill.14.sx% / 10 
if %p2.fus.sr%==14  set p1.fus.sd=2 
if %p1.fus.sr%==15  set/a p1.fus.sm=%skill.15.sm% 
if %p1.fus.sr%==15  set/a p1.fus.sc=%p1.fus.sv% * %skill.15.sc% / 10 
if %p1.fus.sr%==15  set/a p1.fus.sx=%p1.fus.sv% * %skill.15.sx% / 10 
if %p1.fus.sr%==15  set p1.fus.sd=1 
if %p2.fus.sr%==15  set/a p1.fus.sm=%skill.15.sm% 
if %p2.fus.sr%==15  set/a p1.fus.sc=%p1.fus.sv% * %skill.15.sc% / 10 
if %p2.fus.sr%==15  set/a p1.fus.sx=%p1.fus.sv% * %skill.15.sx% / 10 
if %p2.fus.sr%==15  set p1.fus.sd=1 

call:funct.loadbar 6 Loading Skills
 
if %p1.sok.sr%==0  set/a p1.sok.sm=%skill.0.sm% 
if %p1.sok.sr%==0  set/a p1.sok.sc=%p1.sok.sv% * %skill.0.sc% / 10 
if %p1.sok.sr%==0  set/a p1.sok.sx=%p1.sok.sv% * %skill.0.sx% / 10 
if %p1.sok.sr%==0  set p1.sok.sd=Novice 
if %p2.sok.sr%==0  set/a p1.sok.sm=%skill.0.sm% 
if %p2.sok.sr%==0  set/a p1.sok.sc=%p1.sok.sv% * %skill.0.sc% / 10 
if %p2.sok.sr%==0  set/a p1.sok.sx=%p1.sok.sv% * %skill.0.sx% / 10 
if %p2.sok.sr%==0  set p1.sok.sd=Novice 
if %p1.sok.sr%==1  set/a p1.sok.sm=%skill.1.sm% 
if %p1.sok.sr%==1  set/a p1.sok.sc=%p1.sok.sv% * %skill.1.sc% / 10 
if %p1.sok.sr%==1  set/a p1.sok.sx=%p1.sok.sv% * %skill.1.sx% / 10 
if %p1.sok.sr%==1  set p1.sok.sd=F 
if %p2.sok.sr%==1  set/a p1.sok.sm=%skill.1.sm% 
if %p2.sok.sr%==1  set/a p1.sok.sc=%p1.sok.sv% * %skill.1.sc% / 10 
if %p2.sok.sr%==1  set/a p1.sok.sx=%p1.sok.sv% * %skill.1.sx% / 10 
if %p2.sok.sr%==1  set p1.sok.sd=F 
if %p1.sok.sr%==2  set/a p1.sok.sm=%skill.2.sm% 
if %p1.sok.sr%==2  set/a p1.sok.sc=%p1.sok.sv% * %skill.2.sc% / 10 
if %p1.sok.sr%==2  set/a p1.sok.sx=%p1.sok.sv% * %skill.2.sx% / 10 
if %p1.sok.sr%==2  set p1.sok.sd=E 
if %p2.sok.sr%==2  set/a p1.sok.sm=%skill.2.sm% 
if %p2.sok.sr%==2  set/a p1.sok.sc=%p1.sok.sv% * %skill.2.sc% / 10 
if %p2.sok.sr%==2  set/a p1.sok.sx=%p1.sok.sv% * %skill.2.sx% / 10 
if %p2.sok.sr%==2  set p1.sok.sd=E 
if %p1.sok.sr%==3  set/a p1.sok.sm=%skill.3.sm% 
if %p1.sok.sr%==3  set/a p1.sok.sc=%p1.sok.sv% * %skill.3.sc% / 10 
if %p1.sok.sr%==3  set/a p1.sok.sx=%p1.sok.sv% * %skill.3.sx% / 10 
if %p1.sok.sr%==3  set p1.sok.sd=D 
if %p2.sok.sr%==3  set/a p1.sok.sm=%skill.3.sm% 
if %p2.sok.sr%==3  set/a p1.sok.sc=%p1.sok.sv% * %skill.3.sc% / 10 
if %p2.sok.sr%==3  set/a p1.sok.sx=%p1.sok.sv% * %skill.3.sx% / 10 
if %p2.sok.sr%==3  set p1.sok.sd=D 
if %p1.sok.sr%==4  set/a p1.sok.sm=%skill.4.sm% 
if %p1.sok.sr%==4  set/a p1.sok.sc=%p1.sok.sv% * %skill.4.sc% / 10 
if %p1.sok.sr%==4  set/a p1.sok.sx=%p1.sok.sv% * %skill.4.sx% / 10 
if %p1.sok.sr%==4  set p1.sok.sd=C 
if %p2.sok.sr%==4  set/a p1.sok.sm=%skill.4.sm% 
if %p2.sok.sr%==4  set/a p1.sok.sc=%p1.sok.sv% * %skill.4.sc% / 10 
if %p2.sok.sr%==4  set/a p1.sok.sx=%p1.sok.sv% * %skill.4.sx% / 10 
if %p2.sok.sr%==4  set p1.sok.sd=C 
if %p1.sok.sr%==5  set/a p1.sok.sm=%skill.5.sm% 
if %p1.sok.sr%==5  set/a p1.sok.sc=%p1.sok.sv% * %skill.5.sc% / 10 
if %p1.sok.sr%==5  set/a p1.sok.sx=%p1.sok.sv% * %skill.5.sx% / 10 
if %p1.sok.sr%==5  set p1.sok.sd=B 
if %p2.sok.sr%==5  set/a p1.sok.sm=%skill.5.sm% 
if %p2.sok.sr%==5  set/a p1.sok.sc=%p1.sok.sv% * %skill.5.sc% / 10 
if %p2.sok.sr%==5  set/a p1.sok.sx=%p1.sok.sv% * %skill.5.sx% / 10 
if %p2.sok.sr%==5  set p1.sok.sd=B 
if %p1.sok.sr%==6  set/a p1.sok.sm=%skill.6.sm% 
if %p1.sok.sr%==6  set/a p1.sok.sc=%p1.sok.sv% * %skill.6.sc% / 10 
if %p1.sok.sr%==6  set/a p1.sok.sx=%p1.sok.sv% * %skill.6.sx% / 10 
if %p1.sok.sr%==6  set p1.sok.sd=A 
if %p2.sok.sr%==6  set/a p1.sok.sm=%skill.6.sm% 
if %p2.sok.sr%==6  set/a p1.sok.sc=%p1.sok.sv% * %skill.6.sc% / 10 
if %p2.sok.sr%==6  set/a p1.sok.sx=%p1.sok.sv% * %skill.6.sx% / 10 
if %p2.sok.sr%==6  set p1.sok.sd=A 
if %p1.sok.sr%==7  set/a p1.sok.sm=%skill.7.sm% 
if %p1.sok.sr%==7  set/a p1.sok.sc=%p1.sok.sv% * %skill.7.sc% / 10 
if %p1.sok.sr%==7  set/a p1.sok.sx=%p1.sok.sv% * %skill.7.sx% / 10 
if %p1.sok.sr%==7  set p1.sok.sd=9 
if %p2.sok.sr%==7  set/a p1.sok.sm=%skill.7.sm% 
if %p2.sok.sr%==7  set/a p1.sok.sc=%p1.sok.sv% * %skill.7.sc% / 10 
if %p2.sok.sr%==7  set/a p1.sok.sx=%p1.sok.sv% * %skill.7.sx% / 10 
if %p2.sok.sr%==7  set p1.sok.sd=9 
if %p1.sok.sr%==8  set/a p1.sok.sm=%skill.8.sm% 
if %p1.sok.sr%==8  set/a p1.sok.sc=%p1.sok.sv% * %skill.8.sc% / 10 
if %p1.sok.sr%==8  set/a p1.sok.sx=%p1.sok.sv% * %skill.8.sx% / 10 
if %p1.sok.sr%==8  set p1.sok.sd=8 
if %p2.sok.sr%==8  set/a p1.sok.sm=%skill.8.sm% 
if %p2.sok.sr%==8  set/a p1.sok.sc=%p1.sok.sv% * %skill.8.sc% / 10 
if %p2.sok.sr%==8  set/a p1.sok.sx=%p1.sok.sv% * %skill.8.sx% / 10 
if %p2.sok.sr%==8  set p1.sok.sd=8 
if %p1.sok.sr%==9  set/a p1.sok.sm=%skill.9.sm% 
if %p1.sok.sr%==9  set/a p1.sok.sc=%p1.sok.sv% * %skill.9.sc% / 10 
if %p1.sok.sr%==9  set/a p1.sok.sx=%p1.sok.sv% * %skill.9.sx% / 10 
if %p1.sok.sr%==9  set p1.sok.sd=7 
if %p2.sok.sr%==9  set/a p1.sok.sm=%skill.9.sm% 
if %p2.sok.sr%==9  set/a p1.sok.sc=%p1.sok.sv% * %skill.9.sc% / 10 
if %p2.sok.sr%==9  set/a p1.sok.sx=%p1.sok.sv% * %skill.9.sx% / 10 
if %p2.sok.sr%==9  set p1.sok.sd=7 
if %p1.sok.sr%==10  set/a p1.sok.sm=%skill.10.sm% 
if %p1.sok.sr%==10  set/a p1.sok.sc=%p1.sok.sv% * %skill.10.sc% / 10 
if %p1.sok.sr%==10  set/a p1.sok.sx=%p1.sok.sv% * %skill.10.sx% / 10 
if %p1.sok.sr%==10  set p1.sok.sd=6 
if %p2.sok.sr%==10  set/a p1.sok.sm=%skill.10.sm% 
if %p2.sok.sr%==10  set/a p1.sok.sc=%p1.sok.sv% * %skill.10.sc% / 10 
if %p2.sok.sr%==10  set/a p1.sok.sx=%p1.sok.sv% * %skill.10.sx% / 10 
if %p2.sok.sr%==10  set p1.sok.sd=6 
if %p1.sok.sr%==11  set/a p1.sok.sm=%skill.11.sm% 
if %p1.sok.sr%==11  set/a p1.sok.sc=%p1.sok.sv% * %skill.11.sc% / 10 
if %p1.sok.sr%==11  set/a p1.sok.sx=%p1.sok.sv% * %skill.11.sx% / 10 
if %p1.sok.sr%==11  set p1.sok.sd=5 
if %p2.sok.sr%==11  set/a p1.sok.sm=%skill.11.sm% 
if %p2.sok.sr%==11  set/a p1.sok.sc=%p1.sok.sv% * %skill.11.sc% / 10 
if %p2.sok.sr%==11  set/a p1.sok.sx=%p1.sok.sv% * %skill.11.sx% / 10 
if %p2.sok.sr%==11  set p1.sok.sd=5 
if %p1.sok.sr%==12  set/a p1.sok.sm=%skill.12.sm% 
if %p1.sok.sr%==12  set/a p1.sok.sc=%p1.sok.sv% * %skill.12.sc% / 10 
if %p1.sok.sr%==12  set/a p1.sok.sx=%p1.sok.sv% * %skill.12.sx% / 10 
if %p1.sok.sr%==12  set p1.sok.sd=4 
if %p2.sok.sr%==12  set/a p1.sok.sm=%skill.12.sm% 
if %p2.sok.sr%==12  set/a p1.sok.sc=%p1.sok.sv% * %skill.12.sc% / 10 
if %p2.sok.sr%==12  set/a p1.sok.sx=%p1.sok.sv% * %skill.12.sx% / 10 
if %p2.sok.sr%==12  set p1.sok.sd=4 
if %p1.sok.sr%==13  set/a p1.sok.sm=%skill.13.sm% 
if %p1.sok.sr%==13  set/a p1.sok.sc=%p1.sok.sv% * %skill.13.sc% / 10 
if %p1.sok.sr%==13  set/a p1.sok.sx=%p1.sok.sv% * %skill.13.sx% / 10 
if %p1.sok.sr%==13  set p1.sok.sd=3 
if %p2.sok.sr%==13  set/a p1.sok.sm=%skill.13.sm% 
if %p2.sok.sr%==13  set/a p1.sok.sc=%p1.sok.sv% * %skill.13.sc% / 10 
if %p2.sok.sr%==13  set/a p1.sok.sx=%p1.sok.sv% * %skill.13.sx% / 10 
if %p2.sok.sr%==13  set p1.sok.sd=3 
if %p1.sok.sr%==14  set/a p1.sok.sm=%skill.14.sm% 
if %p1.sok.sr%==14  set/a p1.sok.sc=%p1.sok.sv% * %skill.14.sc% / 10 
if %p1.sok.sr%==14  set/a p1.sok.sx=%p1.sok.sv% * %skill.14.sx% / 10 
if %p1.sok.sr%==14  set p1.sok.sd=2 
if %p2.sok.sr%==14  set/a p1.sok.sm=%skill.14.sm% 
if %p2.sok.sr%==14  set/a p1.sok.sc=%p1.sok.sv% * %skill.14.sc% / 10 
if %p2.sok.sr%==14  set/a p1.sok.sx=%p1.sok.sv% * %skill.14.sx% / 10 
if %p2.sok.sr%==14  set p1.sok.sd=2 
if %p1.sok.sr%==15  set/a p1.sok.sm=%skill.15.sm% 
if %p1.sok.sr%==15  set/a p1.sok.sc=%p1.sok.sv% * %skill.15.sc% / 10 
if %p1.sok.sr%==15  set/a p1.sok.sx=%p1.sok.sv% * %skill.15.sx% / 10 
if %p1.sok.sr%==15  set p1.sok.sd=1 
if %p2.sok.sr%==15  set/a p1.sok.sm=%skill.15.sm% 
if %p2.sok.sr%==15  set/a p1.sok.sc=%p1.sok.sv% * %skill.15.sc% / 10 
if %p2.sok.sr%==15  set/a p1.sok.sx=%p1.sok.sv% * %skill.15.sx% / 10 
if %p2.sok.sr%==15  set p1.sok.sd=1 
 
if %p1.lig.sr%==0  set/a p1.lig.sm=%skill.0.sm% 
if %p1.lig.sr%==0  set/a p1.lig.sc=%p1.lig.sv% * %skill.0.sc% / 10 
if %p1.lig.sr%==0  set/a p1.lig.sx=%p1.lig.sv% * %skill.0.sx% / 10 
if %p1.lig.sr%==0  set p1.lig.sd=Novice 
if %p2.lig.sr%==0  set/a p1.lig.sm=%skill.0.sm% 
if %p2.lig.sr%==0  set/a p1.lig.sc=%p1.lig.sv% * %skill.0.sc% / 10 
if %p2.lig.sr%==0  set/a p1.lig.sx=%p1.lig.sv% * %skill.0.sx% / 10 
if %p2.lig.sr%==0  set p1.lig.sd=Novice 
if %p1.lig.sr%==1  set/a p1.lig.sm=%skill.1.sm% 
if %p1.lig.sr%==1  set/a p1.lig.sc=%p1.lig.sv% * %skill.1.sc% / 10 
if %p1.lig.sr%==1  set/a p1.lig.sx=%p1.lig.sv% * %skill.1.sx% / 10 
if %p1.lig.sr%==1  set p1.lig.sd=F 
if %p2.lig.sr%==1  set/a p1.lig.sm=%skill.1.sm% 
if %p2.lig.sr%==1  set/a p1.lig.sc=%p1.lig.sv% * %skill.1.sc% / 10 
if %p2.lig.sr%==1  set/a p1.lig.sx=%p1.lig.sv% * %skill.1.sx% / 10 
if %p2.lig.sr%==1  set p1.lig.sd=F 
if %p1.lig.sr%==2  set/a p1.lig.sm=%skill.2.sm% 
if %p1.lig.sr%==2  set/a p1.lig.sc=%p1.lig.sv% * %skill.2.sc% / 10 
if %p1.lig.sr%==2  set/a p1.lig.sx=%p1.lig.sv% * %skill.2.sx% / 10 
if %p1.lig.sr%==2  set p1.lig.sd=E 
if %p2.lig.sr%==2  set/a p1.lig.sm=%skill.2.sm% 
if %p2.lig.sr%==2  set/a p1.lig.sc=%p1.lig.sv% * %skill.2.sc% / 10 
if %p2.lig.sr%==2  set/a p1.lig.sx=%p1.lig.sv% * %skill.2.sx% / 10 
if %p2.lig.sr%==2  set p1.lig.sd=E 
if %p1.lig.sr%==3  set/a p1.lig.sm=%skill.3.sm% 
if %p1.lig.sr%==3  set/a p1.lig.sc=%p1.lig.sv% * %skill.3.sc% / 10 
if %p1.lig.sr%==3  set/a p1.lig.sx=%p1.lig.sv% * %skill.3.sx% / 10 
if %p1.lig.sr%==3  set p1.lig.sd=D 
if %p2.lig.sr%==3  set/a p1.lig.sm=%skill.3.sm% 
if %p2.lig.sr%==3  set/a p1.lig.sc=%p1.lig.sv% * %skill.3.sc% / 10 
if %p2.lig.sr%==3  set/a p1.lig.sx=%p1.lig.sv% * %skill.3.sx% / 10 
if %p2.lig.sr%==3  set p1.lig.sd=D 
if %p1.lig.sr%==4  set/a p1.lig.sm=%skill.4.sm% 
if %p1.lig.sr%==4  set/a p1.lig.sc=%p1.lig.sv% * %skill.4.sc% / 10 
if %p1.lig.sr%==4  set/a p1.lig.sx=%p1.lig.sv% * %skill.4.sx% / 10 
if %p1.lig.sr%==4  set p1.lig.sd=C 
if %p2.lig.sr%==4  set/a p1.lig.sm=%skill.4.sm% 
if %p2.lig.sr%==4  set/a p1.lig.sc=%p1.lig.sv% * %skill.4.sc% / 10 
if %p2.lig.sr%==4  set/a p1.lig.sx=%p1.lig.sv% * %skill.4.sx% / 10 
if %p2.lig.sr%==4  set p1.lig.sd=C 
if %p1.lig.sr%==5  set/a p1.lig.sm=%skill.5.sm% 
if %p1.lig.sr%==5  set/a p1.lig.sc=%p1.lig.sv% * %skill.5.sc% / 10 
if %p1.lig.sr%==5  set/a p1.lig.sx=%p1.lig.sv% * %skill.5.sx% / 10 
if %p1.lig.sr%==5  set p1.lig.sd=B 
if %p2.lig.sr%==5  set/a p1.lig.sm=%skill.5.sm% 
if %p2.lig.sr%==5  set/a p1.lig.sc=%p1.lig.sv% * %skill.5.sc% / 10 
if %p2.lig.sr%==5  set/a p1.lig.sx=%p1.lig.sv% * %skill.5.sx% / 10 
if %p2.lig.sr%==5  set p1.lig.sd=B 
if %p1.lig.sr%==6  set/a p1.lig.sm=%skill.6.sm% 
if %p1.lig.sr%==6  set/a p1.lig.sc=%p1.lig.sv% * %skill.6.sc% / 10 
if %p1.lig.sr%==6  set/a p1.lig.sx=%p1.lig.sv% * %skill.6.sx% / 10 
if %p1.lig.sr%==6  set p1.lig.sd=A 
if %p2.lig.sr%==6  set/a p1.lig.sm=%skill.6.sm% 
if %p2.lig.sr%==6  set/a p1.lig.sc=%p1.lig.sv% * %skill.6.sc% / 10 
if %p2.lig.sr%==6  set/a p1.lig.sx=%p1.lig.sv% * %skill.6.sx% / 10 
if %p2.lig.sr%==6  set p1.lig.sd=A 
if %p1.lig.sr%==7  set/a p1.lig.sm=%skill.7.sm% 
if %p1.lig.sr%==7  set/a p1.lig.sc=%p1.lig.sv% * %skill.7.sc% / 10 
if %p1.lig.sr%==7  set/a p1.lig.sx=%p1.lig.sv% * %skill.7.sx% / 10 
if %p1.lig.sr%==7  set p1.lig.sd=9 
if %p2.lig.sr%==7  set/a p1.lig.sm=%skill.7.sm% 
if %p2.lig.sr%==7  set/a p1.lig.sc=%p1.lig.sv% * %skill.7.sc% / 10 
if %p2.lig.sr%==7  set/a p1.lig.sx=%p1.lig.sv% * %skill.7.sx% / 10 
if %p2.lig.sr%==7  set p1.lig.sd=9 
if %p1.lig.sr%==8  set/a p1.lig.sm=%skill.8.sm% 
if %p1.lig.sr%==8  set/a p1.lig.sc=%p1.lig.sv% * %skill.8.sc% / 10 
if %p1.lig.sr%==8  set/a p1.lig.sx=%p1.lig.sv% * %skill.8.sx% / 10 
if %p1.lig.sr%==8  set p1.lig.sd=8 
if %p2.lig.sr%==8  set/a p1.lig.sm=%skill.8.sm% 
if %p2.lig.sr%==8  set/a p1.lig.sc=%p1.lig.sv% * %skill.8.sc% / 10 
if %p2.lig.sr%==8  set/a p1.lig.sx=%p1.lig.sv% * %skill.8.sx% / 10 
if %p2.lig.sr%==8  set p1.lig.sd=8 
if %p1.lig.sr%==9  set/a p1.lig.sm=%skill.9.sm% 
if %p1.lig.sr%==9  set/a p1.lig.sc=%p1.lig.sv% * %skill.9.sc% / 10 
if %p1.lig.sr%==9  set/a p1.lig.sx=%p1.lig.sv% * %skill.9.sx% / 10 
if %p1.lig.sr%==9  set p1.lig.sd=7 
if %p2.lig.sr%==9  set/a p1.lig.sm=%skill.9.sm% 
if %p2.lig.sr%==9  set/a p1.lig.sc=%p1.lig.sv% * %skill.9.sc% / 10 
if %p2.lig.sr%==9  set/a p1.lig.sx=%p1.lig.sv% * %skill.9.sx% / 10 
if %p2.lig.sr%==9  set p1.lig.sd=7 
if %p1.lig.sr%==10  set/a p1.lig.sm=%skill.10.sm% 
if %p1.lig.sr%==10  set/a p1.lig.sc=%p1.lig.sv% * %skill.10.sc% / 10 
if %p1.lig.sr%==10  set/a p1.lig.sx=%p1.lig.sv% * %skill.10.sx% / 10 
if %p1.lig.sr%==10  set p1.lig.sd=6 
if %p2.lig.sr%==10  set/a p1.lig.sm=%skill.10.sm% 
if %p2.lig.sr%==10  set/a p1.lig.sc=%p1.lig.sv% * %skill.10.sc% / 10 
if %p2.lig.sr%==10  set/a p1.lig.sx=%p1.lig.sv% * %skill.10.sx% / 10 
if %p2.lig.sr%==10  set p1.lig.sd=6 
if %p1.lig.sr%==11  set/a p1.lig.sm=%skill.11.sm% 
if %p1.lig.sr%==11  set/a p1.lig.sc=%p1.lig.sv% * %skill.11.sc% / 10 
if %p1.lig.sr%==11  set/a p1.lig.sx=%p1.lig.sv% * %skill.11.sx% / 10 
if %p1.lig.sr%==11  set p1.lig.sd=5 
if %p2.lig.sr%==11  set/a p1.lig.sm=%skill.11.sm% 
if %p2.lig.sr%==11  set/a p1.lig.sc=%p1.lig.sv% * %skill.11.sc% / 10 
if %p2.lig.sr%==11  set/a p1.lig.sx=%p1.lig.sv% * %skill.11.sx% / 10 
if %p2.lig.sr%==11  set p1.lig.sd=5 
if %p1.lig.sr%==12  set/a p1.lig.sm=%skill.12.sm% 
if %p1.lig.sr%==12  set/a p1.lig.sc=%p1.lig.sv% * %skill.12.sc% / 10 
if %p1.lig.sr%==12  set/a p1.lig.sx=%p1.lig.sv% * %skill.12.sx% / 10 
if %p1.lig.sr%==12  set p1.lig.sd=4 
if %p2.lig.sr%==12  set/a p1.lig.sm=%skill.12.sm% 
if %p2.lig.sr%==12  set/a p1.lig.sc=%p1.lig.sv% * %skill.12.sc% / 10 
if %p2.lig.sr%==12  set/a p1.lig.sx=%p1.lig.sv% * %skill.12.sx% / 10 
if %p2.lig.sr%==12  set p1.lig.sd=4 
if %p1.lig.sr%==13  set/a p1.lig.sm=%skill.13.sm% 
if %p1.lig.sr%==13  set/a p1.lig.sc=%p1.lig.sv% * %skill.13.sc% / 10 
if %p1.lig.sr%==13  set/a p1.lig.sx=%p1.lig.sv% * %skill.13.sx% / 10 
if %p1.lig.sr%==13  set p1.lig.sd=3 
if %p2.lig.sr%==13  set/a p1.lig.sm=%skill.13.sm% 
if %p2.lig.sr%==13  set/a p1.lig.sc=%p1.lig.sv% * %skill.13.sc% / 10 
if %p2.lig.sr%==13  set/a p1.lig.sx=%p1.lig.sv% * %skill.13.sx% / 10 
if %p2.lig.sr%==13  set p1.lig.sd=3 
if %p1.lig.sr%==14  set/a p1.lig.sm=%skill.14.sm% 
if %p1.lig.sr%==14  set/a p1.lig.sc=%p1.lig.sv% * %skill.14.sc% / 10 
if %p1.lig.sr%==14  set/a p1.lig.sx=%p1.lig.sv% * %skill.14.sx% / 10 
if %p1.lig.sr%==14  set p1.lig.sd=2 
if %p2.lig.sr%==14  set/a p1.lig.sm=%skill.14.sm% 
if %p2.lig.sr%==14  set/a p1.lig.sc=%p1.lig.sv% * %skill.14.sc% / 10 
if %p2.lig.sr%==14  set/a p1.lig.sx=%p1.lig.sv% * %skill.14.sx% / 10 
if %p2.lig.sr%==14  set p1.lig.sd=2 
if %p1.lig.sr%==15  set/a p1.lig.sm=%skill.15.sm% 
if %p1.lig.sr%==15  set/a p1.lig.sc=%p1.lig.sv% * %skill.15.sc% / 10 
if %p1.lig.sr%==15  set/a p1.lig.sx=%p1.lig.sv% * %skill.15.sx% / 10 
if %p1.lig.sr%==15  set p1.lig.sd=1 
if %p2.lig.sr%==15  set/a p1.lig.sm=%skill.15.sm% 
if %p2.lig.sr%==15  set/a p1.lig.sc=%p1.lig.sv% * %skill.15.sc% / 10 
if %p2.lig.sr%==15  set/a p1.lig.sx=%p1.lig.sv% * %skill.15.sx% / 10 
if %p2.lig.sr%==15  set p1.lig.sd=1 
 
if %p1.enl.sr%==0  set/a p1.enl.sm=%skill.0.sm% 
if %p1.enl.sr%==0  set/a p1.enl.sc=%p1.enl.sv% * %skill.0.sc% / 10 
if %p1.enl.sr%==0  set/a p1.enl.sx=%p1.enl.sv% * %skill.0.sx% / 10 
if %p1.enl.sr%==0  set p1.enl.sd=Novice 
if %p2.enl.sr%==0  set/a p1.enl.sm=%skill.0.sm% 
if %p2.enl.sr%==0  set/a p1.enl.sc=%p1.enl.sv% * %skill.0.sc% / 10 
if %p2.enl.sr%==0  set/a p1.enl.sx=%p1.enl.sv% * %skill.0.sx% / 10 
if %p2.enl.sr%==0  set p1.enl.sd=Novice 
if %p1.enl.sr%==1  set/a p1.enl.sm=%skill.1.sm% 
if %p1.enl.sr%==1  set/a p1.enl.sc=%p1.enl.sv% * %skill.1.sc% / 10 
if %p1.enl.sr%==1  set/a p1.enl.sx=%p1.enl.sv% * %skill.1.sx% / 10 
if %p1.enl.sr%==1  set p1.enl.sd=F 
if %p2.enl.sr%==1  set/a p1.enl.sm=%skill.1.sm% 
if %p2.enl.sr%==1  set/a p1.enl.sc=%p1.enl.sv% * %skill.1.sc% / 10 
if %p2.enl.sr%==1  set/a p1.enl.sx=%p1.enl.sv% * %skill.1.sx% / 10 
if %p2.enl.sr%==1  set p1.enl.sd=F 
if %p1.enl.sr%==2  set/a p1.enl.sm=%skill.2.sm% 
if %p1.enl.sr%==2  set/a p1.enl.sc=%p1.enl.sv% * %skill.2.sc% / 10 
if %p1.enl.sr%==2  set/a p1.enl.sx=%p1.enl.sv% * %skill.2.sx% / 10 
if %p1.enl.sr%==2  set p1.enl.sd=E 
if %p2.enl.sr%==2  set/a p1.enl.sm=%skill.2.sm% 
if %p2.enl.sr%==2  set/a p1.enl.sc=%p1.enl.sv% * %skill.2.sc% / 10 
if %p2.enl.sr%==2  set/a p1.enl.sx=%p1.enl.sv% * %skill.2.sx% / 10 
if %p2.enl.sr%==2  set p1.enl.sd=E 
if %p1.enl.sr%==3  set/a p1.enl.sm=%skill.3.sm% 
if %p1.enl.sr%==3  set/a p1.enl.sc=%p1.enl.sv% * %skill.3.sc% / 10 
if %p1.enl.sr%==3  set/a p1.enl.sx=%p1.enl.sv% * %skill.3.sx% / 10 
if %p1.enl.sr%==3  set p1.enl.sd=D 
if %p2.enl.sr%==3  set/a p1.enl.sm=%skill.3.sm% 
if %p2.enl.sr%==3  set/a p1.enl.sc=%p1.enl.sv% * %skill.3.sc% / 10 
if %p2.enl.sr%==3  set/a p1.enl.sx=%p1.enl.sv% * %skill.3.sx% / 10 
if %p2.enl.sr%==3  set p1.enl.sd=D 
if %p1.enl.sr%==4  set/a p1.enl.sm=%skill.4.sm% 
if %p1.enl.sr%==4  set/a p1.enl.sc=%p1.enl.sv% * %skill.4.sc% / 10 
if %p1.enl.sr%==4  set/a p1.enl.sx=%p1.enl.sv% * %skill.4.sx% / 10 
if %p1.enl.sr%==4  set p1.enl.sd=C 
if %p2.enl.sr%==4  set/a p1.enl.sm=%skill.4.sm% 
if %p2.enl.sr%==4  set/a p1.enl.sc=%p1.enl.sv% * %skill.4.sc% / 10 
if %p2.enl.sr%==4  set/a p1.enl.sx=%p1.enl.sv% * %skill.4.sx% / 10 
if %p2.enl.sr%==4  set p1.enl.sd=C 
if %p1.enl.sr%==5  set/a p1.enl.sm=%skill.5.sm% 
if %p1.enl.sr%==5  set/a p1.enl.sc=%p1.enl.sv% * %skill.5.sc% / 10 
if %p1.enl.sr%==5  set/a p1.enl.sx=%p1.enl.sv% * %skill.5.sx% / 10 
if %p1.enl.sr%==5  set p1.enl.sd=B 
if %p2.enl.sr%==5  set/a p1.enl.sm=%skill.5.sm% 
if %p2.enl.sr%==5  set/a p1.enl.sc=%p1.enl.sv% * %skill.5.sc% / 10 
if %p2.enl.sr%==5  set/a p1.enl.sx=%p1.enl.sv% * %skill.5.sx% / 10 
if %p2.enl.sr%==5  set p1.enl.sd=B 
if %p1.enl.sr%==6  set/a p1.enl.sm=%skill.6.sm% 
if %p1.enl.sr%==6  set/a p1.enl.sc=%p1.enl.sv% * %skill.6.sc% / 10 
if %p1.enl.sr%==6  set/a p1.enl.sx=%p1.enl.sv% * %skill.6.sx% / 10 
if %p1.enl.sr%==6  set p1.enl.sd=A 
if %p2.enl.sr%==6  set/a p1.enl.sm=%skill.6.sm% 
if %p2.enl.sr%==6  set/a p1.enl.sc=%p1.enl.sv% * %skill.6.sc% / 10 
if %p2.enl.sr%==6  set/a p1.enl.sx=%p1.enl.sv% * %skill.6.sx% / 10 
if %p2.enl.sr%==6  set p1.enl.sd=A 
if %p1.enl.sr%==7  set/a p1.enl.sm=%skill.7.sm% 
if %p1.enl.sr%==7  set/a p1.enl.sc=%p1.enl.sv% * %skill.7.sc% / 10 
if %p1.enl.sr%==7  set/a p1.enl.sx=%p1.enl.sv% * %skill.7.sx% / 10 
if %p1.enl.sr%==7  set p1.enl.sd=9 
if %p2.enl.sr%==7  set/a p1.enl.sm=%skill.7.sm% 
if %p2.enl.sr%==7  set/a p1.enl.sc=%p1.enl.sv% * %skill.7.sc% / 10 
if %p2.enl.sr%==7  set/a p1.enl.sx=%p1.enl.sv% * %skill.7.sx% / 10 
if %p2.enl.sr%==7  set p1.enl.sd=9 
if %p1.enl.sr%==8  set/a p1.enl.sm=%skill.8.sm% 
if %p1.enl.sr%==8  set/a p1.enl.sc=%p1.enl.sv% * %skill.8.sc% / 10 
if %p1.enl.sr%==8  set/a p1.enl.sx=%p1.enl.sv% * %skill.8.sx% / 10 
if %p1.enl.sr%==8  set p1.enl.sd=8 
if %p2.enl.sr%==8  set/a p1.enl.sm=%skill.8.sm% 
if %p2.enl.sr%==8  set/a p1.enl.sc=%p1.enl.sv% * %skill.8.sc% / 10 
if %p2.enl.sr%==8  set/a p1.enl.sx=%p1.enl.sv% * %skill.8.sx% / 10 
if %p2.enl.sr%==8  set p1.enl.sd=8 
if %p1.enl.sr%==9  set/a p1.enl.sm=%skill.9.sm% 
if %p1.enl.sr%==9  set/a p1.enl.sc=%p1.enl.sv% * %skill.9.sc% / 10 
if %p1.enl.sr%==9  set/a p1.enl.sx=%p1.enl.sv% * %skill.9.sx% / 10 
if %p1.enl.sr%==9  set p1.enl.sd=7 
if %p2.enl.sr%==9  set/a p1.enl.sm=%skill.9.sm% 
if %p2.enl.sr%==9  set/a p1.enl.sc=%p1.enl.sv% * %skill.9.sc% / 10 
if %p2.enl.sr%==9  set/a p1.enl.sx=%p1.enl.sv% * %skill.9.sx% / 10 
if %p2.enl.sr%==9  set p1.enl.sd=7 
if %p1.enl.sr%==10  set/a p1.enl.sm=%skill.10.sm% 
if %p1.enl.sr%==10  set/a p1.enl.sc=%p1.enl.sv% * %skill.10.sc% / 10 
if %p1.enl.sr%==10  set/a p1.enl.sx=%p1.enl.sv% * %skill.10.sx% / 10 
if %p1.enl.sr%==10  set p1.enl.sd=6 
if %p2.enl.sr%==10  set/a p1.enl.sm=%skill.10.sm% 
if %p2.enl.sr%==10  set/a p1.enl.sc=%p1.enl.sv% * %skill.10.sc% / 10 
if %p2.enl.sr%==10  set/a p1.enl.sx=%p1.enl.sv% * %skill.10.sx% / 10 
if %p2.enl.sr%==10  set p1.enl.sd=6 
if %p1.enl.sr%==11  set/a p1.enl.sm=%skill.11.sm% 
if %p1.enl.sr%==11  set/a p1.enl.sc=%p1.enl.sv% * %skill.11.sc% / 10 
if %p1.enl.sr%==11  set/a p1.enl.sx=%p1.enl.sv% * %skill.11.sx% / 10 
if %p1.enl.sr%==11  set p1.enl.sd=5 
if %p2.enl.sr%==11  set/a p1.enl.sm=%skill.11.sm% 
if %p2.enl.sr%==11  set/a p1.enl.sc=%p1.enl.sv% * %skill.11.sc% / 10 
if %p2.enl.sr%==11  set/a p1.enl.sx=%p1.enl.sv% * %skill.11.sx% / 10 
if %p2.enl.sr%==11  set p1.enl.sd=5 
if %p1.enl.sr%==12  set/a p1.enl.sm=%skill.12.sm% 
if %p1.enl.sr%==12  set/a p1.enl.sc=%p1.enl.sv% * %skill.12.sc% / 10 
if %p1.enl.sr%==12  set/a p1.enl.sx=%p1.enl.sv% * %skill.12.sx% / 10 
if %p1.enl.sr%==12  set p1.enl.sd=4 
if %p2.enl.sr%==12  set/a p1.enl.sm=%skill.12.sm% 
if %p2.enl.sr%==12  set/a p1.enl.sc=%p1.enl.sv% * %skill.12.sc% / 10 
if %p2.enl.sr%==12  set/a p1.enl.sx=%p1.enl.sv% * %skill.12.sx% / 10 
if %p2.enl.sr%==12  set p1.enl.sd=4 
if %p1.enl.sr%==13  set/a p1.enl.sm=%skill.13.sm% 
if %p1.enl.sr%==13  set/a p1.enl.sc=%p1.enl.sv% * %skill.13.sc% / 10 
if %p1.enl.sr%==13  set/a p1.enl.sx=%p1.enl.sv% * %skill.13.sx% / 10 
if %p1.enl.sr%==13  set p1.enl.sd=3 
if %p2.enl.sr%==13  set/a p1.enl.sm=%skill.13.sm% 
if %p2.enl.sr%==13  set/a p1.enl.sc=%p1.enl.sv% * %skill.13.sc% / 10 
if %p2.enl.sr%==13  set/a p1.enl.sx=%p1.enl.sv% * %skill.13.sx% / 10 
if %p2.enl.sr%==13  set p1.enl.sd=3 
if %p1.enl.sr%==14  set/a p1.enl.sm=%skill.14.sm% 
if %p1.enl.sr%==14  set/a p1.enl.sc=%p1.enl.sv% * %skill.14.sc% / 10 
if %p1.enl.sr%==14  set/a p1.enl.sx=%p1.enl.sv% * %skill.14.sx% / 10 
if %p1.enl.sr%==14  set p1.enl.sd=2 
if %p2.enl.sr%==14  set/a p1.enl.sm=%skill.14.sm% 
if %p2.enl.sr%==14  set/a p1.enl.sc=%p1.enl.sv% * %skill.14.sc% / 10 
if %p2.enl.sr%==14  set/a p1.enl.sx=%p1.enl.sv% * %skill.14.sx% / 10 
if %p2.enl.sr%==14  set p1.enl.sd=2 
if %p1.enl.sr%==15  set/a p1.enl.sm=%skill.15.sm% 
if %p1.enl.sr%==15  set/a p1.enl.sc=%p1.enl.sv% * %skill.15.sc% / 10 
if %p1.enl.sr%==15  set/a p1.enl.sx=%p1.enl.sv% * %skill.15.sx% / 10 
if %p1.enl.sr%==15  set p1.enl.sd=1 
if %p2.enl.sr%==15  set/a p1.enl.sm=%skill.15.sm% 
if %p2.enl.sr%==15  set/a p1.enl.sc=%p1.enl.sv% * %skill.15.sc% / 10 
if %p2.enl.sr%==15  set/a p1.enl.sx=%p1.enl.sv% * %skill.15.sx% / 10 
if %p2.enl.sr%==15  set p1.enl.sd=1 
 
if %p1.dbl.sr%==0  set/a p1.dbl.sm=%skill.0.sm% 
if %p1.dbl.sr%==0  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.0.sc% / 10 
if %p1.dbl.sr%==0  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.0.sx% / 10 
if %p1.dbl.sr%==0  set p1.dbl.sd=Novice 
if %p2.dbl.sr%==0  set/a p1.dbl.sm=%skill.0.sm% 
if %p2.dbl.sr%==0  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.0.sc% / 10 
if %p2.dbl.sr%==0  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.0.sx% / 10 
if %p2.dbl.sr%==0  set p1.dbl.sd=Novice 
if %p1.dbl.sr%==1  set/a p1.dbl.sm=%skill.1.sm% 
if %p1.dbl.sr%==1  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.1.sc% / 10 
if %p1.dbl.sr%==1  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.1.sx% / 10 
if %p1.dbl.sr%==1  set p1.dbl.sd=F 
if %p2.dbl.sr%==1  set/a p1.dbl.sm=%skill.1.sm% 
if %p2.dbl.sr%==1  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.1.sc% / 10 
if %p2.dbl.sr%==1  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.1.sx% / 10 
if %p2.dbl.sr%==1  set p1.dbl.sd=F 
if %p1.dbl.sr%==2  set/a p1.dbl.sm=%skill.2.sm% 
if %p1.dbl.sr%==2  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.2.sc% / 10 
if %p1.dbl.sr%==2  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.2.sx% / 10 
if %p1.dbl.sr%==2  set p1.dbl.sd=E 
if %p2.dbl.sr%==2  set/a p1.dbl.sm=%skill.2.sm% 
if %p2.dbl.sr%==2  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.2.sc% / 10 
if %p2.dbl.sr%==2  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.2.sx% / 10 
if %p2.dbl.sr%==2  set p1.dbl.sd=E 
if %p1.dbl.sr%==3  set/a p1.dbl.sm=%skill.3.sm% 
if %p1.dbl.sr%==3  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.3.sc% / 10 
if %p1.dbl.sr%==3  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.3.sx% / 10 
if %p1.dbl.sr%==3  set p1.dbl.sd=D 
if %p2.dbl.sr%==3  set/a p1.dbl.sm=%skill.3.sm% 
if %p2.dbl.sr%==3  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.3.sc% / 10 
if %p2.dbl.sr%==3  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.3.sx% / 10 
if %p2.dbl.sr%==3  set p1.dbl.sd=D 
if %p1.dbl.sr%==4  set/a p1.dbl.sm=%skill.4.sm% 
if %p1.dbl.sr%==4  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.4.sc% / 10 
if %p1.dbl.sr%==4  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.4.sx% / 10 
if %p1.dbl.sr%==4  set p1.dbl.sd=C 
if %p2.dbl.sr%==4  set/a p1.dbl.sm=%skill.4.sm% 
if %p2.dbl.sr%==4  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.4.sc% / 10 
if %p2.dbl.sr%==4  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.4.sx% / 10 
if %p2.dbl.sr%==4  set p1.dbl.sd=C 
if %p1.dbl.sr%==5  set/a p1.dbl.sm=%skill.5.sm% 
if %p1.dbl.sr%==5  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.5.sc% / 10 
if %p1.dbl.sr%==5  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.5.sx% / 10 
if %p1.dbl.sr%==5  set p1.dbl.sd=B 
if %p2.dbl.sr%==5  set/a p1.dbl.sm=%skill.5.sm% 
if %p2.dbl.sr%==5  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.5.sc% / 10 
if %p2.dbl.sr%==5  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.5.sx% / 10 
if %p2.dbl.sr%==5  set p1.dbl.sd=B 
if %p1.dbl.sr%==6  set/a p1.dbl.sm=%skill.6.sm% 
if %p1.dbl.sr%==6  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.6.sc% / 10 
if %p1.dbl.sr%==6  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.6.sx% / 10 
if %p1.dbl.sr%==6  set p1.dbl.sd=A 
if %p2.dbl.sr%==6  set/a p1.dbl.sm=%skill.6.sm% 
if %p2.dbl.sr%==6  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.6.sc% / 10 
if %p2.dbl.sr%==6  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.6.sx% / 10 
if %p2.dbl.sr%==6  set p1.dbl.sd=A 
if %p1.dbl.sr%==7  set/a p1.dbl.sm=%skill.7.sm% 
if %p1.dbl.sr%==7  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.7.sc% / 10 
if %p1.dbl.sr%==7  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.7.sx% / 10 
if %p1.dbl.sr%==7  set p1.dbl.sd=9 
if %p2.dbl.sr%==7  set/a p1.dbl.sm=%skill.7.sm% 
if %p2.dbl.sr%==7  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.7.sc% / 10 
if %p2.dbl.sr%==7  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.7.sx% / 10 
if %p2.dbl.sr%==7  set p1.dbl.sd=9 
if %p1.dbl.sr%==8  set/a p1.dbl.sm=%skill.8.sm% 
if %p1.dbl.sr%==8  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.8.sc% / 10 
if %p1.dbl.sr%==8  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.8.sx% / 10 
if %p1.dbl.sr%==8  set p1.dbl.sd=8 
if %p2.dbl.sr%==8  set/a p1.dbl.sm=%skill.8.sm% 
if %p2.dbl.sr%==8  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.8.sc% / 10 
if %p2.dbl.sr%==8  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.8.sx% / 10 
if %p2.dbl.sr%==8  set p1.dbl.sd=8 
if %p1.dbl.sr%==9  set/a p1.dbl.sm=%skill.9.sm% 
if %p1.dbl.sr%==9  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.9.sc% / 10 
if %p1.dbl.sr%==9  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.9.sx% / 10 
if %p1.dbl.sr%==9  set p1.dbl.sd=7 
if %p2.dbl.sr%==9  set/a p1.dbl.sm=%skill.9.sm% 
if %p2.dbl.sr%==9  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.9.sc% / 10 
if %p2.dbl.sr%==9  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.9.sx% / 10 
if %p2.dbl.sr%==9  set p1.dbl.sd=7 
if %p1.dbl.sr%==10  set/a p1.dbl.sm=%skill.10.sm% 
if %p1.dbl.sr%==10  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.10.sc% / 10 
if %p1.dbl.sr%==10  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.10.sx% / 10 
if %p1.dbl.sr%==10  set p1.dbl.sd=6 
if %p2.dbl.sr%==10  set/a p1.dbl.sm=%skill.10.sm% 
if %p2.dbl.sr%==10  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.10.sc% / 10 
if %p2.dbl.sr%==10  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.10.sx% / 10 
if %p2.dbl.sr%==10  set p1.dbl.sd=6 
if %p1.dbl.sr%==11  set/a p1.dbl.sm=%skill.11.sm% 
if %p1.dbl.sr%==11  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.11.sc% / 10 
if %p1.dbl.sr%==11  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.11.sx% / 10 
if %p1.dbl.sr%==11  set p1.dbl.sd=5 
if %p2.dbl.sr%==11  set/a p1.dbl.sm=%skill.11.sm% 
if %p2.dbl.sr%==11  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.11.sc% / 10 
if %p2.dbl.sr%==11  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.11.sx% / 10 
if %p2.dbl.sr%==11  set p1.dbl.sd=5 
if %p1.dbl.sr%==12  set/a p1.dbl.sm=%skill.12.sm% 
if %p1.dbl.sr%==12  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.12.sc% / 10 
if %p1.dbl.sr%==12  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.12.sx% / 10 
if %p1.dbl.sr%==12  set p1.dbl.sd=4 
if %p2.dbl.sr%==12  set/a p1.dbl.sm=%skill.12.sm% 
if %p2.dbl.sr%==12  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.12.sc% / 10 
if %p2.dbl.sr%==12  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.12.sx% / 10 
if %p2.dbl.sr%==12  set p1.dbl.sd=4 
if %p1.dbl.sr%==13  set/a p1.dbl.sm=%skill.13.sm% 
if %p1.dbl.sr%==13  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.13.sc% / 10 
if %p1.dbl.sr%==13  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.13.sx% / 10 
if %p1.dbl.sr%==13  set p1.dbl.sd=3 
if %p2.dbl.sr%==13  set/a p1.dbl.sm=%skill.13.sm% 
if %p2.dbl.sr%==13  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.13.sc% / 10 
if %p2.dbl.sr%==13  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.13.sx% / 10 
if %p2.dbl.sr%==13  set p1.dbl.sd=3 
if %p1.dbl.sr%==14  set/a p1.dbl.sm=%skill.14.sm% 
if %p1.dbl.sr%==14  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.14.sc% / 10 
if %p1.dbl.sr%==14  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.14.sx% / 10 
if %p1.dbl.sr%==14  set p1.dbl.sd=2 
if %p2.dbl.sr%==14  set/a p1.dbl.sm=%skill.14.sm% 
if %p2.dbl.sr%==14  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.14.sc% / 10 
if %p2.dbl.sr%==14  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.14.sx% / 10 
if %p2.dbl.sr%==14  set p1.dbl.sd=2 
if %p1.dbl.sr%==15  set/a p1.dbl.sm=%skill.15.sm% 
if %p1.dbl.sr%==15  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.15.sc% / 10 
if %p1.dbl.sr%==15  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.15.sx% / 10 
if %p1.dbl.sr%==15  set p1.dbl.sd=1 
if %p2.dbl.sr%==15  set/a p1.dbl.sm=%skill.15.sm% 
if %p2.dbl.sr%==15  set/a p1.dbl.sc=%p1.dbl.sv% * %skill.15.sc% / 10 
if %p2.dbl.sr%==15  set/a p1.dbl.sx=%p1.dbl.sv% * %skill.15.sx% / 10 
if %p2.dbl.sr%==15  set p1.dbl.sd=1 
 
if %p1.ice.sr%==0  set/a p1.ice.sm=%skill.0.sm% 
if %p1.ice.sr%==0  set/a p1.ice.sc=%p1.ice.sv% * %skill.0.sc% / 10 
if %p1.ice.sr%==0  set/a p1.ice.sx=%p1.ice.sv% * %skill.0.sx% / 10 
if %p1.ice.sr%==0  set p1.ice.sd=Novice 
if %p2.ice.sr%==0  set/a p1.ice.sm=%skill.0.sm% 
if %p2.ice.sr%==0  set/a p1.ice.sc=%p1.ice.sv% * %skill.0.sc% / 10 
if %p2.ice.sr%==0  set/a p1.ice.sx=%p1.ice.sv% * %skill.0.sx% / 10 
if %p2.ice.sr%==0  set p1.ice.sd=Novice 
if %p1.ice.sr%==1  set/a p1.ice.sm=%skill.1.sm% 
if %p1.ice.sr%==1  set/a p1.ice.sc=%p1.ice.sv% * %skill.1.sc% / 10 
if %p1.ice.sr%==1  set/a p1.ice.sx=%p1.ice.sv% * %skill.1.sx% / 10 
if %p1.ice.sr%==1  set p1.ice.sd=F 
if %p2.ice.sr%==1  set/a p1.ice.sm=%skill.1.sm% 
if %p2.ice.sr%==1  set/a p1.ice.sc=%p1.ice.sv% * %skill.1.sc% / 10 
if %p2.ice.sr%==1  set/a p1.ice.sx=%p1.ice.sv% * %skill.1.sx% / 10 
if %p2.ice.sr%==1  set p1.ice.sd=F 
if %p1.ice.sr%==2  set/a p1.ice.sm=%skill.2.sm% 
if %p1.ice.sr%==2  set/a p1.ice.sc=%p1.ice.sv% * %skill.2.sc% / 10 
if %p1.ice.sr%==2  set/a p1.ice.sx=%p1.ice.sv% * %skill.2.sx% / 10 
if %p1.ice.sr%==2  set p1.ice.sd=E 
if %p2.ice.sr%==2  set/a p1.ice.sm=%skill.2.sm% 
if %p2.ice.sr%==2  set/a p1.ice.sc=%p1.ice.sv% * %skill.2.sc% / 10 
if %p2.ice.sr%==2  set/a p1.ice.sx=%p1.ice.sv% * %skill.2.sx% / 10 
if %p2.ice.sr%==2  set p1.ice.sd=E 
if %p1.ice.sr%==3  set/a p1.ice.sm=%skill.3.sm% 
if %p1.ice.sr%==3  set/a p1.ice.sc=%p1.ice.sv% * %skill.3.sc% / 10 
if %p1.ice.sr%==3  set/a p1.ice.sx=%p1.ice.sv% * %skill.3.sx% / 10 
if %p1.ice.sr%==3  set p1.ice.sd=D 
if %p2.ice.sr%==3  set/a p1.ice.sm=%skill.3.sm% 
if %p2.ice.sr%==3  set/a p1.ice.sc=%p1.ice.sv% * %skill.3.sc% / 10 
if %p2.ice.sr%==3  set/a p1.ice.sx=%p1.ice.sv% * %skill.3.sx% / 10 
if %p2.ice.sr%==3  set p1.ice.sd=D 
if %p1.ice.sr%==4  set/a p1.ice.sm=%skill.4.sm% 
if %p1.ice.sr%==4  set/a p1.ice.sc=%p1.ice.sv% * %skill.4.sc% / 10 
if %p1.ice.sr%==4  set/a p1.ice.sx=%p1.ice.sv% * %skill.4.sx% / 10 
if %p1.ice.sr%==4  set p1.ice.sd=C 
if %p2.ice.sr%==4  set/a p1.ice.sm=%skill.4.sm% 
if %p2.ice.sr%==4  set/a p1.ice.sc=%p1.ice.sv% * %skill.4.sc% / 10 
if %p2.ice.sr%==4  set/a p1.ice.sx=%p1.ice.sv% * %skill.4.sx% / 10 
if %p2.ice.sr%==4  set p1.ice.sd=C 
if %p1.ice.sr%==5  set/a p1.ice.sm=%skill.5.sm% 
if %p1.ice.sr%==5  set/a p1.ice.sc=%p1.ice.sv% * %skill.5.sc% / 10 
if %p1.ice.sr%==5  set/a p1.ice.sx=%p1.ice.sv% * %skill.5.sx% / 10 
if %p1.ice.sr%==5  set p1.ice.sd=B 
if %p2.ice.sr%==5  set/a p1.ice.sm=%skill.5.sm% 
if %p2.ice.sr%==5  set/a p1.ice.sc=%p1.ice.sv% * %skill.5.sc% / 10 
if %p2.ice.sr%==5  set/a p1.ice.sx=%p1.ice.sv% * %skill.5.sx% / 10 
if %p2.ice.sr%==5  set p1.ice.sd=B 
if %p1.ice.sr%==6  set/a p1.ice.sm=%skill.6.sm% 
if %p1.ice.sr%==6  set/a p1.ice.sc=%p1.ice.sv% * %skill.6.sc% / 10 
if %p1.ice.sr%==6  set/a p1.ice.sx=%p1.ice.sv% * %skill.6.sx% / 10 
if %p1.ice.sr%==6  set p1.ice.sd=A 
if %p2.ice.sr%==6  set/a p1.ice.sm=%skill.6.sm% 
if %p2.ice.sr%==6  set/a p1.ice.sc=%p1.ice.sv% * %skill.6.sc% / 10 
if %p2.ice.sr%==6  set/a p1.ice.sx=%p1.ice.sv% * %skill.6.sx% / 10 
if %p2.ice.sr%==6  set p1.ice.sd=A 
if %p1.ice.sr%==7  set/a p1.ice.sm=%skill.7.sm% 
if %p1.ice.sr%==7  set/a p1.ice.sc=%p1.ice.sv% * %skill.7.sc% / 10 
if %p1.ice.sr%==7  set/a p1.ice.sx=%p1.ice.sv% * %skill.7.sx% / 10 
if %p1.ice.sr%==7  set p1.ice.sd=9 
if %p2.ice.sr%==7  set/a p1.ice.sm=%skill.7.sm% 
if %p2.ice.sr%==7  set/a p1.ice.sc=%p1.ice.sv% * %skill.7.sc% / 10 
if %p2.ice.sr%==7  set/a p1.ice.sx=%p1.ice.sv% * %skill.7.sx% / 10 
if %p2.ice.sr%==7  set p1.ice.sd=9 
if %p1.ice.sr%==8  set/a p1.ice.sm=%skill.8.sm% 
if %p1.ice.sr%==8  set/a p1.ice.sc=%p1.ice.sv% * %skill.8.sc% / 10 
if %p1.ice.sr%==8  set/a p1.ice.sx=%p1.ice.sv% * %skill.8.sx% / 10 
if %p1.ice.sr%==8  set p1.ice.sd=8 
if %p2.ice.sr%==8  set/a p1.ice.sm=%skill.8.sm% 
if %p2.ice.sr%==8  set/a p1.ice.sc=%p1.ice.sv% * %skill.8.sc% / 10 
if %p2.ice.sr%==8  set/a p1.ice.sx=%p1.ice.sv% * %skill.8.sx% / 10 
if %p2.ice.sr%==8  set p1.ice.sd=8 
if %p1.ice.sr%==9  set/a p1.ice.sm=%skill.9.sm% 
if %p1.ice.sr%==9  set/a p1.ice.sc=%p1.ice.sv% * %skill.9.sc% / 10 
if %p1.ice.sr%==9  set/a p1.ice.sx=%p1.ice.sv% * %skill.9.sx% / 10 
if %p1.ice.sr%==9  set p1.ice.sd=7 
if %p2.ice.sr%==9  set/a p1.ice.sm=%skill.9.sm% 
if %p2.ice.sr%==9  set/a p1.ice.sc=%p1.ice.sv% * %skill.9.sc% / 10 
if %p2.ice.sr%==9  set/a p1.ice.sx=%p1.ice.sv% * %skill.9.sx% / 10 
if %p2.ice.sr%==9  set p1.ice.sd=7 
if %p1.ice.sr%==10  set/a p1.ice.sm=%skill.10.sm% 
if %p1.ice.sr%==10  set/a p1.ice.sc=%p1.ice.sv% * %skill.10.sc% / 10 
if %p1.ice.sr%==10  set/a p1.ice.sx=%p1.ice.sv% * %skill.10.sx% / 10 
if %p1.ice.sr%==10  set p1.ice.sd=6 
if %p2.ice.sr%==10  set/a p1.ice.sm=%skill.10.sm% 
if %p2.ice.sr%==10  set/a p1.ice.sc=%p1.ice.sv% * %skill.10.sc% / 10 
if %p2.ice.sr%==10  set/a p1.ice.sx=%p1.ice.sv% * %skill.10.sx% / 10 
if %p2.ice.sr%==10  set p1.ice.sd=6 
if %p1.ice.sr%==11  set/a p1.ice.sm=%skill.11.sm% 
if %p1.ice.sr%==11  set/a p1.ice.sc=%p1.ice.sv% * %skill.11.sc% / 10 
if %p1.ice.sr%==11  set/a p1.ice.sx=%p1.ice.sv% * %skill.11.sx% / 10 
if %p1.ice.sr%==11  set p1.ice.sd=5 
if %p2.ice.sr%==11  set/a p1.ice.sm=%skill.11.sm% 
if %p2.ice.sr%==11  set/a p1.ice.sc=%p1.ice.sv% * %skill.11.sc% / 10 
if %p2.ice.sr%==11  set/a p1.ice.sx=%p1.ice.sv% * %skill.11.sx% / 10 
if %p2.ice.sr%==11  set p1.ice.sd=5 
if %p1.ice.sr%==12  set/a p1.ice.sm=%skill.12.sm% 
if %p1.ice.sr%==12  set/a p1.ice.sc=%p1.ice.sv% * %skill.12.sc% / 10 
if %p1.ice.sr%==12  set/a p1.ice.sx=%p1.ice.sv% * %skill.12.sx% / 10 
if %p1.ice.sr%==12  set p1.ice.sd=4 
if %p2.ice.sr%==12  set/a p1.ice.sm=%skill.12.sm% 
if %p2.ice.sr%==12  set/a p1.ice.sc=%p1.ice.sv% * %skill.12.sc% / 10 
if %p2.ice.sr%==12  set/a p1.ice.sx=%p1.ice.sv% * %skill.12.sx% / 10 
if %p2.ice.sr%==12  set p1.ice.sd=4 
if %p1.ice.sr%==13  set/a p1.ice.sm=%skill.13.sm% 
if %p1.ice.sr%==13  set/a p1.ice.sc=%p1.ice.sv% * %skill.13.sc% / 10 
if %p1.ice.sr%==13  set/a p1.ice.sx=%p1.ice.sv% * %skill.13.sx% / 10 
if %p1.ice.sr%==13  set p1.ice.sd=3 
if %p2.ice.sr%==13  set/a p1.ice.sm=%skill.13.sm% 
if %p2.ice.sr%==13  set/a p1.ice.sc=%p1.ice.sv% * %skill.13.sc% / 10 
if %p2.ice.sr%==13  set/a p1.ice.sx=%p1.ice.sv% * %skill.13.sx% / 10 
if %p2.ice.sr%==13  set p1.ice.sd=3 
if %p1.ice.sr%==14  set/a p1.ice.sm=%skill.14.sm% 
if %p1.ice.sr%==14  set/a p1.ice.sc=%p1.ice.sv% * %skill.14.sc% / 10 
if %p1.ice.sr%==14  set/a p1.ice.sx=%p1.ice.sv% * %skill.14.sx% / 10 
if %p1.ice.sr%==14  set p1.ice.sd=2 
if %p2.ice.sr%==14  set/a p1.ice.sm=%skill.14.sm% 
if %p2.ice.sr%==14  set/a p1.ice.sc=%p1.ice.sv% * %skill.14.sc% / 10 
if %p2.ice.sr%==14  set/a p1.ice.sx=%p1.ice.sv% * %skill.14.sx% / 10 
if %p2.ice.sr%==14  set p1.ice.sd=2 
if %p1.ice.sr%==15  set/a p1.ice.sm=%skill.15.sm% 
if %p1.ice.sr%==15  set/a p1.ice.sc=%p1.ice.sv% * %skill.15.sc% / 10 
if %p1.ice.sr%==15  set/a p1.ice.sx=%p1.ice.sv% * %skill.15.sx% / 10 
if %p1.ice.sr%==15  set p1.ice.sd=1 
if %p2.ice.sr%==15  set/a p1.ice.sm=%skill.15.sm% 
if %p2.ice.sr%==15  set/a p1.ice.sc=%p1.ice.sv% * %skill.15.sc% / 10 
if %p2.ice.sr%==15  set/a p1.ice.sx=%p1.ice.sv% * %skill.15.sx% / 10 
if %p2.ice.sr%==15  set p1.ice.sd=1 
 
if %p1.fir.sr%==0  set/a p1.fir.sm=%skill.0.sm% 
if %p1.fir.sr%==0  set/a p1.fir.sc=%p1.fir.sv% * %skill.0.sc% / 10 
if %p1.fir.sr%==0  set/a p1.fir.sx=%p1.fir.sv% * %skill.0.sx% / 10 
if %p1.fir.sr%==0  set p1.fir.sd=Novice 
if %p2.fir.sr%==0  set/a p1.fir.sm=%skill.0.sm% 
if %p2.fir.sr%==0  set/a p1.fir.sc=%p1.fir.sv% * %skill.0.sc% / 10 
if %p2.fir.sr%==0  set/a p1.fir.sx=%p1.fir.sv% * %skill.0.sx% / 10 
if %p2.fir.sr%==0  set p1.fir.sd=Novice 
if %p1.fir.sr%==1  set/a p1.fir.sm=%skill.1.sm% 
if %p1.fir.sr%==1  set/a p1.fir.sc=%p1.fir.sv% * %skill.1.sc% / 10 
if %p1.fir.sr%==1  set/a p1.fir.sx=%p1.fir.sv% * %skill.1.sx% / 10 
if %p1.fir.sr%==1  set p1.fir.sd=F 
if %p2.fir.sr%==1  set/a p1.fir.sm=%skill.1.sm% 
if %p2.fir.sr%==1  set/a p1.fir.sc=%p1.fir.sv% * %skill.1.sc% / 10 
if %p2.fir.sr%==1  set/a p1.fir.sx=%p1.fir.sv% * %skill.1.sx% / 10 
if %p2.fir.sr%==1  set p1.fir.sd=F 
if %p1.fir.sr%==2  set/a p1.fir.sm=%skill.2.sm% 
if %p1.fir.sr%==2  set/a p1.fir.sc=%p1.fir.sv% * %skill.2.sc% / 10 
if %p1.fir.sr%==2  set/a p1.fir.sx=%p1.fir.sv% * %skill.2.sx% / 10 
if %p1.fir.sr%==2  set p1.fir.sd=E 
if %p2.fir.sr%==2  set/a p1.fir.sm=%skill.2.sm% 
if %p2.fir.sr%==2  set/a p1.fir.sc=%p1.fir.sv% * %skill.2.sc% / 10 
if %p2.fir.sr%==2  set/a p1.fir.sx=%p1.fir.sv% * %skill.2.sx% / 10 
if %p2.fir.sr%==2  set p1.fir.sd=E 
if %p1.fir.sr%==3  set/a p1.fir.sm=%skill.3.sm% 
if %p1.fir.sr%==3  set/a p1.fir.sc=%p1.fir.sv% * %skill.3.sc% / 10 
if %p1.fir.sr%==3  set/a p1.fir.sx=%p1.fir.sv% * %skill.3.sx% / 10 
if %p1.fir.sr%==3  set p1.fir.sd=D 
if %p2.fir.sr%==3  set/a p1.fir.sm=%skill.3.sm% 
if %p2.fir.sr%==3  set/a p1.fir.sc=%p1.fir.sv% * %skill.3.sc% / 10 
if %p2.fir.sr%==3  set/a p1.fir.sx=%p1.fir.sv% * %skill.3.sx% / 10 
if %p2.fir.sr%==3  set p1.fir.sd=D 
if %p1.fir.sr%==4  set/a p1.fir.sm=%skill.4.sm% 
if %p1.fir.sr%==4  set/a p1.fir.sc=%p1.fir.sv% * %skill.4.sc% / 10 
if %p1.fir.sr%==4  set/a p1.fir.sx=%p1.fir.sv% * %skill.4.sx% / 10 
if %p1.fir.sr%==4  set p1.fir.sd=C 
if %p2.fir.sr%==4  set/a p1.fir.sm=%skill.4.sm% 
if %p2.fir.sr%==4  set/a p1.fir.sc=%p1.fir.sv% * %skill.4.sc% / 10 
if %p2.fir.sr%==4  set/a p1.fir.sx=%p1.fir.sv% * %skill.4.sx% / 10 
if %p2.fir.sr%==4  set p1.fir.sd=C 
if %p1.fir.sr%==5  set/a p1.fir.sm=%skill.5.sm% 
if %p1.fir.sr%==5  set/a p1.fir.sc=%p1.fir.sv% * %skill.5.sc% / 10 
if %p1.fir.sr%==5  set/a p1.fir.sx=%p1.fir.sv% * %skill.5.sx% / 10 
if %p1.fir.sr%==5  set p1.fir.sd=B 
if %p2.fir.sr%==5  set/a p1.fir.sm=%skill.5.sm% 
if %p2.fir.sr%==5  set/a p1.fir.sc=%p1.fir.sv% * %skill.5.sc% / 10 
if %p2.fir.sr%==5  set/a p1.fir.sx=%p1.fir.sv% * %skill.5.sx% / 10 
if %p2.fir.sr%==5  set p1.fir.sd=B 
if %p1.fir.sr%==6  set/a p1.fir.sm=%skill.6.sm% 
if %p1.fir.sr%==6  set/a p1.fir.sc=%p1.fir.sv% * %skill.6.sc% / 10 
if %p1.fir.sr%==6  set/a p1.fir.sx=%p1.fir.sv% * %skill.6.sx% / 10 
if %p1.fir.sr%==6  set p1.fir.sd=A 
if %p2.fir.sr%==6  set/a p1.fir.sm=%skill.6.sm% 
if %p2.fir.sr%==6  set/a p1.fir.sc=%p1.fir.sv% * %skill.6.sc% / 10 
if %p2.fir.sr%==6  set/a p1.fir.sx=%p1.fir.sv% * %skill.6.sx% / 10 
if %p2.fir.sr%==6  set p1.fir.sd=A 
if %p1.fir.sr%==7  set/a p1.fir.sm=%skill.7.sm% 
if %p1.fir.sr%==7  set/a p1.fir.sc=%p1.fir.sv% * %skill.7.sc% / 10 
if %p1.fir.sr%==7  set/a p1.fir.sx=%p1.fir.sv% * %skill.7.sx% / 10 
if %p1.fir.sr%==7  set p1.fir.sd=9 
if %p2.fir.sr%==7  set/a p1.fir.sm=%skill.7.sm% 
if %p2.fir.sr%==7  set/a p1.fir.sc=%p1.fir.sv% * %skill.7.sc% / 10 
if %p2.fir.sr%==7  set/a p1.fir.sx=%p1.fir.sv% * %skill.7.sx% / 10 
if %p2.fir.sr%==7  set p1.fir.sd=9 
if %p1.fir.sr%==8  set/a p1.fir.sm=%skill.8.sm% 
if %p1.fir.sr%==8  set/a p1.fir.sc=%p1.fir.sv% * %skill.8.sc% / 10 
if %p1.fir.sr%==8  set/a p1.fir.sx=%p1.fir.sv% * %skill.8.sx% / 10 
if %p1.fir.sr%==8  set p1.fir.sd=8 
if %p2.fir.sr%==8  set/a p1.fir.sm=%skill.8.sm% 
if %p2.fir.sr%==8  set/a p1.fir.sc=%p1.fir.sv% * %skill.8.sc% / 10 
if %p2.fir.sr%==8  set/a p1.fir.sx=%p1.fir.sv% * %skill.8.sx% / 10 
if %p2.fir.sr%==8  set p1.fir.sd=8 
if %p1.fir.sr%==9  set/a p1.fir.sm=%skill.9.sm% 
if %p1.fir.sr%==9  set/a p1.fir.sc=%p1.fir.sv% * %skill.9.sc% / 10 
if %p1.fir.sr%==9  set/a p1.fir.sx=%p1.fir.sv% * %skill.9.sx% / 10 
if %p1.fir.sr%==9  set p1.fir.sd=7 
if %p2.fir.sr%==9  set/a p1.fir.sm=%skill.9.sm% 
if %p2.fir.sr%==9  set/a p1.fir.sc=%p1.fir.sv% * %skill.9.sc% / 10 
if %p2.fir.sr%==9  set/a p1.fir.sx=%p1.fir.sv% * %skill.9.sx% / 10 
if %p2.fir.sr%==9  set p1.fir.sd=7 
if %p1.fir.sr%==10  set/a p1.fir.sm=%skill.10.sm% 
if %p1.fir.sr%==10  set/a p1.fir.sc=%p1.fir.sv% * %skill.10.sc% / 10 
if %p1.fir.sr%==10  set/a p1.fir.sx=%p1.fir.sv% * %skill.10.sx% / 10 
if %p1.fir.sr%==10  set p1.fir.sd=6 
if %p2.fir.sr%==10  set/a p1.fir.sm=%skill.10.sm% 
if %p2.fir.sr%==10  set/a p1.fir.sc=%p1.fir.sv% * %skill.10.sc% / 10 
if %p2.fir.sr%==10  set/a p1.fir.sx=%p1.fir.sv% * %skill.10.sx% / 10 
if %p2.fir.sr%==10  set p1.fir.sd=6 
if %p1.fir.sr%==11  set/a p1.fir.sm=%skill.11.sm% 
if %p1.fir.sr%==11  set/a p1.fir.sc=%p1.fir.sv% * %skill.11.sc% / 10 
if %p1.fir.sr%==11  set/a p1.fir.sx=%p1.fir.sv% * %skill.11.sx% / 10 
if %p1.fir.sr%==11  set p1.fir.sd=5 
if %p2.fir.sr%==11  set/a p1.fir.sm=%skill.11.sm% 
if %p2.fir.sr%==11  set/a p1.fir.sc=%p1.fir.sv% * %skill.11.sc% / 10 
if %p2.fir.sr%==11  set/a p1.fir.sx=%p1.fir.sv% * %skill.11.sx% / 10 
if %p2.fir.sr%==11  set p1.fir.sd=5 
if %p1.fir.sr%==12  set/a p1.fir.sm=%skill.12.sm% 
if %p1.fir.sr%==12  set/a p1.fir.sc=%p1.fir.sv% * %skill.12.sc% / 10 
if %p1.fir.sr%==12  set/a p1.fir.sx=%p1.fir.sv% * %skill.12.sx% / 10 
if %p1.fir.sr%==12  set p1.fir.sd=4 
if %p2.fir.sr%==12  set/a p1.fir.sm=%skill.12.sm% 
if %p2.fir.sr%==12  set/a p1.fir.sc=%p1.fir.sv% * %skill.12.sc% / 10 
if %p2.fir.sr%==12  set/a p1.fir.sx=%p1.fir.sv% * %skill.12.sx% / 10 
if %p2.fir.sr%==12  set p1.fir.sd=4 
if %p1.fir.sr%==13  set/a p1.fir.sm=%skill.13.sm% 
if %p1.fir.sr%==13  set/a p1.fir.sc=%p1.fir.sv% * %skill.13.sc% / 10 
if %p1.fir.sr%==13  set/a p1.fir.sx=%p1.fir.sv% * %skill.13.sx% / 10 
if %p1.fir.sr%==13  set p1.fir.sd=3 
if %p2.fir.sr%==13  set/a p1.fir.sm=%skill.13.sm% 
if %p2.fir.sr%==13  set/a p1.fir.sc=%p1.fir.sv% * %skill.13.sc% / 10 
if %p2.fir.sr%==13  set/a p1.fir.sx=%p1.fir.sv% * %skill.13.sx% / 10 
if %p2.fir.sr%==13  set p1.fir.sd=3 
if %p1.fir.sr%==14  set/a p1.fir.sm=%skill.14.sm% 
if %p1.fir.sr%==14  set/a p1.fir.sc=%p1.fir.sv% * %skill.14.sc% / 10 
if %p1.fir.sr%==14  set/a p1.fir.sx=%p1.fir.sv% * %skill.14.sx% / 10 
if %p1.fir.sr%==14  set p1.fir.sd=2 
if %p2.fir.sr%==14  set/a p1.fir.sm=%skill.14.sm% 
if %p2.fir.sr%==14  set/a p1.fir.sc=%p1.fir.sv% * %skill.14.sc% / 10 
if %p2.fir.sr%==14  set/a p1.fir.sx=%p1.fir.sv% * %skill.14.sx% / 10 
if %p2.fir.sr%==14  set p1.fir.sd=2 
if %p1.fir.sr%==15  set/a p1.fir.sm=%skill.15.sm% 
if %p1.fir.sr%==15  set/a p1.fir.sc=%p1.fir.sv% * %skill.15.sc% / 10 
if %p1.fir.sr%==15  set/a p1.fir.sx=%p1.fir.sv% * %skill.15.sx% / 10 
if %p1.fir.sr%==15  set p1.fir.sd=1 
if %p2.fir.sr%==15  set/a p1.fir.sm=%skill.15.sm% 
if %p2.fir.sr%==15  set/a p1.fir.sc=%p1.fir.sv% * %skill.15.sc% / 10 
if %p2.fir.sr%==15  set/a p1.fir.sx=%p1.fir.sv% * %skill.15.sx% / 10 
if %p2.fir.sr%==15  set p1.fir.sd=1 

call:funct.loadbar 7 Loading Skills
 
if %p1.esc.sr%==0  set/a p1.esc.sm=%skill.0.sm% 
if %p1.esc.sr%==0  set/a p1.esc.sc=%p1.esc.sv% * %skill.0.sc% / 10 
if %p1.esc.sr%==0  set/a p1.esc.sx=%p1.esc.sv% * %skill.0.sx% / 10 
if %p1.esc.sr%==0  set p1.esc.sd=Novice 
if %p2.esc.sr%==0  set/a p1.esc.sm=%skill.0.sm% 
if %p2.esc.sr%==0  set/a p1.esc.sc=%p1.esc.sv% * %skill.0.sc% / 10 
if %p2.esc.sr%==0  set/a p1.esc.sx=%p1.esc.sv% * %skill.0.sx% / 10 
if %p2.esc.sr%==0  set p1.esc.sd=Novice 
if %p1.esc.sr%==1  set/a p1.esc.sm=%skill.1.sm% 
if %p1.esc.sr%==1  set/a p1.esc.sc=%p1.esc.sv% * %skill.1.sc% / 10 
if %p1.esc.sr%==1  set/a p1.esc.sx=%p1.esc.sv% * %skill.1.sx% / 10 
if %p1.esc.sr%==1  set p1.esc.sd=F 
if %p2.esc.sr%==1  set/a p1.esc.sm=%skill.1.sm% 
if %p2.esc.sr%==1  set/a p1.esc.sc=%p1.esc.sv% * %skill.1.sc% / 10 
if %p2.esc.sr%==1  set/a p1.esc.sx=%p1.esc.sv% * %skill.1.sx% / 10 
if %p2.esc.sr%==1  set p1.esc.sd=F 
if %p1.esc.sr%==2  set/a p1.esc.sm=%skill.2.sm% 
if %p1.esc.sr%==2  set/a p1.esc.sc=%p1.esc.sv% * %skill.2.sc% / 10 
if %p1.esc.sr%==2  set/a p1.esc.sx=%p1.esc.sv% * %skill.2.sx% / 10 
if %p1.esc.sr%==2  set p1.esc.sd=E 
if %p2.esc.sr%==2  set/a p1.esc.sm=%skill.2.sm% 
if %p2.esc.sr%==2  set/a p1.esc.sc=%p1.esc.sv% * %skill.2.sc% / 10 
if %p2.esc.sr%==2  set/a p1.esc.sx=%p1.esc.sv% * %skill.2.sx% / 10 
if %p2.esc.sr%==2  set p1.esc.sd=E 
if %p1.esc.sr%==3  set/a p1.esc.sm=%skill.3.sm% 
if %p1.esc.sr%==3  set/a p1.esc.sc=%p1.esc.sv% * %skill.3.sc% / 10 
if %p1.esc.sr%==3  set/a p1.esc.sx=%p1.esc.sv% * %skill.3.sx% / 10 
if %p1.esc.sr%==3  set p1.esc.sd=D 
if %p2.esc.sr%==3  set/a p1.esc.sm=%skill.3.sm% 
if %p2.esc.sr%==3  set/a p1.esc.sc=%p1.esc.sv% * %skill.3.sc% / 10 
if %p2.esc.sr%==3  set/a p1.esc.sx=%p1.esc.sv% * %skill.3.sx% / 10 
if %p2.esc.sr%==3  set p1.esc.sd=D 
if %p1.esc.sr%==4  set/a p1.esc.sm=%skill.4.sm% 
if %p1.esc.sr%==4  set/a p1.esc.sc=%p1.esc.sv% * %skill.4.sc% / 10 
if %p1.esc.sr%==4  set/a p1.esc.sx=%p1.esc.sv% * %skill.4.sx% / 10 
if %p1.esc.sr%==4  set p1.esc.sd=C 
if %p2.esc.sr%==4  set/a p1.esc.sm=%skill.4.sm% 
if %p2.esc.sr%==4  set/a p1.esc.sc=%p1.esc.sv% * %skill.4.sc% / 10 
if %p2.esc.sr%==4  set/a p1.esc.sx=%p1.esc.sv% * %skill.4.sx% / 10 
if %p2.esc.sr%==4  set p1.esc.sd=C 
if %p1.esc.sr%==5  set/a p1.esc.sm=%skill.5.sm% 
if %p1.esc.sr%==5  set/a p1.esc.sc=%p1.esc.sv% * %skill.5.sc% / 10 
if %p1.esc.sr%==5  set/a p1.esc.sx=%p1.esc.sv% * %skill.5.sx% / 10 
if %p1.esc.sr%==5  set p1.esc.sd=B 
if %p2.esc.sr%==5  set/a p1.esc.sm=%skill.5.sm% 
if %p2.esc.sr%==5  set/a p1.esc.sc=%p1.esc.sv% * %skill.5.sc% / 10 
if %p2.esc.sr%==5  set/a p1.esc.sx=%p1.esc.sv% * %skill.5.sx% / 10 
if %p2.esc.sr%==5  set p1.esc.sd=B 
if %p1.esc.sr%==6  set/a p1.esc.sm=%skill.6.sm% 
if %p1.esc.sr%==6  set/a p1.esc.sc=%p1.esc.sv% * %skill.6.sc% / 10 
if %p1.esc.sr%==6  set/a p1.esc.sx=%p1.esc.sv% * %skill.6.sx% / 10 
if %p1.esc.sr%==6  set p1.esc.sd=A 
if %p2.esc.sr%==6  set/a p1.esc.sm=%skill.6.sm% 
if %p2.esc.sr%==6  set/a p1.esc.sc=%p1.esc.sv% * %skill.6.sc% / 10 
if %p2.esc.sr%==6  set/a p1.esc.sx=%p1.esc.sv% * %skill.6.sx% / 10 
if %p2.esc.sr%==6  set p1.esc.sd=A 
if %p1.esc.sr%==7  set/a p1.esc.sm=%skill.7.sm% 
if %p1.esc.sr%==7  set/a p1.esc.sc=%p1.esc.sv% * %skill.7.sc% / 10 
if %p1.esc.sr%==7  set/a p1.esc.sx=%p1.esc.sv% * %skill.7.sx% / 10 
if %p1.esc.sr%==7  set p1.esc.sd=9 
if %p2.esc.sr%==7  set/a p1.esc.sm=%skill.7.sm% 
if %p2.esc.sr%==7  set/a p1.esc.sc=%p1.esc.sv% * %skill.7.sc% / 10 
if %p2.esc.sr%==7  set/a p1.esc.sx=%p1.esc.sv% * %skill.7.sx% / 10 
if %p2.esc.sr%==7  set p1.esc.sd=9 
if %p1.esc.sr%==8  set/a p1.esc.sm=%skill.8.sm% 
if %p1.esc.sr%==8  set/a p1.esc.sc=%p1.esc.sv% * %skill.8.sc% / 10 
if %p1.esc.sr%==8  set/a p1.esc.sx=%p1.esc.sv% * %skill.8.sx% / 10 
if %p1.esc.sr%==8  set p1.esc.sd=8 
if %p2.esc.sr%==8  set/a p1.esc.sm=%skill.8.sm% 
if %p2.esc.sr%==8  set/a p1.esc.sc=%p1.esc.sv% * %skill.8.sc% / 10 
if %p2.esc.sr%==8  set/a p1.esc.sx=%p1.esc.sv% * %skill.8.sx% / 10 
if %p2.esc.sr%==8  set p1.esc.sd=8 
if %p1.esc.sr%==9  set/a p1.esc.sm=%skill.9.sm% 
if %p1.esc.sr%==9  set/a p1.esc.sc=%p1.esc.sv% * %skill.9.sc% / 10 
if %p1.esc.sr%==9  set/a p1.esc.sx=%p1.esc.sv% * %skill.9.sx% / 10 
if %p1.esc.sr%==9  set p1.esc.sd=7 
if %p2.esc.sr%==9  set/a p1.esc.sm=%skill.9.sm% 
if %p2.esc.sr%==9  set/a p1.esc.sc=%p1.esc.sv% * %skill.9.sc% / 10 
if %p2.esc.sr%==9  set/a p1.esc.sx=%p1.esc.sv% * %skill.9.sx% / 10 
if %p2.esc.sr%==9  set p1.esc.sd=7 
if %p1.esc.sr%==10  set/a p1.esc.sm=%skill.10.sm% 
if %p1.esc.sr%==10  set/a p1.esc.sc=%p1.esc.sv% * %skill.10.sc% / 10 
if %p1.esc.sr%==10  set/a p1.esc.sx=%p1.esc.sv% * %skill.10.sx% / 10 
if %p1.esc.sr%==10  set p1.esc.sd=6 
if %p2.esc.sr%==10  set/a p1.esc.sm=%skill.10.sm% 
if %p2.esc.sr%==10  set/a p1.esc.sc=%p1.esc.sv% * %skill.10.sc% / 10 
if %p2.esc.sr%==10  set/a p1.esc.sx=%p1.esc.sv% * %skill.10.sx% / 10 
if %p2.esc.sr%==10  set p1.esc.sd=6 
if %p1.esc.sr%==11  set/a p1.esc.sm=%skill.11.sm% 
if %p1.esc.sr%==11  set/a p1.esc.sc=%p1.esc.sv% * %skill.11.sc% / 10 
if %p1.esc.sr%==11  set/a p1.esc.sx=%p1.esc.sv% * %skill.11.sx% / 10 
if %p1.esc.sr%==11  set p1.esc.sd=5 
if %p2.esc.sr%==11  set/a p1.esc.sm=%skill.11.sm% 
if %p2.esc.sr%==11  set/a p1.esc.sc=%p1.esc.sv% * %skill.11.sc% / 10 
if %p2.esc.sr%==11  set/a p1.esc.sx=%p1.esc.sv% * %skill.11.sx% / 10 
if %p2.esc.sr%==11  set p1.esc.sd=5 
if %p1.esc.sr%==12  set/a p1.esc.sm=%skill.12.sm% 
if %p1.esc.sr%==12  set/a p1.esc.sc=%p1.esc.sv% * %skill.12.sc% / 10 
if %p1.esc.sr%==12  set/a p1.esc.sx=%p1.esc.sv% * %skill.12.sx% / 10 
if %p1.esc.sr%==12  set p1.esc.sd=4 
if %p2.esc.sr%==12  set/a p1.esc.sm=%skill.12.sm% 
if %p2.esc.sr%==12  set/a p1.esc.sc=%p1.esc.sv% * %skill.12.sc% / 10 
if %p2.esc.sr%==12  set/a p1.esc.sx=%p1.esc.sv% * %skill.12.sx% / 10 
if %p2.esc.sr%==12  set p1.esc.sd=4 
if %p1.esc.sr%==13  set/a p1.esc.sm=%skill.13.sm% 
if %p1.esc.sr%==13  set/a p1.esc.sc=%p1.esc.sv% * %skill.13.sc% / 10 
if %p1.esc.sr%==13  set/a p1.esc.sx=%p1.esc.sv% * %skill.13.sx% / 10 
if %p1.esc.sr%==13  set p1.esc.sd=3 
if %p2.esc.sr%==13  set/a p1.esc.sm=%skill.13.sm% 
if %p2.esc.sr%==13  set/a p1.esc.sc=%p1.esc.sv% * %skill.13.sc% / 10 
if %p2.esc.sr%==13  set/a p1.esc.sx=%p1.esc.sv% * %skill.13.sx% / 10 
if %p2.esc.sr%==13  set p1.esc.sd=3 
if %p1.esc.sr%==14  set/a p1.esc.sm=%skill.14.sm% 
if %p1.esc.sr%==14  set/a p1.esc.sc=%p1.esc.sv% * %skill.14.sc% / 10 
if %p1.esc.sr%==14  set/a p1.esc.sx=%p1.esc.sv% * %skill.14.sx% / 10 
if %p1.esc.sr%==14  set p1.esc.sd=2 
if %p2.esc.sr%==14  set/a p1.esc.sm=%skill.14.sm% 
if %p2.esc.sr%==14  set/a p1.esc.sc=%p1.esc.sv% * %skill.14.sc% / 10 
if %p2.esc.sr%==14  set/a p1.esc.sx=%p1.esc.sv% * %skill.14.sx% / 10 
if %p2.esc.sr%==14  set p1.esc.sd=2 
if %p1.esc.sr%==15  set/a p1.esc.sm=%skill.15.sm% 
if %p1.esc.sr%==15  set/a p1.esc.sc=%p1.esc.sv% * %skill.15.sc% / 10 
if %p1.esc.sr%==15  set/a p1.esc.sx=%p1.esc.sv% * %skill.15.sx% / 10 
if %p1.esc.sr%==15  set p1.esc.sd=1 
if %p2.esc.sr%==15  set/a p1.esc.sm=%skill.15.sm% 
if %p2.esc.sr%==15  set/a p1.esc.sc=%p1.esc.sv% * %skill.15.sc% / 10 
if %p2.esc.sr%==15  set/a p1.esc.sx=%p1.esc.sv% * %skill.15.sx% / 10 
if %p2.esc.sr%==15  set p1.esc.sd=1 
 
if %p1.clr.sr%==0  set/a p1.clr.sm=%skill.0.sm% 
if %p1.clr.sr%==0  set/a p1.clr.sc=%p1.clr.sv% * %skill.0.sc% / 10 
if %p1.clr.sr%==0  set/a p1.clr.sx=%p1.clr.sv% * %skill.0.sx% / 10 
if %p1.clr.sr%==0  set p1.clr.sd=Novice 
if %p2.clr.sr%==0  set/a p1.clr.sm=%skill.0.sm% 
if %p2.clr.sr%==0  set/a p1.clr.sc=%p1.clr.sv% * %skill.0.sc% / 10 
if %p2.clr.sr%==0  set/a p1.clr.sx=%p1.clr.sv% * %skill.0.sx% / 10 
if %p2.clr.sr%==0  set p1.clr.sd=Novice 
if %p1.clr.sr%==1  set/a p1.clr.sm=%skill.1.sm% 
if %p1.clr.sr%==1  set/a p1.clr.sc=%p1.clr.sv% * %skill.1.sc% / 10 
if %p1.clr.sr%==1  set/a p1.clr.sx=%p1.clr.sv% * %skill.1.sx% / 10 
if %p1.clr.sr%==1  set p1.clr.sd=F 
if %p2.clr.sr%==1  set/a p1.clr.sm=%skill.1.sm% 
if %p2.clr.sr%==1  set/a p1.clr.sc=%p1.clr.sv% * %skill.1.sc% / 10 
if %p2.clr.sr%==1  set/a p1.clr.sx=%p1.clr.sv% * %skill.1.sx% / 10 
if %p2.clr.sr%==1  set p1.clr.sd=F 
if %p1.clr.sr%==2  set/a p1.clr.sm=%skill.2.sm% 
if %p1.clr.sr%==2  set/a p1.clr.sc=%p1.clr.sv% * %skill.2.sc% / 10 
if %p1.clr.sr%==2  set/a p1.clr.sx=%p1.clr.sv% * %skill.2.sx% / 10 
if %p1.clr.sr%==2  set p1.clr.sd=E 
if %p2.clr.sr%==2  set/a p1.clr.sm=%skill.2.sm% 
if %p2.clr.sr%==2  set/a p1.clr.sc=%p1.clr.sv% * %skill.2.sc% / 10 
if %p2.clr.sr%==2  set/a p1.clr.sx=%p1.clr.sv% * %skill.2.sx% / 10 
if %p2.clr.sr%==2  set p1.clr.sd=E 
if %p1.clr.sr%==3  set/a p1.clr.sm=%skill.3.sm% 
if %p1.clr.sr%==3  set/a p1.clr.sc=%p1.clr.sv% * %skill.3.sc% / 10 
if %p1.clr.sr%==3  set/a p1.clr.sx=%p1.clr.sv% * %skill.3.sx% / 10 
if %p1.clr.sr%==3  set p1.clr.sd=D 
if %p2.clr.sr%==3  set/a p1.clr.sm=%skill.3.sm% 
if %p2.clr.sr%==3  set/a p1.clr.sc=%p1.clr.sv% * %skill.3.sc% / 10 
if %p2.clr.sr%==3  set/a p1.clr.sx=%p1.clr.sv% * %skill.3.sx% / 10 
if %p2.clr.sr%==3  set p1.clr.sd=D 
if %p1.clr.sr%==4  set/a p1.clr.sm=%skill.4.sm% 
if %p1.clr.sr%==4  set/a p1.clr.sc=%p1.clr.sv% * %skill.4.sc% / 10 
if %p1.clr.sr%==4  set/a p1.clr.sx=%p1.clr.sv% * %skill.4.sx% / 10 
if %p1.clr.sr%==4  set p1.clr.sd=C 
if %p2.clr.sr%==4  set/a p1.clr.sm=%skill.4.sm% 
if %p2.clr.sr%==4  set/a p1.clr.sc=%p1.clr.sv% * %skill.4.sc% / 10 
if %p2.clr.sr%==4  set/a p1.clr.sx=%p1.clr.sv% * %skill.4.sx% / 10 
if %p2.clr.sr%==4  set p1.clr.sd=C 
if %p1.clr.sr%==5  set/a p1.clr.sm=%skill.5.sm% 
if %p1.clr.sr%==5  set/a p1.clr.sc=%p1.clr.sv% * %skill.5.sc% / 10 
if %p1.clr.sr%==5  set/a p1.clr.sx=%p1.clr.sv% * %skill.5.sx% / 10 
if %p1.clr.sr%==5  set p1.clr.sd=B 
if %p2.clr.sr%==5  set/a p1.clr.sm=%skill.5.sm% 
if %p2.clr.sr%==5  set/a p1.clr.sc=%p1.clr.sv% * %skill.5.sc% / 10 
if %p2.clr.sr%==5  set/a p1.clr.sx=%p1.clr.sv% * %skill.5.sx% / 10 
if %p2.clr.sr%==5  set p1.clr.sd=B 
if %p1.clr.sr%==6  set/a p1.clr.sm=%skill.6.sm% 
if %p1.clr.sr%==6  set/a p1.clr.sc=%p1.clr.sv% * %skill.6.sc% / 10 
if %p1.clr.sr%==6  set/a p1.clr.sx=%p1.clr.sv% * %skill.6.sx% / 10 
if %p1.clr.sr%==6  set p1.clr.sd=A 
if %p2.clr.sr%==6  set/a p1.clr.sm=%skill.6.sm% 
if %p2.clr.sr%==6  set/a p1.clr.sc=%p1.clr.sv% * %skill.6.sc% / 10 
if %p2.clr.sr%==6  set/a p1.clr.sx=%p1.clr.sv% * %skill.6.sx% / 10 
if %p2.clr.sr%==6  set p1.clr.sd=A 
if %p1.clr.sr%==7  set/a p1.clr.sm=%skill.7.sm% 
if %p1.clr.sr%==7  set/a p1.clr.sc=%p1.clr.sv% * %skill.7.sc% / 10 
if %p1.clr.sr%==7  set/a p1.clr.sx=%p1.clr.sv% * %skill.7.sx% / 10 
if %p1.clr.sr%==7  set p1.clr.sd=9 
if %p2.clr.sr%==7  set/a p1.clr.sm=%skill.7.sm% 
if %p2.clr.sr%==7  set/a p1.clr.sc=%p1.clr.sv% * %skill.7.sc% / 10 
if %p2.clr.sr%==7  set/a p1.clr.sx=%p1.clr.sv% * %skill.7.sx% / 10 
if %p2.clr.sr%==7  set p1.clr.sd=9 
if %p1.clr.sr%==8  set/a p1.clr.sm=%skill.8.sm% 
if %p1.clr.sr%==8  set/a p1.clr.sc=%p1.clr.sv% * %skill.8.sc% / 10 
if %p1.clr.sr%==8  set/a p1.clr.sx=%p1.clr.sv% * %skill.8.sx% / 10 
if %p1.clr.sr%==8  set p1.clr.sd=8 
if %p2.clr.sr%==8  set/a p1.clr.sm=%skill.8.sm% 
if %p2.clr.sr%==8  set/a p1.clr.sc=%p1.clr.sv% * %skill.8.sc% / 10 
if %p2.clr.sr%==8  set/a p1.clr.sx=%p1.clr.sv% * %skill.8.sx% / 10 
if %p2.clr.sr%==8  set p1.clr.sd=8 
if %p1.clr.sr%==9  set/a p1.clr.sm=%skill.9.sm% 
if %p1.clr.sr%==9  set/a p1.clr.sc=%p1.clr.sv% * %skill.9.sc% / 10 
if %p1.clr.sr%==9  set/a p1.clr.sx=%p1.clr.sv% * %skill.9.sx% / 10 
if %p1.clr.sr%==9  set p1.clr.sd=7 
if %p2.clr.sr%==9  set/a p1.clr.sm=%skill.9.sm% 
if %p2.clr.sr%==9  set/a p1.clr.sc=%p1.clr.sv% * %skill.9.sc% / 10 
if %p2.clr.sr%==9  set/a p1.clr.sx=%p1.clr.sv% * %skill.9.sx% / 10 
if %p2.clr.sr%==9  set p1.clr.sd=7 
if %p1.clr.sr%==10  set/a p1.clr.sm=%skill.10.sm% 
if %p1.clr.sr%==10  set/a p1.clr.sc=%p1.clr.sv% * %skill.10.sc% / 10 
if %p1.clr.sr%==10  set/a p1.clr.sx=%p1.clr.sv% * %skill.10.sx% / 10 
if %p1.clr.sr%==10  set p1.clr.sd=6 
if %p2.clr.sr%==10  set/a p1.clr.sm=%skill.10.sm% 
if %p2.clr.sr%==10  set/a p1.clr.sc=%p1.clr.sv% * %skill.10.sc% / 10 
if %p2.clr.sr%==10  set/a p1.clr.sx=%p1.clr.sv% * %skill.10.sx% / 10 
if %p2.clr.sr%==10  set p1.clr.sd=6 
if %p1.clr.sr%==11  set/a p1.clr.sm=%skill.11.sm% 
if %p1.clr.sr%==11  set/a p1.clr.sc=%p1.clr.sv% * %skill.11.sc% / 10 
if %p1.clr.sr%==11  set/a p1.clr.sx=%p1.clr.sv% * %skill.11.sx% / 10 
if %p1.clr.sr%==11  set p1.clr.sd=5 
if %p2.clr.sr%==11  set/a p1.clr.sm=%skill.11.sm% 
if %p2.clr.sr%==11  set/a p1.clr.sc=%p1.clr.sv% * %skill.11.sc% / 10 
if %p2.clr.sr%==11  set/a p1.clr.sx=%p1.clr.sv% * %skill.11.sx% / 10 
if %p2.clr.sr%==11  set p1.clr.sd=5 
if %p1.clr.sr%==12  set/a p1.clr.sm=%skill.12.sm% 
if %p1.clr.sr%==12  set/a p1.clr.sc=%p1.clr.sv% * %skill.12.sc% / 10 
if %p1.clr.sr%==12  set/a p1.clr.sx=%p1.clr.sv% * %skill.12.sx% / 10 
if %p1.clr.sr%==12  set p1.clr.sd=4 
if %p2.clr.sr%==12  set/a p1.clr.sm=%skill.12.sm% 
if %p2.clr.sr%==12  set/a p1.clr.sc=%p1.clr.sv% * %skill.12.sc% / 10 
if %p2.clr.sr%==12  set/a p1.clr.sx=%p1.clr.sv% * %skill.12.sx% / 10 
if %p2.clr.sr%==12  set p1.clr.sd=4 
if %p1.clr.sr%==13  set/a p1.clr.sm=%skill.13.sm% 
if %p1.clr.sr%==13  set/a p1.clr.sc=%p1.clr.sv% * %skill.13.sc% / 10 
if %p1.clr.sr%==13  set/a p1.clr.sx=%p1.clr.sv% * %skill.13.sx% / 10 
if %p1.clr.sr%==13  set p1.clr.sd=3 
if %p2.clr.sr%==13  set/a p1.clr.sm=%skill.13.sm% 
if %p2.clr.sr%==13  set/a p1.clr.sc=%p1.clr.sv% * %skill.13.sc% / 10 
if %p2.clr.sr%==13  set/a p1.clr.sx=%p1.clr.sv% * %skill.13.sx% / 10 
if %p2.clr.sr%==13  set p1.clr.sd=3 
if %p1.clr.sr%==14  set/a p1.clr.sm=%skill.14.sm% 
if %p1.clr.sr%==14  set/a p1.clr.sc=%p1.clr.sv% * %skill.14.sc% / 10 
if %p1.clr.sr%==14  set/a p1.clr.sx=%p1.clr.sv% * %skill.14.sx% / 10 
if %p1.clr.sr%==14  set p1.clr.sd=2 
if %p2.clr.sr%==14  set/a p1.clr.sm=%skill.14.sm% 
if %p2.clr.sr%==14  set/a p1.clr.sc=%p1.clr.sv% * %skill.14.sc% / 10 
if %p2.clr.sr%==14  set/a p1.clr.sx=%p1.clr.sv% * %skill.14.sx% / 10 
if %p2.clr.sr%==14  set p1.clr.sd=2 
if %p1.clr.sr%==15  set/a p1.clr.sm=%skill.15.sm% 
if %p1.clr.sr%==15  set/a p1.clr.sc=%p1.clr.sv% * %skill.15.sc% / 10 
if %p1.clr.sr%==15  set/a p1.clr.sx=%p1.clr.sv% * %skill.15.sx% / 10 
if %p1.clr.sr%==15  set p1.clr.sd=1 
if %p2.clr.sr%==15  set/a p1.clr.sm=%skill.15.sm% 
if %p2.clr.sr%==15  set/a p1.clr.sc=%p1.clr.sv% * %skill.15.sc% / 10 
if %p2.clr.sr%==15  set/a p1.clr.sx=%p1.clr.sv% * %skill.15.sx% / 10 
if %p2.clr.sr%==15  set p1.clr.sd=1 
 
if %p1.hly.sr%==0  set/a p1.hly.sm=%skill.0.sm% 
if %p1.hly.sr%==0  set/a p1.hly.sc=%p1.hly.sv% * %skill.0.sc% / 10 
if %p1.hly.sr%==0  set/a p1.hly.sx=%p1.hly.sv% * %skill.0.sx% / 10 
if %p1.hly.sr%==0  set p1.hly.sd=Novice 
if %p2.hly.sr%==0  set/a p1.hly.sm=%skill.0.sm% 
if %p2.hly.sr%==0  set/a p1.hly.sc=%p1.hly.sv% * %skill.0.sc% / 10 
if %p2.hly.sr%==0  set/a p1.hly.sx=%p1.hly.sv% * %skill.0.sx% / 10 
if %p2.hly.sr%==0  set p1.hly.sd=Novice 
if %p1.hly.sr%==1  set/a p1.hly.sm=%skill.1.sm% 
if %p1.hly.sr%==1  set/a p1.hly.sc=%p1.hly.sv% * %skill.1.sc% / 10 
if %p1.hly.sr%==1  set/a p1.hly.sx=%p1.hly.sv% * %skill.1.sx% / 10 
if %p1.hly.sr%==1  set p1.hly.sd=F 
if %p2.hly.sr%==1  set/a p1.hly.sm=%skill.1.sm% 
if %p2.hly.sr%==1  set/a p1.hly.sc=%p1.hly.sv% * %skill.1.sc% / 10 
if %p2.hly.sr%==1  set/a p1.hly.sx=%p1.hly.sv% * %skill.1.sx% / 10 
if %p2.hly.sr%==1  set p1.hly.sd=F 
if %p1.hly.sr%==2  set/a p1.hly.sm=%skill.2.sm% 
if %p1.hly.sr%==2  set/a p1.hly.sc=%p1.hly.sv% * %skill.2.sc% / 10 
if %p1.hly.sr%==2  set/a p1.hly.sx=%p1.hly.sv% * %skill.2.sx% / 10 
if %p1.hly.sr%==2  set p1.hly.sd=E 
if %p2.hly.sr%==2  set/a p1.hly.sm=%skill.2.sm% 
if %p2.hly.sr%==2  set/a p1.hly.sc=%p1.hly.sv% * %skill.2.sc% / 10 
if %p2.hly.sr%==2  set/a p1.hly.sx=%p1.hly.sv% * %skill.2.sx% / 10 
if %p2.hly.sr%==2  set p1.hly.sd=E 
if %p1.hly.sr%==3  set/a p1.hly.sm=%skill.3.sm% 
if %p1.hly.sr%==3  set/a p1.hly.sc=%p1.hly.sv% * %skill.3.sc% / 10 
if %p1.hly.sr%==3  set/a p1.hly.sx=%p1.hly.sv% * %skill.3.sx% / 10 
if %p1.hly.sr%==3  set p1.hly.sd=D 
if %p2.hly.sr%==3  set/a p1.hly.sm=%skill.3.sm% 
if %p2.hly.sr%==3  set/a p1.hly.sc=%p1.hly.sv% * %skill.3.sc% / 10 
if %p2.hly.sr%==3  set/a p1.hly.sx=%p1.hly.sv% * %skill.3.sx% / 10 
if %p2.hly.sr%==3  set p1.hly.sd=D 
if %p1.hly.sr%==4  set/a p1.hly.sm=%skill.4.sm% 
if %p1.hly.sr%==4  set/a p1.hly.sc=%p1.hly.sv% * %skill.4.sc% / 10 
if %p1.hly.sr%==4  set/a p1.hly.sx=%p1.hly.sv% * %skill.4.sx% / 10 
if %p1.hly.sr%==4  set p1.hly.sd=C 
if %p2.hly.sr%==4  set/a p1.hly.sm=%skill.4.sm% 
if %p2.hly.sr%==4  set/a p1.hly.sc=%p1.hly.sv% * %skill.4.sc% / 10 
if %p2.hly.sr%==4  set/a p1.hly.sx=%p1.hly.sv% * %skill.4.sx% / 10 
if %p2.hly.sr%==4  set p1.hly.sd=C 
if %p1.hly.sr%==5  set/a p1.hly.sm=%skill.5.sm% 
if %p1.hly.sr%==5  set/a p1.hly.sc=%p1.hly.sv% * %skill.5.sc% / 10 
if %p1.hly.sr%==5  set/a p1.hly.sx=%p1.hly.sv% * %skill.5.sx% / 10 
if %p1.hly.sr%==5  set p1.hly.sd=B 
if %p2.hly.sr%==5  set/a p1.hly.sm=%skill.5.sm% 
if %p2.hly.sr%==5  set/a p1.hly.sc=%p1.hly.sv% * %skill.5.sc% / 10 
if %p2.hly.sr%==5  set/a p1.hly.sx=%p1.hly.sv% * %skill.5.sx% / 10 
if %p2.hly.sr%==5  set p1.hly.sd=B 
if %p1.hly.sr%==6  set/a p1.hly.sm=%skill.6.sm% 
if %p1.hly.sr%==6  set/a p1.hly.sc=%p1.hly.sv% * %skill.6.sc% / 10 
if %p1.hly.sr%==6  set/a p1.hly.sx=%p1.hly.sv% * %skill.6.sx% / 10 
if %p1.hly.sr%==6  set p1.hly.sd=A 
if %p2.hly.sr%==6  set/a p1.hly.sm=%skill.6.sm% 
if %p2.hly.sr%==6  set/a p1.hly.sc=%p1.hly.sv% * %skill.6.sc% / 10 
if %p2.hly.sr%==6  set/a p1.hly.sx=%p1.hly.sv% * %skill.6.sx% / 10 
if %p2.hly.sr%==6  set p1.hly.sd=A 
if %p1.hly.sr%==7  set/a p1.hly.sm=%skill.7.sm% 
if %p1.hly.sr%==7  set/a p1.hly.sc=%p1.hly.sv% * %skill.7.sc% / 10 
if %p1.hly.sr%==7  set/a p1.hly.sx=%p1.hly.sv% * %skill.7.sx% / 10 
if %p1.hly.sr%==7  set p1.hly.sd=9 
if %p2.hly.sr%==7  set/a p1.hly.sm=%skill.7.sm% 
if %p2.hly.sr%==7  set/a p1.hly.sc=%p1.hly.sv% * %skill.7.sc% / 10 
if %p2.hly.sr%==7  set/a p1.hly.sx=%p1.hly.sv% * %skill.7.sx% / 10 
if %p2.hly.sr%==7  set p1.hly.sd=9 
if %p1.hly.sr%==8  set/a p1.hly.sm=%skill.8.sm% 
if %p1.hly.sr%==8  set/a p1.hly.sc=%p1.hly.sv% * %skill.8.sc% / 10 
if %p1.hly.sr%==8  set/a p1.hly.sx=%p1.hly.sv% * %skill.8.sx% / 10 
if %p1.hly.sr%==8  set p1.hly.sd=8 
if %p2.hly.sr%==8  set/a p1.hly.sm=%skill.8.sm% 
if %p2.hly.sr%==8  set/a p1.hly.sc=%p1.hly.sv% * %skill.8.sc% / 10 
if %p2.hly.sr%==8  set/a p1.hly.sx=%p1.hly.sv% * %skill.8.sx% / 10 
if %p2.hly.sr%==8  set p1.hly.sd=8 
if %p1.hly.sr%==9  set/a p1.hly.sm=%skill.9.sm% 
if %p1.hly.sr%==9  set/a p1.hly.sc=%p1.hly.sv% * %skill.9.sc% / 10 
if %p1.hly.sr%==9  set/a p1.hly.sx=%p1.hly.sv% * %skill.9.sx% / 10 
if %p1.hly.sr%==9  set p1.hly.sd=7 
if %p2.hly.sr%==9  set/a p1.hly.sm=%skill.9.sm% 
if %p2.hly.sr%==9  set/a p1.hly.sc=%p1.hly.sv% * %skill.9.sc% / 10 
if %p2.hly.sr%==9  set/a p1.hly.sx=%p1.hly.sv% * %skill.9.sx% / 10 
if %p2.hly.sr%==9  set p1.hly.sd=7 
if %p1.hly.sr%==10  set/a p1.hly.sm=%skill.10.sm% 
if %p1.hly.sr%==10  set/a p1.hly.sc=%p1.hly.sv% * %skill.10.sc% / 10 
if %p1.hly.sr%==10  set/a p1.hly.sx=%p1.hly.sv% * %skill.10.sx% / 10 
if %p1.hly.sr%==10  set p1.hly.sd=6 
if %p2.hly.sr%==10  set/a p1.hly.sm=%skill.10.sm% 
if %p2.hly.sr%==10  set/a p1.hly.sc=%p1.hly.sv% * %skill.10.sc% / 10 
if %p2.hly.sr%==10  set/a p1.hly.sx=%p1.hly.sv% * %skill.10.sx% / 10 
if %p2.hly.sr%==10  set p1.hly.sd=6 
if %p1.hly.sr%==11  set/a p1.hly.sm=%skill.11.sm% 
if %p1.hly.sr%==11  set/a p1.hly.sc=%p1.hly.sv% * %skill.11.sc% / 10 
if %p1.hly.sr%==11  set/a p1.hly.sx=%p1.hly.sv% * %skill.11.sx% / 10 
if %p1.hly.sr%==11  set p1.hly.sd=5 
if %p2.hly.sr%==11  set/a p1.hly.sm=%skill.11.sm% 
if %p2.hly.sr%==11  set/a p1.hly.sc=%p1.hly.sv% * %skill.11.sc% / 10 
if %p2.hly.sr%==11  set/a p1.hly.sx=%p1.hly.sv% * %skill.11.sx% / 10 
if %p2.hly.sr%==11  set p1.hly.sd=5 
if %p1.hly.sr%==12  set/a p1.hly.sm=%skill.12.sm% 
if %p1.hly.sr%==12  set/a p1.hly.sc=%p1.hly.sv% * %skill.12.sc% / 10 
if %p1.hly.sr%==12  set/a p1.hly.sx=%p1.hly.sv% * %skill.12.sx% / 10 
if %p1.hly.sr%==12  set p1.hly.sd=4 
if %p2.hly.sr%==12  set/a p1.hly.sm=%skill.12.sm% 
if %p2.hly.sr%==12  set/a p1.hly.sc=%p1.hly.sv% * %skill.12.sc% / 10 
if %p2.hly.sr%==12  set/a p1.hly.sx=%p1.hly.sv% * %skill.12.sx% / 10 
if %p2.hly.sr%==12  set p1.hly.sd=4 
if %p1.hly.sr%==13  set/a p1.hly.sm=%skill.13.sm% 
if %p1.hly.sr%==13  set/a p1.hly.sc=%p1.hly.sv% * %skill.13.sc% / 10 
if %p1.hly.sr%==13  set/a p1.hly.sx=%p1.hly.sv% * %skill.13.sx% / 10 
if %p1.hly.sr%==13  set p1.hly.sd=3 
if %p2.hly.sr%==13  set/a p1.hly.sm=%skill.13.sm% 
if %p2.hly.sr%==13  set/a p1.hly.sc=%p1.hly.sv% * %skill.13.sc% / 10 
if %p2.hly.sr%==13  set/a p1.hly.sx=%p1.hly.sv% * %skill.13.sx% / 10 
if %p2.hly.sr%==13  set p1.hly.sd=3 
if %p1.hly.sr%==14  set/a p1.hly.sm=%skill.14.sm% 
if %p1.hly.sr%==14  set/a p1.hly.sc=%p1.hly.sv% * %skill.14.sc% / 10 
if %p1.hly.sr%==14  set/a p1.hly.sx=%p1.hly.sv% * %skill.14.sx% / 10 
if %p1.hly.sr%==14  set p1.hly.sd=2 
if %p2.hly.sr%==14  set/a p1.hly.sm=%skill.14.sm% 
if %p2.hly.sr%==14  set/a p1.hly.sc=%p1.hly.sv% * %skill.14.sc% / 10 
if %p2.hly.sr%==14  set/a p1.hly.sx=%p1.hly.sv% * %skill.14.sx% / 10 
if %p2.hly.sr%==14  set p1.hly.sd=2 
if %p1.hly.sr%==15  set/a p1.hly.sm=%skill.15.sm% 
if %p1.hly.sr%==15  set/a p1.hly.sc=%p1.hly.sv% * %skill.15.sc% / 10 
if %p1.hly.sr%==15  set/a p1.hly.sx=%p1.hly.sv% * %skill.15.sx% / 10 
if %p1.hly.sr%==15  set p1.hly.sd=1 
if %p2.hly.sr%==15  set/a p1.hly.sm=%skill.15.sm% 
if %p2.hly.sr%==15  set/a p1.hly.sc=%p1.hly.sv% * %skill.15.sc% / 10 
if %p2.hly.sr%==15  set/a p1.hly.sx=%p1.hly.sv% * %skill.15.sx% / 10 
if %p2.hly.sr%==15  set p1.hly.sd=1 

call:funct.loadbar 8 Loading Skills
 
if %p1.cer.sr%==0  set/a p1.cer.sm=%skill.0.sm% 
if %p1.cer.sr%==0  set/a p1.cer.sc=%p1.cer.sv% * %skill.0.sc% / 10 
if %p1.cer.sr%==0  set/a p1.cer.sx=%p1.cer.sv% * %skill.0.sx% / 10 
if %p1.cer.sr%==0  set p1.cer.sd=Novice 
if %p2.cer.sr%==0  set/a p1.cer.sm=%skill.0.sm% 
if %p2.cer.sr%==0  set/a p1.cer.sc=%p1.cer.sv% * %skill.0.sc% / 10 
if %p2.cer.sr%==0  set/a p1.cer.sx=%p1.cer.sv% * %skill.0.sx% / 10 
if %p2.cer.sr%==0  set p1.cer.sd=Novice 
if %p1.cer.sr%==1  set/a p1.cer.sm=%skill.1.sm% 
if %p1.cer.sr%==1  set/a p1.cer.sc=%p1.cer.sv% * %skill.1.sc% / 10 
if %p1.cer.sr%==1  set/a p1.cer.sx=%p1.cer.sv% * %skill.1.sx% / 10 
if %p1.cer.sr%==1  set p1.cer.sd=F 
if %p2.cer.sr%==1  set/a p1.cer.sm=%skill.1.sm% 
if %p2.cer.sr%==1  set/a p1.cer.sc=%p1.cer.sv% * %skill.1.sc% / 10 
if %p2.cer.sr%==1  set/a p1.cer.sx=%p1.cer.sv% * %skill.1.sx% / 10 
if %p2.cer.sr%==1  set p1.cer.sd=F 
if %p1.cer.sr%==2  set/a p1.cer.sm=%skill.2.sm% 
if %p1.cer.sr%==2  set/a p1.cer.sc=%p1.cer.sv% * %skill.2.sc% / 10 
if %p1.cer.sr%==2  set/a p1.cer.sx=%p1.cer.sv% * %skill.2.sx% / 10 
if %p1.cer.sr%==2  set p1.cer.sd=E 
if %p2.cer.sr%==2  set/a p1.cer.sm=%skill.2.sm% 
if %p2.cer.sr%==2  set/a p1.cer.sc=%p1.cer.sv% * %skill.2.sc% / 10 
if %p2.cer.sr%==2  set/a p1.cer.sx=%p1.cer.sv% * %skill.2.sx% / 10 
if %p2.cer.sr%==2  set p1.cer.sd=E 
if %p1.cer.sr%==3  set/a p1.cer.sm=%skill.3.sm% 
if %p1.cer.sr%==3  set/a p1.cer.sc=%p1.cer.sv% * %skill.3.sc% / 10 
if %p1.cer.sr%==3  set/a p1.cer.sx=%p1.cer.sv% * %skill.3.sx% / 10 
if %p1.cer.sr%==3  set p1.cer.sd=D 
if %p2.cer.sr%==3  set/a p1.cer.sm=%skill.3.sm% 
if %p2.cer.sr%==3  set/a p1.cer.sc=%p1.cer.sv% * %skill.3.sc% / 10 
if %p2.cer.sr%==3  set/a p1.cer.sx=%p1.cer.sv% * %skill.3.sx% / 10 
if %p2.cer.sr%==3  set p1.cer.sd=D 
if %p1.cer.sr%==4  set/a p1.cer.sm=%skill.4.sm% 
if %p1.cer.sr%==4  set/a p1.cer.sc=%p1.cer.sv% * %skill.4.sc% / 10 
if %p1.cer.sr%==4  set/a p1.cer.sx=%p1.cer.sv% * %skill.4.sx% / 10 
if %p1.cer.sr%==4  set p1.cer.sd=C 
if %p2.cer.sr%==4  set/a p1.cer.sm=%skill.4.sm% 
if %p2.cer.sr%==4  set/a p1.cer.sc=%p1.cer.sv% * %skill.4.sc% / 10 
if %p2.cer.sr%==4  set/a p1.cer.sx=%p1.cer.sv% * %skill.4.sx% / 10 
if %p2.cer.sr%==4  set p1.cer.sd=C 
if %p1.cer.sr%==5  set/a p1.cer.sm=%skill.5.sm% 
if %p1.cer.sr%==5  set/a p1.cer.sc=%p1.cer.sv% * %skill.5.sc% / 10 
if %p1.cer.sr%==5  set/a p1.cer.sx=%p1.cer.sv% * %skill.5.sx% / 10 
if %p1.cer.sr%==5  set p1.cer.sd=B 
if %p2.cer.sr%==5  set/a p1.cer.sm=%skill.5.sm% 
if %p2.cer.sr%==5  set/a p1.cer.sc=%p1.cer.sv% * %skill.5.sc% / 10 
if %p2.cer.sr%==5  set/a p1.cer.sx=%p1.cer.sv% * %skill.5.sx% / 10 
if %p2.cer.sr%==5  set p1.cer.sd=B 
if %p1.cer.sr%==6  set/a p1.cer.sm=%skill.6.sm% 
if %p1.cer.sr%==6  set/a p1.cer.sc=%p1.cer.sv% * %skill.6.sc% / 10 
if %p1.cer.sr%==6  set/a p1.cer.sx=%p1.cer.sv% * %skill.6.sx% / 10 
if %p1.cer.sr%==6  set p1.cer.sd=A 
if %p2.cer.sr%==6  set/a p1.cer.sm=%skill.6.sm% 
if %p2.cer.sr%==6  set/a p1.cer.sc=%p1.cer.sv% * %skill.6.sc% / 10 
if %p2.cer.sr%==6  set/a p1.cer.sx=%p1.cer.sv% * %skill.6.sx% / 10 
if %p2.cer.sr%==6  set p1.cer.sd=A 
if %p1.cer.sr%==7  set/a p1.cer.sm=%skill.7.sm% 
if %p1.cer.sr%==7  set/a p1.cer.sc=%p1.cer.sv% * %skill.7.sc% / 10 
if %p1.cer.sr%==7  set/a p1.cer.sx=%p1.cer.sv% * %skill.7.sx% / 10 
if %p1.cer.sr%==7  set p1.cer.sd=9 
if %p2.cer.sr%==7  set/a p1.cer.sm=%skill.7.sm% 
if %p2.cer.sr%==7  set/a p1.cer.sc=%p1.cer.sv% * %skill.7.sc% / 10 
if %p2.cer.sr%==7  set/a p1.cer.sx=%p1.cer.sv% * %skill.7.sx% / 10 
if %p2.cer.sr%==7  set p1.cer.sd=9 
if %p1.cer.sr%==8  set/a p1.cer.sm=%skill.8.sm% 
if %p1.cer.sr%==8  set/a p1.cer.sc=%p1.cer.sv% * %skill.8.sc% / 10 
if %p1.cer.sr%==8  set/a p1.cer.sx=%p1.cer.sv% * %skill.8.sx% / 10 
if %p1.cer.sr%==8  set p1.cer.sd=8 
if %p2.cer.sr%==8  set/a p1.cer.sm=%skill.8.sm% 
if %p2.cer.sr%==8  set/a p1.cer.sc=%p1.cer.sv% * %skill.8.sc% / 10 
if %p2.cer.sr%==8  set/a p1.cer.sx=%p1.cer.sv% * %skill.8.sx% / 10 
if %p2.cer.sr%==8  set p1.cer.sd=8 
if %p1.cer.sr%==9  set/a p1.cer.sm=%skill.9.sm% 
if %p1.cer.sr%==9  set/a p1.cer.sc=%p1.cer.sv% * %skill.9.sc% / 10 
if %p1.cer.sr%==9  set/a p1.cer.sx=%p1.cer.sv% * %skill.9.sx% / 10 
if %p1.cer.sr%==9  set p1.cer.sd=7 
if %p2.cer.sr%==9  set/a p1.cer.sm=%skill.9.sm% 
if %p2.cer.sr%==9  set/a p1.cer.sc=%p1.cer.sv% * %skill.9.sc% / 10 
if %p2.cer.sr%==9  set/a p1.cer.sx=%p1.cer.sv% * %skill.9.sx% / 10 
if %p2.cer.sr%==9  set p1.cer.sd=7 
if %p1.cer.sr%==10  set/a p1.cer.sm=%skill.10.sm% 
if %p1.cer.sr%==10  set/a p1.cer.sc=%p1.cer.sv% * %skill.10.sc% / 10 
if %p1.cer.sr%==10  set/a p1.cer.sx=%p1.cer.sv% * %skill.10.sx% / 10 
if %p1.cer.sr%==10  set p1.cer.sd=6 
if %p2.cer.sr%==10  set/a p1.cer.sm=%skill.10.sm% 
if %p2.cer.sr%==10  set/a p1.cer.sc=%p1.cer.sv% * %skill.10.sc% / 10 
if %p2.cer.sr%==10  set/a p1.cer.sx=%p1.cer.sv% * %skill.10.sx% / 10 
if %p2.cer.sr%==10  set p1.cer.sd=6 
if %p1.cer.sr%==11  set/a p1.cer.sm=%skill.11.sm% 
if %p1.cer.sr%==11  set/a p1.cer.sc=%p1.cer.sv% * %skill.11.sc% / 10 
if %p1.cer.sr%==11  set/a p1.cer.sx=%p1.cer.sv% * %skill.11.sx% / 10 
if %p1.cer.sr%==11  set p1.cer.sd=5 
if %p2.cer.sr%==11  set/a p1.cer.sm=%skill.11.sm% 
if %p2.cer.sr%==11  set/a p1.cer.sc=%p1.cer.sv% * %skill.11.sc% / 10 
if %p2.cer.sr%==11  set/a p1.cer.sx=%p1.cer.sv% * %skill.11.sx% / 10 
if %p2.cer.sr%==11  set p1.cer.sd=5 
if %p1.cer.sr%==12  set/a p1.cer.sm=%skill.12.sm% 
if %p1.cer.sr%==12  set/a p1.cer.sc=%p1.cer.sv% * %skill.12.sc% / 10 
if %p1.cer.sr%==12  set/a p1.cer.sx=%p1.cer.sv% * %skill.12.sx% / 10 
if %p1.cer.sr%==12  set p1.cer.sd=4 
if %p2.cer.sr%==12  set/a p1.cer.sm=%skill.12.sm% 
if %p2.cer.sr%==12  set/a p1.cer.sc=%p1.cer.sv% * %skill.12.sc% / 10 
if %p2.cer.sr%==12  set/a p1.cer.sx=%p1.cer.sv% * %skill.12.sx% / 10 
if %p2.cer.sr%==12  set p1.cer.sd=4 
if %p1.cer.sr%==13  set/a p1.cer.sm=%skill.13.sm% 
if %p1.cer.sr%==13  set/a p1.cer.sc=%p1.cer.sv% * %skill.13.sc% / 10 
if %p1.cer.sr%==13  set/a p1.cer.sx=%p1.cer.sv% * %skill.13.sx% / 10 
if %p1.cer.sr%==13  set p1.cer.sd=3 
if %p2.cer.sr%==13  set/a p1.cer.sm=%skill.13.sm% 
if %p2.cer.sr%==13  set/a p1.cer.sc=%p1.cer.sv% * %skill.13.sc% / 10 
if %p2.cer.sr%==13  set/a p1.cer.sx=%p1.cer.sv% * %skill.13.sx% / 10 
if %p2.cer.sr%==13  set p1.cer.sd=3 
if %p1.cer.sr%==14  set/a p1.cer.sm=%skill.14.sm% 
if %p1.cer.sr%==14  set/a p1.cer.sc=%p1.cer.sv% * %skill.14.sc% / 10 
if %p1.cer.sr%==14  set/a p1.cer.sx=%p1.cer.sv% * %skill.14.sx% / 10 
if %p1.cer.sr%==14  set p1.cer.sd=2 
if %p2.cer.sr%==14  set/a p1.cer.sm=%skill.14.sm% 
if %p2.cer.sr%==14  set/a p1.cer.sc=%p1.cer.sv% * %skill.14.sc% / 10 
if %p2.cer.sr%==14  set/a p1.cer.sx=%p1.cer.sv% * %skill.14.sx% / 10 
if %p2.cer.sr%==14  set p1.cer.sd=2 
if %p1.cer.sr%==15  set/a p1.cer.sm=%skill.15.sm% 
if %p1.cer.sr%==15  set/a p1.cer.sc=%p1.cer.sv% * %skill.15.sc% / 10 
if %p1.cer.sr%==15  set/a p1.cer.sx=%p1.cer.sv% * %skill.15.sx% / 10 
if %p1.cer.sr%==15  set p1.cer.sd=1 
if %p2.cer.sr%==15  set/a p1.cer.sm=%skill.15.sm% 
if %p2.cer.sr%==15  set/a p1.cer.sc=%p1.cer.sv% * %skill.15.sc% / 10 
if %p2.cer.sr%==15  set/a p1.cer.sx=%p1.cer.sv% * %skill.15.sx% / 10 
if %p2.cer.sr%==15  set p1.cer.sd=1 
 
if %p1.lsc.sr%==0  set/a p1.lsc.sm=%skill.0.sm% 
if %p1.lsc.sr%==0  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.0.sc% / 10 
if %p1.lsc.sr%==0  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.0.sx% / 10 
if %p1.lsc.sr%==0  set p1.lsc.sd=Novice 
if %p2.lsc.sr%==0  set/a p1.lsc.sm=%skill.0.sm% 
if %p2.lsc.sr%==0  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.0.sc% / 10 
if %p2.lsc.sr%==0  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.0.sx% / 10 
if %p2.lsc.sr%==0  set p1.lsc.sd=Novice 
if %p1.lsc.sr%==1  set/a p1.lsc.sm=%skill.1.sm% 
if %p1.lsc.sr%==1  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.1.sc% / 10 
if %p1.lsc.sr%==1  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.1.sx% / 10 
if %p1.lsc.sr%==1  set p1.lsc.sd=F 
if %p2.lsc.sr%==1  set/a p1.lsc.sm=%skill.1.sm% 
if %p2.lsc.sr%==1  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.1.sc% / 10 
if %p2.lsc.sr%==1  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.1.sx% / 10 
if %p2.lsc.sr%==1  set p1.lsc.sd=F 
if %p1.lsc.sr%==2  set/a p1.lsc.sm=%skill.2.sm% 
if %p1.lsc.sr%==2  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.2.sc% / 10 
if %p1.lsc.sr%==2  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.2.sx% / 10 
if %p1.lsc.sr%==2  set p1.lsc.sd=E 
if %p2.lsc.sr%==2  set/a p1.lsc.sm=%skill.2.sm% 
if %p2.lsc.sr%==2  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.2.sc% / 10 
if %p2.lsc.sr%==2  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.2.sx% / 10 
if %p2.lsc.sr%==2  set p1.lsc.sd=E 
if %p1.lsc.sr%==3  set/a p1.lsc.sm=%skill.3.sm% 
if %p1.lsc.sr%==3  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.3.sc% / 10 
if %p1.lsc.sr%==3  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.3.sx% / 10 
if %p1.lsc.sr%==3  set p1.lsc.sd=D 
if %p2.lsc.sr%==3  set/a p1.lsc.sm=%skill.3.sm% 
if %p2.lsc.sr%==3  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.3.sc% / 10 
if %p2.lsc.sr%==3  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.3.sx% / 10 
if %p2.lsc.sr%==3  set p1.lsc.sd=D 
if %p1.lsc.sr%==4  set/a p1.lsc.sm=%skill.4.sm% 
if %p1.lsc.sr%==4  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.4.sc% / 10 
if %p1.lsc.sr%==4  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.4.sx% / 10 
if %p1.lsc.sr%==4  set p1.lsc.sd=C 
if %p2.lsc.sr%==4  set/a p1.lsc.sm=%skill.4.sm% 
if %p2.lsc.sr%==4  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.4.sc% / 10 
if %p2.lsc.sr%==4  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.4.sx% / 10 
if %p2.lsc.sr%==4  set p1.lsc.sd=C 
if %p1.lsc.sr%==5  set/a p1.lsc.sm=%skill.5.sm% 
if %p1.lsc.sr%==5  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.5.sc% / 10 
if %p1.lsc.sr%==5  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.5.sx% / 10 
if %p1.lsc.sr%==5  set p1.lsc.sd=B 
if %p2.lsc.sr%==5  set/a p1.lsc.sm=%skill.5.sm% 
if %p2.lsc.sr%==5  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.5.sc% / 10 
if %p2.lsc.sr%==5  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.5.sx% / 10 
if %p2.lsc.sr%==5  set p1.lsc.sd=B 
if %p1.lsc.sr%==6  set/a p1.lsc.sm=%skill.6.sm% 
if %p1.lsc.sr%==6  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.6.sc% / 10 
if %p1.lsc.sr%==6  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.6.sx% / 10 
if %p1.lsc.sr%==6  set p1.lsc.sd=A 
if %p2.lsc.sr%==6  set/a p1.lsc.sm=%skill.6.sm% 
if %p2.lsc.sr%==6  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.6.sc% / 10 
if %p2.lsc.sr%==6  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.6.sx% / 10 
if %p2.lsc.sr%==6  set p1.lsc.sd=A 
if %p1.lsc.sr%==7  set/a p1.lsc.sm=%skill.7.sm% 
if %p1.lsc.sr%==7  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.7.sc% / 10 
if %p1.lsc.sr%==7  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.7.sx% / 10 
if %p1.lsc.sr%==7  set p1.lsc.sd=9 
if %p2.lsc.sr%==7  set/a p1.lsc.sm=%skill.7.sm% 
if %p2.lsc.sr%==7  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.7.sc% / 10 
if %p2.lsc.sr%==7  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.7.sx% / 10 
if %p2.lsc.sr%==7  set p1.lsc.sd=9 
if %p1.lsc.sr%==8  set/a p1.lsc.sm=%skill.8.sm% 
if %p1.lsc.sr%==8  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.8.sc% / 10 
if %p1.lsc.sr%==8  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.8.sx% / 10 
if %p1.lsc.sr%==8  set p1.lsc.sd=8 
if %p2.lsc.sr%==8  set/a p1.lsc.sm=%skill.8.sm% 
if %p2.lsc.sr%==8  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.8.sc% / 10 
if %p2.lsc.sr%==8  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.8.sx% / 10 
if %p2.lsc.sr%==8  set p1.lsc.sd=8 
if %p1.lsc.sr%==9  set/a p1.lsc.sm=%skill.9.sm% 
if %p1.lsc.sr%==9  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.9.sc% / 10 
if %p1.lsc.sr%==9  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.9.sx% / 10 
if %p1.lsc.sr%==9  set p1.lsc.sd=7 
if %p2.lsc.sr%==9  set/a p1.lsc.sm=%skill.9.sm% 
if %p2.lsc.sr%==9  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.9.sc% / 10 
if %p2.lsc.sr%==9  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.9.sx% / 10 
if %p2.lsc.sr%==9  set p1.lsc.sd=7 
if %p1.lsc.sr%==10  set/a p1.lsc.sm=%skill.10.sm% 
if %p1.lsc.sr%==10  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.10.sc% / 10 
if %p1.lsc.sr%==10  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.10.sx% / 10 
if %p1.lsc.sr%==10  set p1.lsc.sd=6 
if %p2.lsc.sr%==10  set/a p1.lsc.sm=%skill.10.sm% 
if %p2.lsc.sr%==10  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.10.sc% / 10 
if %p2.lsc.sr%==10  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.10.sx% / 10 
if %p2.lsc.sr%==10  set p1.lsc.sd=6 
if %p1.lsc.sr%==11  set/a p1.lsc.sm=%skill.11.sm% 
if %p1.lsc.sr%==11  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.11.sc% / 10 
if %p1.lsc.sr%==11  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.11.sx% / 10 
if %p1.lsc.sr%==11  set p1.lsc.sd=5 
if %p2.lsc.sr%==11  set/a p1.lsc.sm=%skill.11.sm% 
if %p2.lsc.sr%==11  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.11.sc% / 10 
if %p2.lsc.sr%==11  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.11.sx% / 10 
if %p2.lsc.sr%==11  set p1.lsc.sd=5 
if %p1.lsc.sr%==12  set/a p1.lsc.sm=%skill.12.sm% 
if %p1.lsc.sr%==12  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.12.sc% / 10 
if %p1.lsc.sr%==12  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.12.sx% / 10 
if %p1.lsc.sr%==12  set p1.lsc.sd=4 
if %p2.lsc.sr%==12  set/a p1.lsc.sm=%skill.12.sm% 
if %p2.lsc.sr%==12  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.12.sc% / 10 
if %p2.lsc.sr%==12  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.12.sx% / 10 
if %p2.lsc.sr%==12  set p1.lsc.sd=4 
if %p1.lsc.sr%==13  set/a p1.lsc.sm=%skill.13.sm% 
if %p1.lsc.sr%==13  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.13.sc% / 10 
if %p1.lsc.sr%==13  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.13.sx% / 10 
if %p1.lsc.sr%==13  set p1.lsc.sd=3 
if %p2.lsc.sr%==13  set/a p1.lsc.sm=%skill.13.sm% 
if %p2.lsc.sr%==13  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.13.sc% / 10 
if %p2.lsc.sr%==13  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.13.sx% / 10 
if %p2.lsc.sr%==13  set p1.lsc.sd=3 
if %p1.lsc.sr%==14  set/a p1.lsc.sm=%skill.14.sm% 
if %p1.lsc.sr%==14  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.14.sc% / 10 
if %p1.lsc.sr%==14  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.14.sx% / 10 
if %p1.lsc.sr%==14  set p1.lsc.sd=2 
if %p2.lsc.sr%==14  set/a p1.lsc.sm=%skill.14.sm% 
if %p2.lsc.sr%==14  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.14.sc% / 10 
if %p2.lsc.sr%==14  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.14.sx% / 10 
if %p2.lsc.sr%==14  set p1.lsc.sd=2 
if %p1.lsc.sr%==15  set/a p1.lsc.sm=%skill.15.sm% 
if %p1.lsc.sr%==15  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.15.sc% / 10 
if %p1.lsc.sr%==15  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.15.sx% / 10 
if %p1.lsc.sr%==15  set p1.lsc.sd=1 
if %p2.lsc.sr%==15  set/a p1.lsc.sm=%skill.15.sm% 
if %p2.lsc.sr%==15  set/a p1.lsc.sc=%p1.lsc.sv% * %skill.15.sc% / 10 
if %p2.lsc.sr%==15  set/a p1.lsc.sx=%p1.lsc.sv% * %skill.15.sx% / 10 
if %p2.lsc.sr%==15  set p1.lsc.sd=1 
 
if %p1.lsp.sr%==0  set/a p1.lsp.sm=%skill.0.sm% 
if %p1.lsp.sr%==0  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.0.sc% / 10 
if %p1.lsp.sr%==0  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.0.sx% / 10 
if %p1.lsp.sr%==0  set p1.lsp.sd=Novice 
if %p2.lsp.sr%==0  set/a p1.lsp.sm=%skill.0.sm% 
if %p2.lsp.sr%==0  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.0.sc% / 10 
if %p2.lsp.sr%==0  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.0.sx% / 10 
if %p2.lsp.sr%==0  set p1.lsp.sd=Novice 
if %p1.lsp.sr%==1  set/a p1.lsp.sm=%skill.1.sm% 
if %p1.lsp.sr%==1  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.1.sc% / 10 
if %p1.lsp.sr%==1  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.1.sx% / 10 
if %p1.lsp.sr%==1  set p1.lsp.sd=F 
if %p2.lsp.sr%==1  set/a p1.lsp.sm=%skill.1.sm% 
if %p2.lsp.sr%==1  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.1.sc% / 10 
if %p2.lsp.sr%==1  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.1.sx% / 10 
if %p2.lsp.sr%==1  set p1.lsp.sd=F 
if %p1.lsp.sr%==2  set/a p1.lsp.sm=%skill.2.sm% 
if %p1.lsp.sr%==2  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.2.sc% / 10 
if %p1.lsp.sr%==2  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.2.sx% / 10 
if %p1.lsp.sr%==2  set p1.lsp.sd=E 
if %p2.lsp.sr%==2  set/a p1.lsp.sm=%skill.2.sm% 
if %p2.lsp.sr%==2  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.2.sc% / 10 
if %p2.lsp.sr%==2  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.2.sx% / 10 
if %p2.lsp.sr%==2  set p1.lsp.sd=E 
if %p1.lsp.sr%==3  set/a p1.lsp.sm=%skill.3.sm% 
if %p1.lsp.sr%==3  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.3.sc% / 10 
if %p1.lsp.sr%==3  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.3.sx% / 10 
if %p1.lsp.sr%==3  set p1.lsp.sd=D 
if %p2.lsp.sr%==3  set/a p1.lsp.sm=%skill.3.sm% 
if %p2.lsp.sr%==3  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.3.sc% / 10 
if %p2.lsp.sr%==3  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.3.sx% / 10 
if %p2.lsp.sr%==3  set p1.lsp.sd=D 
if %p1.lsp.sr%==4  set/a p1.lsp.sm=%skill.4.sm% 
if %p1.lsp.sr%==4  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.4.sc% / 10 
if %p1.lsp.sr%==4  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.4.sx% / 10 
if %p1.lsp.sr%==4  set p1.lsp.sd=C 
if %p2.lsp.sr%==4  set/a p1.lsp.sm=%skill.4.sm% 
if %p2.lsp.sr%==4  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.4.sc% / 10 
if %p2.lsp.sr%==4  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.4.sx% / 10 
if %p2.lsp.sr%==4  set p1.lsp.sd=C 
if %p1.lsp.sr%==5  set/a p1.lsp.sm=%skill.5.sm% 
if %p1.lsp.sr%==5  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.5.sc% / 10 
if %p1.lsp.sr%==5  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.5.sx% / 10 
if %p1.lsp.sr%==5  set p1.lsp.sd=B 
if %p2.lsp.sr%==5  set/a p1.lsp.sm=%skill.5.sm% 
if %p2.lsp.sr%==5  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.5.sc% / 10 
if %p2.lsp.sr%==5  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.5.sx% / 10 
if %p2.lsp.sr%==5  set p1.lsp.sd=B 
if %p1.lsp.sr%==6  set/a p1.lsp.sm=%skill.6.sm% 
if %p1.lsp.sr%==6  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.6.sc% / 10 
if %p1.lsp.sr%==6  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.6.sx% / 10 
if %p1.lsp.sr%==6  set p1.lsp.sd=A 
if %p2.lsp.sr%==6  set/a p1.lsp.sm=%skill.6.sm% 
if %p2.lsp.sr%==6  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.6.sc% / 10 
if %p2.lsp.sr%==6  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.6.sx% / 10 
if %p2.lsp.sr%==6  set p1.lsp.sd=A 
if %p1.lsp.sr%==7  set/a p1.lsp.sm=%skill.7.sm% 
if %p1.lsp.sr%==7  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.7.sc% / 10 
if %p1.lsp.sr%==7  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.7.sx% / 10 
if %p1.lsp.sr%==7  set p1.lsp.sd=9 
if %p2.lsp.sr%==7  set/a p1.lsp.sm=%skill.7.sm% 
if %p2.lsp.sr%==7  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.7.sc% / 10 
if %p2.lsp.sr%==7  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.7.sx% / 10 
if %p2.lsp.sr%==7  set p1.lsp.sd=9 
if %p1.lsp.sr%==8  set/a p1.lsp.sm=%skill.8.sm% 
if %p1.lsp.sr%==8  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.8.sc% / 10 
if %p1.lsp.sr%==8  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.8.sx% / 10 
if %p1.lsp.sr%==8  set p1.lsp.sd=8 
if %p2.lsp.sr%==8  set/a p1.lsp.sm=%skill.8.sm% 
if %p2.lsp.sr%==8  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.8.sc% / 10 
if %p2.lsp.sr%==8  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.8.sx% / 10 
if %p2.lsp.sr%==8  set p1.lsp.sd=8 
if %p1.lsp.sr%==9  set/a p1.lsp.sm=%skill.9.sm% 
if %p1.lsp.sr%==9  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.9.sc% / 10 
if %p1.lsp.sr%==9  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.9.sx% / 10 
if %p1.lsp.sr%==9  set p1.lsp.sd=7 
if %p2.lsp.sr%==9  set/a p1.lsp.sm=%skill.9.sm% 
if %p2.lsp.sr%==9  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.9.sc% / 10 
if %p2.lsp.sr%==9  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.9.sx% / 10 
if %p2.lsp.sr%==9  set p1.lsp.sd=7 
if %p1.lsp.sr%==10  set/a p1.lsp.sm=%skill.10.sm% 
if %p1.lsp.sr%==10  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.10.sc% / 10 
if %p1.lsp.sr%==10  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.10.sx% / 10 
if %p1.lsp.sr%==10  set p1.lsp.sd=6 
if %p2.lsp.sr%==10  set/a p1.lsp.sm=%skill.10.sm% 
if %p2.lsp.sr%==10  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.10.sc% / 10 
if %p2.lsp.sr%==10  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.10.sx% / 10 
if %p2.lsp.sr%==10  set p1.lsp.sd=6 
if %p1.lsp.sr%==11  set/a p1.lsp.sm=%skill.11.sm% 
if %p1.lsp.sr%==11  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.11.sc% / 10 
if %p1.lsp.sr%==11  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.11.sx% / 10 
if %p1.lsp.sr%==11  set p1.lsp.sd=5 
if %p2.lsp.sr%==11  set/a p1.lsp.sm=%skill.11.sm% 
if %p2.lsp.sr%==11  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.11.sc% / 10 
if %p2.lsp.sr%==11  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.11.sx% / 10 
if %p2.lsp.sr%==11  set p1.lsp.sd=5 
if %p1.lsp.sr%==12  set/a p1.lsp.sm=%skill.12.sm% 
if %p1.lsp.sr%==12  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.12.sc% / 10 
if %p1.lsp.sr%==12  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.12.sx% / 10 
if %p1.lsp.sr%==12  set p1.lsp.sd=4 
if %p2.lsp.sr%==12  set/a p1.lsp.sm=%skill.12.sm% 
if %p2.lsp.sr%==12  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.12.sc% / 10 
if %p2.lsp.sr%==12  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.12.sx% / 10 
if %p2.lsp.sr%==12  set p1.lsp.sd=4 
if %p1.lsp.sr%==13  set/a p1.lsp.sm=%skill.13.sm% 
if %p1.lsp.sr%==13  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.13.sc% / 10 
if %p1.lsp.sr%==13  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.13.sx% / 10 
if %p1.lsp.sr%==13  set p1.lsp.sd=3 
if %p2.lsp.sr%==13  set/a p1.lsp.sm=%skill.13.sm% 
if %p2.lsp.sr%==13  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.13.sc% / 10 
if %p2.lsp.sr%==13  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.13.sx% / 10 
if %p2.lsp.sr%==13  set p1.lsp.sd=3 
if %p1.lsp.sr%==14  set/a p1.lsp.sm=%skill.14.sm% 
if %p1.lsp.sr%==14  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.14.sc% / 10 
if %p1.lsp.sr%==14  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.14.sx% / 10 
if %p1.lsp.sr%==14  set p1.lsp.sd=2 
if %p2.lsp.sr%==14  set/a p1.lsp.sm=%skill.14.sm% 
if %p2.lsp.sr%==14  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.14.sc% / 10 
if %p2.lsp.sr%==14  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.14.sx% / 10 
if %p2.lsp.sr%==14  set p1.lsp.sd=2 
if %p1.lsp.sr%==15  set/a p1.lsp.sm=%skill.15.sm% 
if %p1.lsp.sr%==15  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.15.sc% / 10 
if %p1.lsp.sr%==15  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.15.sx% / 10 
if %p1.lsp.sr%==15  set p1.lsp.sd=1 
if %p2.lsp.sr%==15  set/a p1.lsp.sm=%skill.15.sm% 
if %p2.lsp.sr%==15  set/a p1.lsp.sc=%p1.lsp.sv% * %skill.15.sc% / 10 
if %p2.lsp.sr%==15  set/a p1.lsp.sx=%p1.lsp.sv% * %skill.15.sx% / 10 
if %p2.lsp.sr%==15  set p1.lsp.sd=1 
 
if %p1.shm.sr%==0  set/a p1.shm.sm=%skill.0.sm% 
if %p1.shm.sr%==0  set/a p1.shm.sc=%p1.shm.sv% * %skill.0.sc% / 10 
if %p1.shm.sr%==0  set/a p1.shm.sx=%p1.shm.sv% * %skill.0.sx% / 10 
if %p1.shm.sr%==0  set p1.shm.sd=Novice 
if %p2.shm.sr%==0  set/a p1.shm.sm=%skill.0.sm% 
if %p2.shm.sr%==0  set/a p1.shm.sc=%p1.shm.sv% * %skill.0.sc% / 10 
if %p2.shm.sr%==0  set/a p1.shm.sx=%p1.shm.sv% * %skill.0.sx% / 10 
if %p2.shm.sr%==0  set p1.shm.sd=Novice 
if %p1.shm.sr%==1  set/a p1.shm.sm=%skill.1.sm% 
if %p1.shm.sr%==1  set/a p1.shm.sc=%p1.shm.sv% * %skill.1.sc% / 10 
if %p1.shm.sr%==1  set/a p1.shm.sx=%p1.shm.sv% * %skill.1.sx% / 10 
if %p1.shm.sr%==1  set p1.shm.sd=F 
if %p2.shm.sr%==1  set/a p1.shm.sm=%skill.1.sm% 
if %p2.shm.sr%==1  set/a p1.shm.sc=%p1.shm.sv% * %skill.1.sc% / 10 
if %p2.shm.sr%==1  set/a p1.shm.sx=%p1.shm.sv% * %skill.1.sx% / 10 
if %p2.shm.sr%==1  set p1.shm.sd=F 
if %p1.shm.sr%==2  set/a p1.shm.sm=%skill.2.sm% 
if %p1.shm.sr%==2  set/a p1.shm.sc=%p1.shm.sv% * %skill.2.sc% / 10 
if %p1.shm.sr%==2  set/a p1.shm.sx=%p1.shm.sv% * %skill.2.sx% / 10 
if %p1.shm.sr%==2  set p1.shm.sd=E 
if %p2.shm.sr%==2  set/a p1.shm.sm=%skill.2.sm% 
if %p2.shm.sr%==2  set/a p1.shm.sc=%p1.shm.sv% * %skill.2.sc% / 10 
if %p2.shm.sr%==2  set/a p1.shm.sx=%p1.shm.sv% * %skill.2.sx% / 10 
if %p2.shm.sr%==2  set p1.shm.sd=E 
if %p1.shm.sr%==3  set/a p1.shm.sm=%skill.3.sm% 
if %p1.shm.sr%==3  set/a p1.shm.sc=%p1.shm.sv% * %skill.3.sc% / 10 
if %p1.shm.sr%==3  set/a p1.shm.sx=%p1.shm.sv% * %skill.3.sx% / 10 
if %p1.shm.sr%==3  set p1.shm.sd=D 
if %p2.shm.sr%==3  set/a p1.shm.sm=%skill.3.sm% 
if %p2.shm.sr%==3  set/a p1.shm.sc=%p1.shm.sv% * %skill.3.sc% / 10 
if %p2.shm.sr%==3  set/a p1.shm.sx=%p1.shm.sv% * %skill.3.sx% / 10 
if %p2.shm.sr%==3  set p1.shm.sd=D 
if %p1.shm.sr%==4  set/a p1.shm.sm=%skill.4.sm% 
if %p1.shm.sr%==4  set/a p1.shm.sc=%p1.shm.sv% * %skill.4.sc% / 10 
if %p1.shm.sr%==4  set/a p1.shm.sx=%p1.shm.sv% * %skill.4.sx% / 10 
if %p1.shm.sr%==4  set p1.shm.sd=C 
if %p2.shm.sr%==4  set/a p1.shm.sm=%skill.4.sm% 
if %p2.shm.sr%==4  set/a p1.shm.sc=%p1.shm.sv% * %skill.4.sc% / 10 
if %p2.shm.sr%==4  set/a p1.shm.sx=%p1.shm.sv% * %skill.4.sx% / 10 
if %p2.shm.sr%==4  set p1.shm.sd=C 
if %p1.shm.sr%==5  set/a p1.shm.sm=%skill.5.sm% 
if %p1.shm.sr%==5  set/a p1.shm.sc=%p1.shm.sv% * %skill.5.sc% / 10 
if %p1.shm.sr%==5  set/a p1.shm.sx=%p1.shm.sv% * %skill.5.sx% / 10 
if %p1.shm.sr%==5  set p1.shm.sd=B 
if %p2.shm.sr%==5  set/a p1.shm.sm=%skill.5.sm% 
if %p2.shm.sr%==5  set/a p1.shm.sc=%p1.shm.sv% * %skill.5.sc% / 10 
if %p2.shm.sr%==5  set/a p1.shm.sx=%p1.shm.sv% * %skill.5.sx% / 10 
if %p2.shm.sr%==5  set p1.shm.sd=B 
if %p1.shm.sr%==6  set/a p1.shm.sm=%skill.6.sm% 
if %p1.shm.sr%==6  set/a p1.shm.sc=%p1.shm.sv% * %skill.6.sc% / 10 
if %p1.shm.sr%==6  set/a p1.shm.sx=%p1.shm.sv% * %skill.6.sx% / 10 
if %p1.shm.sr%==6  set p1.shm.sd=A 
if %p2.shm.sr%==6  set/a p1.shm.sm=%skill.6.sm% 
if %p2.shm.sr%==6  set/a p1.shm.sc=%p1.shm.sv% * %skill.6.sc% / 10 
if %p2.shm.sr%==6  set/a p1.shm.sx=%p1.shm.sv% * %skill.6.sx% / 10 
if %p2.shm.sr%==6  set p1.shm.sd=A 
if %p1.shm.sr%==7  set/a p1.shm.sm=%skill.7.sm% 
if %p1.shm.sr%==7  set/a p1.shm.sc=%p1.shm.sv% * %skill.7.sc% / 10 
if %p1.shm.sr%==7  set/a p1.shm.sx=%p1.shm.sv% * %skill.7.sx% / 10 
if %p1.shm.sr%==7  set p1.shm.sd=9 
if %p2.shm.sr%==7  set/a p1.shm.sm=%skill.7.sm% 
if %p2.shm.sr%==7  set/a p1.shm.sc=%p1.shm.sv% * %skill.7.sc% / 10 
if %p2.shm.sr%==7  set/a p1.shm.sx=%p1.shm.sv% * %skill.7.sx% / 10 
if %p2.shm.sr%==7  set p1.shm.sd=9 
if %p1.shm.sr%==8  set/a p1.shm.sm=%skill.8.sm% 
if %p1.shm.sr%==8  set/a p1.shm.sc=%p1.shm.sv% * %skill.8.sc% / 10 
if %p1.shm.sr%==8  set/a p1.shm.sx=%p1.shm.sv% * %skill.8.sx% / 10 
if %p1.shm.sr%==8  set p1.shm.sd=8 
if %p2.shm.sr%==8  set/a p1.shm.sm=%skill.8.sm% 
if %p2.shm.sr%==8  set/a p1.shm.sc=%p1.shm.sv% * %skill.8.sc% / 10 
if %p2.shm.sr%==8  set/a p1.shm.sx=%p1.shm.sv% * %skill.8.sx% / 10 
if %p2.shm.sr%==8  set p1.shm.sd=8 
if %p1.shm.sr%==9  set/a p1.shm.sm=%skill.9.sm% 
if %p1.shm.sr%==9  set/a p1.shm.sc=%p1.shm.sv% * %skill.9.sc% / 10 
if %p1.shm.sr%==9  set/a p1.shm.sx=%p1.shm.sv% * %skill.9.sx% / 10 
if %p1.shm.sr%==9  set p1.shm.sd=7 
if %p2.shm.sr%==9  set/a p1.shm.sm=%skill.9.sm% 
if %p2.shm.sr%==9  set/a p1.shm.sc=%p1.shm.sv% * %skill.9.sc% / 10 
if %p2.shm.sr%==9  set/a p1.shm.sx=%p1.shm.sv% * %skill.9.sx% / 10 
if %p2.shm.sr%==9  set p1.shm.sd=7 
if %p1.shm.sr%==10  set/a p1.shm.sm=%skill.10.sm% 
if %p1.shm.sr%==10  set/a p1.shm.sc=%p1.shm.sv% * %skill.10.sc% / 10 
if %p1.shm.sr%==10  set/a p1.shm.sx=%p1.shm.sv% * %skill.10.sx% / 10 
if %p1.shm.sr%==10  set p1.shm.sd=6 
if %p2.shm.sr%==10  set/a p1.shm.sm=%skill.10.sm% 
if %p2.shm.sr%==10  set/a p1.shm.sc=%p1.shm.sv% * %skill.10.sc% / 10 
if %p2.shm.sr%==10  set/a p1.shm.sx=%p1.shm.sv% * %skill.10.sx% / 10 
if %p2.shm.sr%==10  set p1.shm.sd=6 
if %p1.shm.sr%==11  set/a p1.shm.sm=%skill.11.sm% 
if %p1.shm.sr%==11  set/a p1.shm.sc=%p1.shm.sv% * %skill.11.sc% / 10 
if %p1.shm.sr%==11  set/a p1.shm.sx=%p1.shm.sv% * %skill.11.sx% / 10 
if %p1.shm.sr%==11  set p1.shm.sd=5 
if %p2.shm.sr%==11  set/a p1.shm.sm=%skill.11.sm% 
if %p2.shm.sr%==11  set/a p1.shm.sc=%p1.shm.sv% * %skill.11.sc% / 10 
if %p2.shm.sr%==11  set/a p1.shm.sx=%p1.shm.sv% * %skill.11.sx% / 10 
if %p2.shm.sr%==11  set p1.shm.sd=5 
if %p1.shm.sr%==12  set/a p1.shm.sm=%skill.12.sm% 
if %p1.shm.sr%==12  set/a p1.shm.sc=%p1.shm.sv% * %skill.12.sc% / 10 
if %p1.shm.sr%==12  set/a p1.shm.sx=%p1.shm.sv% * %skill.12.sx% / 10 
if %p1.shm.sr%==12  set p1.shm.sd=4 
if %p2.shm.sr%==12  set/a p1.shm.sm=%skill.12.sm% 
if %p2.shm.sr%==12  set/a p1.shm.sc=%p1.shm.sv% * %skill.12.sc% / 10 
if %p2.shm.sr%==12  set/a p1.shm.sx=%p1.shm.sv% * %skill.12.sx% / 10 
if %p2.shm.sr%==12  set p1.shm.sd=4 
if %p1.shm.sr%==13  set/a p1.shm.sm=%skill.13.sm% 
if %p1.shm.sr%==13  set/a p1.shm.sc=%p1.shm.sv% * %skill.13.sc% / 10 
if %p1.shm.sr%==13  set/a p1.shm.sx=%p1.shm.sv% * %skill.13.sx% / 10 
if %p1.shm.sr%==13  set p1.shm.sd=3 
if %p2.shm.sr%==13  set/a p1.shm.sm=%skill.13.sm% 
if %p2.shm.sr%==13  set/a p1.shm.sc=%p1.shm.sv% * %skill.13.sc% / 10 
if %p2.shm.sr%==13  set/a p1.shm.sx=%p1.shm.sv% * %skill.13.sx% / 10 
if %p2.shm.sr%==13  set p1.shm.sd=3 
if %p1.shm.sr%==14  set/a p1.shm.sm=%skill.14.sm% 
if %p1.shm.sr%==14  set/a p1.shm.sc=%p1.shm.sv% * %skill.14.sc% / 10 
if %p1.shm.sr%==14  set/a p1.shm.sx=%p1.shm.sv% * %skill.14.sx% / 10 
if %p1.shm.sr%==14  set p1.shm.sd=2 
if %p2.shm.sr%==14  set/a p1.shm.sm=%skill.14.sm% 
if %p2.shm.sr%==14  set/a p1.shm.sc=%p1.shm.sv% * %skill.14.sc% / 10 
if %p2.shm.sr%==14  set/a p1.shm.sx=%p1.shm.sv% * %skill.14.sx% / 10 
if %p2.shm.sr%==14  set p1.shm.sd=2 
if %p1.shm.sr%==15  set/a p1.shm.sm=%skill.15.sm% 
if %p1.shm.sr%==15  set/a p1.shm.sc=%p1.shm.sv% * %skill.15.sc% / 10 
if %p1.shm.sr%==15  set/a p1.shm.sx=%p1.shm.sv% * %skill.15.sx% / 10 
if %p1.shm.sr%==15  set p1.shm.sd=1 
if %p2.shm.sr%==15  set/a p1.shm.sm=%skill.15.sm% 
if %p2.shm.sr%==15  set/a p1.shm.sc=%p1.shm.sv% * %skill.15.sc% / 10 
if %p2.shm.sr%==15  set/a p1.shm.sx=%p1.shm.sv% * %skill.15.sx% / 10 
if %p2.shm.sr%==15  set p1.shm.sd=1 
 
if %p1.lac.sr%==0  set/a p1.lac.sm=%skill.0.sm% 
if %p1.lac.sr%==0  set/a p1.lac.sc=%p1.lac.sv% * %skill.0.sc% / 10 
if %p1.lac.sr%==0  set/a p1.lac.sx=%p1.lac.sv% * %skill.0.sx% / 10 
if %p1.lac.sr%==0  set p1.lac.sd=Novice 
if %p2.lac.sr%==0  set/a p1.lac.sm=%skill.0.sm% 
if %p2.lac.sr%==0  set/a p1.lac.sc=%p1.lac.sv% * %skill.0.sc% / 10 
if %p2.lac.sr%==0  set/a p1.lac.sx=%p1.lac.sv% * %skill.0.sx% / 10 
if %p2.lac.sr%==0  set p1.lac.sd=Novice 
if %p1.lac.sr%==1  set/a p1.lac.sm=%skill.1.sm% 
if %p1.lac.sr%==1  set/a p1.lac.sc=%p1.lac.sv% * %skill.1.sc% / 10 
if %p1.lac.sr%==1  set/a p1.lac.sx=%p1.lac.sv% * %skill.1.sx% / 10 
if %p1.lac.sr%==1  set p1.lac.sd=F 
if %p2.lac.sr%==1  set/a p1.lac.sm=%skill.1.sm% 
if %p2.lac.sr%==1  set/a p1.lac.sc=%p1.lac.sv% * %skill.1.sc% / 10 
if %p2.lac.sr%==1  set/a p1.lac.sx=%p1.lac.sv% * %skill.1.sx% / 10 
if %p2.lac.sr%==1  set p1.lac.sd=F 
if %p1.lac.sr%==2  set/a p1.lac.sm=%skill.2.sm% 
if %p1.lac.sr%==2  set/a p1.lac.sc=%p1.lac.sv% * %skill.2.sc% / 10 
if %p1.lac.sr%==2  set/a p1.lac.sx=%p1.lac.sv% * %skill.2.sx% / 10 
if %p1.lac.sr%==2  set p1.lac.sd=E 
if %p2.lac.sr%==2  set/a p1.lac.sm=%skill.2.sm% 
if %p2.lac.sr%==2  set/a p1.lac.sc=%p1.lac.sv% * %skill.2.sc% / 10 
if %p2.lac.sr%==2  set/a p1.lac.sx=%p1.lac.sv% * %skill.2.sx% / 10 
if %p2.lac.sr%==2  set p1.lac.sd=E 
if %p1.lac.sr%==3  set/a p1.lac.sm=%skill.3.sm% 
if %p1.lac.sr%==3  set/a p1.lac.sc=%p1.lac.sv% * %skill.3.sc% / 10 
if %p1.lac.sr%==3  set/a p1.lac.sx=%p1.lac.sv% * %skill.3.sx% / 10 
if %p1.lac.sr%==3  set p1.lac.sd=D 
if %p2.lac.sr%==3  set/a p1.lac.sm=%skill.3.sm% 
if %p2.lac.sr%==3  set/a p1.lac.sc=%p1.lac.sv% * %skill.3.sc% / 10 
if %p2.lac.sr%==3  set/a p1.lac.sx=%p1.lac.sv% * %skill.3.sx% / 10 
if %p2.lac.sr%==3  set p1.lac.sd=D 
if %p1.lac.sr%==4  set/a p1.lac.sm=%skill.4.sm% 
if %p1.lac.sr%==4  set/a p1.lac.sc=%p1.lac.sv% * %skill.4.sc% / 10 
if %p1.lac.sr%==4  set/a p1.lac.sx=%p1.lac.sv% * %skill.4.sx% / 10 
if %p1.lac.sr%==4  set p1.lac.sd=C 
if %p2.lac.sr%==4  set/a p1.lac.sm=%skill.4.sm% 
if %p2.lac.sr%==4  set/a p1.lac.sc=%p1.lac.sv% * %skill.4.sc% / 10 
if %p2.lac.sr%==4  set/a p1.lac.sx=%p1.lac.sv% * %skill.4.sx% / 10 
if %p2.lac.sr%==4  set p1.lac.sd=C 
if %p1.lac.sr%==5  set/a p1.lac.sm=%skill.5.sm% 
if %p1.lac.sr%==5  set/a p1.lac.sc=%p1.lac.sv% * %skill.5.sc% / 10 
if %p1.lac.sr%==5  set/a p1.lac.sx=%p1.lac.sv% * %skill.5.sx% / 10 
if %p1.lac.sr%==5  set p1.lac.sd=B 
if %p2.lac.sr%==5  set/a p1.lac.sm=%skill.5.sm% 
if %p2.lac.sr%==5  set/a p1.lac.sc=%p1.lac.sv% * %skill.5.sc% / 10 
if %p2.lac.sr%==5  set/a p1.lac.sx=%p1.lac.sv% * %skill.5.sx% / 10 
if %p2.lac.sr%==5  set p1.lac.sd=B 
if %p1.lac.sr%==6  set/a p1.lac.sm=%skill.6.sm% 
if %p1.lac.sr%==6  set/a p1.lac.sc=%p1.lac.sv% * %skill.6.sc% / 10 
if %p1.lac.sr%==6  set/a p1.lac.sx=%p1.lac.sv% * %skill.6.sx% / 10 
if %p1.lac.sr%==6  set p1.lac.sd=A 
if %p2.lac.sr%==6  set/a p1.lac.sm=%skill.6.sm% 
if %p2.lac.sr%==6  set/a p1.lac.sc=%p1.lac.sv% * %skill.6.sc% / 10 
if %p2.lac.sr%==6  set/a p1.lac.sx=%p1.lac.sv% * %skill.6.sx% / 10 
if %p2.lac.sr%==6  set p1.lac.sd=A 
if %p1.lac.sr%==7  set/a p1.lac.sm=%skill.7.sm% 
if %p1.lac.sr%==7  set/a p1.lac.sc=%p1.lac.sv% * %skill.7.sc% / 10 
if %p1.lac.sr%==7  set/a p1.lac.sx=%p1.lac.sv% * %skill.7.sx% / 10 
if %p1.lac.sr%==7  set p1.lac.sd=9 
if %p2.lac.sr%==7  set/a p1.lac.sm=%skill.7.sm% 
if %p2.lac.sr%==7  set/a p1.lac.sc=%p1.lac.sv% * %skill.7.sc% / 10 
if %p2.lac.sr%==7  set/a p1.lac.sx=%p1.lac.sv% * %skill.7.sx% / 10 
if %p2.lac.sr%==7  set p1.lac.sd=9 
if %p1.lac.sr%==8  set/a p1.lac.sm=%skill.8.sm% 
if %p1.lac.sr%==8  set/a p1.lac.sc=%p1.lac.sv% * %skill.8.sc% / 10 
if %p1.lac.sr%==8  set/a p1.lac.sx=%p1.lac.sv% * %skill.8.sx% / 10 
if %p1.lac.sr%==8  set p1.lac.sd=8 
if %p2.lac.sr%==8  set/a p1.lac.sm=%skill.8.sm% 
if %p2.lac.sr%==8  set/a p1.lac.sc=%p1.lac.sv% * %skill.8.sc% / 10 
if %p2.lac.sr%==8  set/a p1.lac.sx=%p1.lac.sv% * %skill.8.sx% / 10 
if %p2.lac.sr%==8  set p1.lac.sd=8 
if %p1.lac.sr%==9  set/a p1.lac.sm=%skill.9.sm% 
if %p1.lac.sr%==9  set/a p1.lac.sc=%p1.lac.sv% * %skill.9.sc% / 10 
if %p1.lac.sr%==9  set/a p1.lac.sx=%p1.lac.sv% * %skill.9.sx% / 10 
if %p1.lac.sr%==9  set p1.lac.sd=7 
if %p2.lac.sr%==9  set/a p1.lac.sm=%skill.9.sm% 
if %p2.lac.sr%==9  set/a p1.lac.sc=%p1.lac.sv% * %skill.9.sc% / 10 
if %p2.lac.sr%==9  set/a p1.lac.sx=%p1.lac.sv% * %skill.9.sx% / 10 
if %p2.lac.sr%==9  set p1.lac.sd=7 
if %p1.lac.sr%==10  set/a p1.lac.sm=%skill.10.sm% 
if %p1.lac.sr%==10  set/a p1.lac.sc=%p1.lac.sv% * %skill.10.sc% / 10 
if %p1.lac.sr%==10  set/a p1.lac.sx=%p1.lac.sv% * %skill.10.sx% / 10 
if %p1.lac.sr%==10  set p1.lac.sd=6 
if %p2.lac.sr%==10  set/a p1.lac.sm=%skill.10.sm% 
if %p2.lac.sr%==10  set/a p1.lac.sc=%p1.lac.sv% * %skill.10.sc% / 10 
if %p2.lac.sr%==10  set/a p1.lac.sx=%p1.lac.sv% * %skill.10.sx% / 10 
if %p2.lac.sr%==10  set p1.lac.sd=6 
if %p1.lac.sr%==11  set/a p1.lac.sm=%skill.11.sm% 
if %p1.lac.sr%==11  set/a p1.lac.sc=%p1.lac.sv% * %skill.11.sc% / 10 
if %p1.lac.sr%==11  set/a p1.lac.sx=%p1.lac.sv% * %skill.11.sx% / 10 
if %p1.lac.sr%==11  set p1.lac.sd=5 
if %p2.lac.sr%==11  set/a p1.lac.sm=%skill.11.sm% 
if %p2.lac.sr%==11  set/a p1.lac.sc=%p1.lac.sv% * %skill.11.sc% / 10 
if %p2.lac.sr%==11  set/a p1.lac.sx=%p1.lac.sv% * %skill.11.sx% / 10 
if %p2.lac.sr%==11  set p1.lac.sd=5 
if %p1.lac.sr%==12  set/a p1.lac.sm=%skill.12.sm% 
if %p1.lac.sr%==12  set/a p1.lac.sc=%p1.lac.sv% * %skill.12.sc% / 10 
if %p1.lac.sr%==12  set/a p1.lac.sx=%p1.lac.sv% * %skill.12.sx% / 10 
if %p1.lac.sr%==12  set p1.lac.sd=4 
if %p2.lac.sr%==12  set/a p1.lac.sm=%skill.12.sm% 
if %p2.lac.sr%==12  set/a p1.lac.sc=%p1.lac.sv% * %skill.12.sc% / 10 
if %p2.lac.sr%==12  set/a p1.lac.sx=%p1.lac.sv% * %skill.12.sx% / 10 
if %p2.lac.sr%==12  set p1.lac.sd=4 
if %p1.lac.sr%==13  set/a p1.lac.sm=%skill.13.sm% 
if %p1.lac.sr%==13  set/a p1.lac.sc=%p1.lac.sv% * %skill.13.sc% / 10 
if %p1.lac.sr%==13  set/a p1.lac.sx=%p1.lac.sv% * %skill.13.sx% / 10 
if %p1.lac.sr%==13  set p1.lac.sd=3 
if %p2.lac.sr%==13  set/a p1.lac.sm=%skill.13.sm% 
if %p2.lac.sr%==13  set/a p1.lac.sc=%p1.lac.sv% * %skill.13.sc% / 10 
if %p2.lac.sr%==13  set/a p1.lac.sx=%p1.lac.sv% * %skill.13.sx% / 10 
if %p2.lac.sr%==13  set p1.lac.sd=3 
if %p1.lac.sr%==14  set/a p1.lac.sm=%skill.14.sm% 
if %p1.lac.sr%==14  set/a p1.lac.sc=%p1.lac.sv% * %skill.14.sc% / 10 
if %p1.lac.sr%==14  set/a p1.lac.sx=%p1.lac.sv% * %skill.14.sx% / 10 
if %p1.lac.sr%==14  set p1.lac.sd=2 
if %p2.lac.sr%==14  set/a p1.lac.sm=%skill.14.sm% 
if %p2.lac.sr%==14  set/a p1.lac.sc=%p1.lac.sv% * %skill.14.sc% / 10 
if %p2.lac.sr%==14  set/a p1.lac.sx=%p1.lac.sv% * %skill.14.sx% / 10 
if %p2.lac.sr%==14  set p1.lac.sd=2 
if %p1.lac.sr%==15  set/a p1.lac.sm=%skill.15.sm% 
if %p1.lac.sr%==15  set/a p1.lac.sc=%p1.lac.sv% * %skill.15.sc% / 10 
if %p1.lac.sr%==15  set/a p1.lac.sx=%p1.lac.sv% * %skill.15.sx% / 10 
if %p1.lac.sr%==15  set p1.lac.sd=1 
if %p2.lac.sr%==15  set/a p1.lac.sm=%skill.15.sm% 
if %p2.lac.sr%==15  set/a p1.lac.sc=%p1.lac.sv% * %skill.15.sc% / 10 
if %p2.lac.sr%==15  set/a p1.lac.sx=%p1.lac.sv% * %skill.15.sx% / 10 
if %p2.lac.sr%==15  set p1.lac.sd=1 
 
if %p1.wow.sr%==0  set/a p1.wow.sm=%skill.0.sm% 
if %p1.wow.sr%==0  set/a p1.wow.sc=%p1.wow.sv% * %skill.0.sc% / 10 
if %p1.wow.sr%==0  set/a p1.wow.sx=%p1.wow.sv% * %skill.0.sx% / 10 
if %p1.wow.sr%==0  set p1.wow.sd=Novice 
if %p2.wow.sr%==0  set/a p1.wow.sm=%skill.0.sm% 
if %p2.wow.sr%==0  set/a p1.wow.sc=%p1.wow.sv% * %skill.0.sc% / 10 
if %p2.wow.sr%==0  set/a p1.wow.sx=%p1.wow.sv% * %skill.0.sx% / 10 
if %p2.wow.sr%==0  set p1.wow.sd=Novice 
if %p1.wow.sr%==1  set/a p1.wow.sm=%skill.1.sm% 
if %p1.wow.sr%==1  set/a p1.wow.sc=%p1.wow.sv% * %skill.1.sc% / 10 
if %p1.wow.sr%==1  set/a p1.wow.sx=%p1.wow.sv% * %skill.1.sx% / 10 
if %p1.wow.sr%==1  set p1.wow.sd=F 
if %p2.wow.sr%==1  set/a p1.wow.sm=%skill.1.sm% 
if %p2.wow.sr%==1  set/a p1.wow.sc=%p1.wow.sv% * %skill.1.sc% / 10 
if %p2.wow.sr%==1  set/a p1.wow.sx=%p1.wow.sv% * %skill.1.sx% / 10 
if %p2.wow.sr%==1  set p1.wow.sd=F 
if %p1.wow.sr%==2  set/a p1.wow.sm=%skill.2.sm% 
if %p1.wow.sr%==2  set/a p1.wow.sc=%p1.wow.sv% * %skill.2.sc% / 10 
if %p1.wow.sr%==2  set/a p1.wow.sx=%p1.wow.sv% * %skill.2.sx% / 10 
if %p1.wow.sr%==2  set p1.wow.sd=E 
if %p2.wow.sr%==2  set/a p1.wow.sm=%skill.2.sm% 
if %p2.wow.sr%==2  set/a p1.wow.sc=%p1.wow.sv% * %skill.2.sc% / 10 
if %p2.wow.sr%==2  set/a p1.wow.sx=%p1.wow.sv% * %skill.2.sx% / 10 
if %p2.wow.sr%==2  set p1.wow.sd=E 
if %p1.wow.sr%==3  set/a p1.wow.sm=%skill.3.sm% 
if %p1.wow.sr%==3  set/a p1.wow.sc=%p1.wow.sv% * %skill.3.sc% / 10 
if %p1.wow.sr%==3  set/a p1.wow.sx=%p1.wow.sv% * %skill.3.sx% / 10 
if %p1.wow.sr%==3  set p1.wow.sd=D 
if %p2.wow.sr%==3  set/a p1.wow.sm=%skill.3.sm% 
if %p2.wow.sr%==3  set/a p1.wow.sc=%p1.wow.sv% * %skill.3.sc% / 10 
if %p2.wow.sr%==3  set/a p1.wow.sx=%p1.wow.sv% * %skill.3.sx% / 10 
if %p2.wow.sr%==3  set p1.wow.sd=D 
if %p1.wow.sr%==4  set/a p1.wow.sm=%skill.4.sm% 
if %p1.wow.sr%==4  set/a p1.wow.sc=%p1.wow.sv% * %skill.4.sc% / 10 
if %p1.wow.sr%==4  set/a p1.wow.sx=%p1.wow.sv% * %skill.4.sx% / 10 
if %p1.wow.sr%==4  set p1.wow.sd=C 
if %p2.wow.sr%==4  set/a p1.wow.sm=%skill.4.sm% 
if %p2.wow.sr%==4  set/a p1.wow.sc=%p1.wow.sv% * %skill.4.sc% / 10 
if %p2.wow.sr%==4  set/a p1.wow.sx=%p1.wow.sv% * %skill.4.sx% / 10 
if %p2.wow.sr%==4  set p1.wow.sd=C 
if %p1.wow.sr%==5  set/a p1.wow.sm=%skill.5.sm% 
if %p1.wow.sr%==5  set/a p1.wow.sc=%p1.wow.sv% * %skill.5.sc% / 10 
if %p1.wow.sr%==5  set/a p1.wow.sx=%p1.wow.sv% * %skill.5.sx% / 10 
if %p1.wow.sr%==5  set p1.wow.sd=B 
if %p2.wow.sr%==5  set/a p1.wow.sm=%skill.5.sm% 
if %p2.wow.sr%==5  set/a p1.wow.sc=%p1.wow.sv% * %skill.5.sc% / 10 
if %p2.wow.sr%==5  set/a p1.wow.sx=%p1.wow.sv% * %skill.5.sx% / 10 
if %p2.wow.sr%==5  set p1.wow.sd=B 
if %p1.wow.sr%==6  set/a p1.wow.sm=%skill.6.sm% 
if %p1.wow.sr%==6  set/a p1.wow.sc=%p1.wow.sv% * %skill.6.sc% / 10 
if %p1.wow.sr%==6  set/a p1.wow.sx=%p1.wow.sv% * %skill.6.sx% / 10 
if %p1.wow.sr%==6  set p1.wow.sd=A 
if %p2.wow.sr%==6  set/a p1.wow.sm=%skill.6.sm% 
if %p2.wow.sr%==6  set/a p1.wow.sc=%p1.wow.sv% * %skill.6.sc% / 10 
if %p2.wow.sr%==6  set/a p1.wow.sx=%p1.wow.sv% * %skill.6.sx% / 10 
if %p2.wow.sr%==6  set p1.wow.sd=A 
if %p1.wow.sr%==7  set/a p1.wow.sm=%skill.7.sm% 
if %p1.wow.sr%==7  set/a p1.wow.sc=%p1.wow.sv% * %skill.7.sc% / 10 
if %p1.wow.sr%==7  set/a p1.wow.sx=%p1.wow.sv% * %skill.7.sx% / 10 
if %p1.wow.sr%==7  set p1.wow.sd=9 
if %p2.wow.sr%==7  set/a p1.wow.sm=%skill.7.sm% 
if %p2.wow.sr%==7  set/a p1.wow.sc=%p1.wow.sv% * %skill.7.sc% / 10 
if %p2.wow.sr%==7  set/a p1.wow.sx=%p1.wow.sv% * %skill.7.sx% / 10 
if %p2.wow.sr%==7  set p1.wow.sd=9 
if %p1.wow.sr%==8  set/a p1.wow.sm=%skill.8.sm% 
if %p1.wow.sr%==8  set/a p1.wow.sc=%p1.wow.sv% * %skill.8.sc% / 10 
if %p1.wow.sr%==8  set/a p1.wow.sx=%p1.wow.sv% * %skill.8.sx% / 10 
if %p1.wow.sr%==8  set p1.wow.sd=8 
if %p2.wow.sr%==8  set/a p1.wow.sm=%skill.8.sm% 
if %p2.wow.sr%==8  set/a p1.wow.sc=%p1.wow.sv% * %skill.8.sc% / 10 
if %p2.wow.sr%==8  set/a p1.wow.sx=%p1.wow.sv% * %skill.8.sx% / 10 
if %p2.wow.sr%==8  set p1.wow.sd=8 
if %p1.wow.sr%==9  set/a p1.wow.sm=%skill.9.sm% 
if %p1.wow.sr%==9  set/a p1.wow.sc=%p1.wow.sv% * %skill.9.sc% / 10 
if %p1.wow.sr%==9  set/a p1.wow.sx=%p1.wow.sv% * %skill.9.sx% / 10 
if %p1.wow.sr%==9  set p1.wow.sd=7 
if %p2.wow.sr%==9  set/a p1.wow.sm=%skill.9.sm% 
if %p2.wow.sr%==9  set/a p1.wow.sc=%p1.wow.sv% * %skill.9.sc% / 10 
if %p2.wow.sr%==9  set/a p1.wow.sx=%p1.wow.sv% * %skill.9.sx% / 10 
if %p2.wow.sr%==9  set p1.wow.sd=7 
if %p1.wow.sr%==10  set/a p1.wow.sm=%skill.10.sm% 
if %p1.wow.sr%==10  set/a p1.wow.sc=%p1.wow.sv% * %skill.10.sc% / 10 
if %p1.wow.sr%==10  set/a p1.wow.sx=%p1.wow.sv% * %skill.10.sx% / 10 
if %p1.wow.sr%==10  set p1.wow.sd=6 
if %p2.wow.sr%==10  set/a p1.wow.sm=%skill.10.sm% 
if %p2.wow.sr%==10  set/a p1.wow.sc=%p1.wow.sv% * %skill.10.sc% / 10 
if %p2.wow.sr%==10  set/a p1.wow.sx=%p1.wow.sv% * %skill.10.sx% / 10 
if %p2.wow.sr%==10  set p1.wow.sd=6 
if %p1.wow.sr%==11  set/a p1.wow.sm=%skill.11.sm% 
if %p1.wow.sr%==11  set/a p1.wow.sc=%p1.wow.sv% * %skill.11.sc% / 10 
if %p1.wow.sr%==11  set/a p1.wow.sx=%p1.wow.sv% * %skill.11.sx% / 10 
if %p1.wow.sr%==11  set p1.wow.sd=5 
if %p2.wow.sr%==11  set/a p1.wow.sm=%skill.11.sm% 
if %p2.wow.sr%==11  set/a p1.wow.sc=%p1.wow.sv% * %skill.11.sc% / 10 
if %p2.wow.sr%==11  set/a p1.wow.sx=%p1.wow.sv% * %skill.11.sx% / 10 
if %p2.wow.sr%==11  set p1.wow.sd=5 
if %p1.wow.sr%==12  set/a p1.wow.sm=%skill.12.sm% 
if %p1.wow.sr%==12  set/a p1.wow.sc=%p1.wow.sv% * %skill.12.sc% / 10 
if %p1.wow.sr%==12  set/a p1.wow.sx=%p1.wow.sv% * %skill.12.sx% / 10 
if %p1.wow.sr%==12  set p1.wow.sd=4 
if %p2.wow.sr%==12  set/a p1.wow.sm=%skill.12.sm% 
if %p2.wow.sr%==12  set/a p1.wow.sc=%p1.wow.sv% * %skill.12.sc% / 10 
if %p2.wow.sr%==12  set/a p1.wow.sx=%p1.wow.sv% * %skill.12.sx% / 10 
if %p2.wow.sr%==12  set p1.wow.sd=4 
if %p1.wow.sr%==13  set/a p1.wow.sm=%skill.13.sm% 
if %p1.wow.sr%==13  set/a p1.wow.sc=%p1.wow.sv% * %skill.13.sc% / 10 
if %p1.wow.sr%==13  set/a p1.wow.sx=%p1.wow.sv% * %skill.13.sx% / 10 
if %p1.wow.sr%==13  set p1.wow.sd=3 
if %p2.wow.sr%==13  set/a p1.wow.sm=%skill.13.sm% 
if %p2.wow.sr%==13  set/a p1.wow.sc=%p1.wow.sv% * %skill.13.sc% / 10 
if %p2.wow.sr%==13  set/a p1.wow.sx=%p1.wow.sv% * %skill.13.sx% / 10 
if %p2.wow.sr%==13  set p1.wow.sd=3 
if %p1.wow.sr%==14  set/a p1.wow.sm=%skill.14.sm% 
if %p1.wow.sr%==14  set/a p1.wow.sc=%p1.wow.sv% * %skill.14.sc% / 10 
if %p1.wow.sr%==14  set/a p1.wow.sx=%p1.wow.sv% * %skill.14.sx% / 10 
if %p1.wow.sr%==14  set p1.wow.sd=2 
if %p2.wow.sr%==14  set/a p1.wow.sm=%skill.14.sm% 
if %p2.wow.sr%==14  set/a p1.wow.sc=%p1.wow.sv% * %skill.14.sc% / 10 
if %p2.wow.sr%==14  set/a p1.wow.sx=%p1.wow.sv% * %skill.14.sx% / 10 
if %p2.wow.sr%==14  set p1.wow.sd=2 
if %p1.wow.sr%==15  set/a p1.wow.sm=%skill.15.sm% 
if %p1.wow.sr%==15  set/a p1.wow.sc=%p1.wow.sv% * %skill.15.sc% / 10 
if %p1.wow.sr%==15  set/a p1.wow.sx=%p1.wow.sv% * %skill.15.sx% / 10 
if %p1.wow.sr%==15  set p1.wow.sd=1 
if %p2.wow.sr%==15  set/a p1.wow.sm=%skill.15.sm% 
if %p2.wow.sr%==15  set/a p1.wow.sc=%p1.wow.sv% * %skill.15.sc% / 10 
if %p2.wow.sr%==15  set/a p1.wow.sx=%p1.wow.sv% * %skill.15.sx% / 10 
if %p2.wow.sr%==15  set p1.wow.sd=1 

call:funct.loadbar 9 Loading Skills
 
if %p1.dkl.sr%==0  set/a p1.dkl.sm=%skill.0.sm% 
if %p1.dkl.sr%==0  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.0.sc% / 10 
if %p1.dkl.sr%==0  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.0.sx% / 10 
if %p1.dkl.sr%==0  set p1.dkl.sd=Novice 
if %p2.dkl.sr%==0  set/a p1.dkl.sm=%skill.0.sm% 
if %p2.dkl.sr%==0  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.0.sc% / 10 
if %p2.dkl.sr%==0  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.0.sx% / 10 
if %p2.dkl.sr%==0  set p1.dkl.sd=Novice 
if %p1.dkl.sr%==1  set/a p1.dkl.sm=%skill.1.sm% 
if %p1.dkl.sr%==1  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.1.sc% / 10 
if %p1.dkl.sr%==1  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.1.sx% / 10 
if %p1.dkl.sr%==1  set p1.dkl.sd=F 
if %p2.dkl.sr%==1  set/a p1.dkl.sm=%skill.1.sm% 
if %p2.dkl.sr%==1  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.1.sc% / 10 
if %p2.dkl.sr%==1  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.1.sx% / 10 
if %p2.dkl.sr%==1  set p1.dkl.sd=F 
if %p1.dkl.sr%==2  set/a p1.dkl.sm=%skill.2.sm% 
if %p1.dkl.sr%==2  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.2.sc% / 10 
if %p1.dkl.sr%==2  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.2.sx% / 10 
if %p1.dkl.sr%==2  set p1.dkl.sd=E 
if %p2.dkl.sr%==2  set/a p1.dkl.sm=%skill.2.sm% 
if %p2.dkl.sr%==2  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.2.sc% / 10 
if %p2.dkl.sr%==2  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.2.sx% / 10 
if %p2.dkl.sr%==2  set p1.dkl.sd=E 
if %p1.dkl.sr%==3  set/a p1.dkl.sm=%skill.3.sm% 
if %p1.dkl.sr%==3  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.3.sc% / 10 
if %p1.dkl.sr%==3  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.3.sx% / 10 
if %p1.dkl.sr%==3  set p1.dkl.sd=D 
if %p2.dkl.sr%==3  set/a p1.dkl.sm=%skill.3.sm% 
if %p2.dkl.sr%==3  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.3.sc% / 10 
if %p2.dkl.sr%==3  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.3.sx% / 10 
if %p2.dkl.sr%==3  set p1.dkl.sd=D 
if %p1.dkl.sr%==4  set/a p1.dkl.sm=%skill.4.sm% 
if %p1.dkl.sr%==4  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.4.sc% / 10 
if %p1.dkl.sr%==4  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.4.sx% / 10 
if %p1.dkl.sr%==4  set p1.dkl.sd=C 
if %p2.dkl.sr%==4  set/a p1.dkl.sm=%skill.4.sm% 
if %p2.dkl.sr%==4  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.4.sc% / 10 
if %p2.dkl.sr%==4  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.4.sx% / 10 
if %p2.dkl.sr%==4  set p1.dkl.sd=C 
if %p1.dkl.sr%==5  set/a p1.dkl.sm=%skill.5.sm% 
if %p1.dkl.sr%==5  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.5.sc% / 10 
if %p1.dkl.sr%==5  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.5.sx% / 10 
if %p1.dkl.sr%==5  set p1.dkl.sd=B 
if %p2.dkl.sr%==5  set/a p1.dkl.sm=%skill.5.sm% 
if %p2.dkl.sr%==5  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.5.sc% / 10 
if %p2.dkl.sr%==5  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.5.sx% / 10 
if %p2.dkl.sr%==5  set p1.dkl.sd=B 
if %p1.dkl.sr%==6  set/a p1.dkl.sm=%skill.6.sm% 
if %p1.dkl.sr%==6  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.6.sc% / 10 
if %p1.dkl.sr%==6  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.6.sx% / 10 
if %p1.dkl.sr%==6  set p1.dkl.sd=A 
if %p2.dkl.sr%==6  set/a p1.dkl.sm=%skill.6.sm% 
if %p2.dkl.sr%==6  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.6.sc% / 10 
if %p2.dkl.sr%==6  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.6.sx% / 10 
if %p2.dkl.sr%==6  set p1.dkl.sd=A 
if %p1.dkl.sr%==7  set/a p1.dkl.sm=%skill.7.sm% 
if %p1.dkl.sr%==7  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.7.sc% / 10 
if %p1.dkl.sr%==7  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.7.sx% / 10 
if %p1.dkl.sr%==7  set p1.dkl.sd=9 
if %p2.dkl.sr%==7  set/a p1.dkl.sm=%skill.7.sm% 
if %p2.dkl.sr%==7  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.7.sc% / 10 
if %p2.dkl.sr%==7  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.7.sx% / 10 
if %p2.dkl.sr%==7  set p1.dkl.sd=9 
if %p1.dkl.sr%==8  set/a p1.dkl.sm=%skill.8.sm% 
if %p1.dkl.sr%==8  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.8.sc% / 10 
if %p1.dkl.sr%==8  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.8.sx% / 10 
if %p1.dkl.sr%==8  set p1.dkl.sd=8 
if %p2.dkl.sr%==8  set/a p1.dkl.sm=%skill.8.sm% 
if %p2.dkl.sr%==8  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.8.sc% / 10 
if %p2.dkl.sr%==8  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.8.sx% / 10 
if %p2.dkl.sr%==8  set p1.dkl.sd=8 
if %p1.dkl.sr%==9  set/a p1.dkl.sm=%skill.9.sm% 
if %p1.dkl.sr%==9  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.9.sc% / 10 
if %p1.dkl.sr%==9  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.9.sx% / 10 
if %p1.dkl.sr%==9  set p1.dkl.sd=7 
if %p2.dkl.sr%==9  set/a p1.dkl.sm=%skill.9.sm% 
if %p2.dkl.sr%==9  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.9.sc% / 10 
if %p2.dkl.sr%==9  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.9.sx% / 10 
if %p2.dkl.sr%==9  set p1.dkl.sd=7 
if %p1.dkl.sr%==10  set/a p1.dkl.sm=%skill.10.sm% 
if %p1.dkl.sr%==10  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.10.sc% / 10 
if %p1.dkl.sr%==10  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.10.sx% / 10 
if %p1.dkl.sr%==10  set p1.dkl.sd=6 
if %p2.dkl.sr%==10  set/a p1.dkl.sm=%skill.10.sm% 
if %p2.dkl.sr%==10  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.10.sc% / 10 
if %p2.dkl.sr%==10  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.10.sx% / 10 
if %p2.dkl.sr%==10  set p1.dkl.sd=6 
if %p1.dkl.sr%==11  set/a p1.dkl.sm=%skill.11.sm% 
if %p1.dkl.sr%==11  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.11.sc% / 10 
if %p1.dkl.sr%==11  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.11.sx% / 10 
if %p1.dkl.sr%==11  set p1.dkl.sd=5 
if %p2.dkl.sr%==11  set/a p1.dkl.sm=%skill.11.sm% 
if %p2.dkl.sr%==11  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.11.sc% / 10 
if %p2.dkl.sr%==11  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.11.sx% / 10 
if %p2.dkl.sr%==11  set p1.dkl.sd=5 
if %p1.dkl.sr%==12  set/a p1.dkl.sm=%skill.12.sm% 
if %p1.dkl.sr%==12  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.12.sc% / 10 
if %p1.dkl.sr%==12  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.12.sx% / 10 
if %p1.dkl.sr%==12  set p1.dkl.sd=4 
if %p2.dkl.sr%==12  set/a p1.dkl.sm=%skill.12.sm% 
if %p2.dkl.sr%==12  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.12.sc% / 10 
if %p2.dkl.sr%==12  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.12.sx% / 10 
if %p2.dkl.sr%==12  set p1.dkl.sd=4 
if %p1.dkl.sr%==13  set/a p1.dkl.sm=%skill.13.sm% 
if %p1.dkl.sr%==13  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.13.sc% / 10 
if %p1.dkl.sr%==13  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.13.sx% / 10 
if %p1.dkl.sr%==13  set p1.dkl.sd=3 
if %p2.dkl.sr%==13  set/a p1.dkl.sm=%skill.13.sm% 
if %p2.dkl.sr%==13  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.13.sc% / 10 
if %p2.dkl.sr%==13  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.13.sx% / 10 
if %p2.dkl.sr%==13  set p1.dkl.sd=3 
if %p1.dkl.sr%==14  set/a p1.dkl.sm=%skill.14.sm% 
if %p1.dkl.sr%==14  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.14.sc% / 10 
if %p1.dkl.sr%==14  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.14.sx% / 10 
if %p1.dkl.sr%==14  set p1.dkl.sd=2 
if %p2.dkl.sr%==14  set/a p1.dkl.sm=%skill.14.sm% 
if %p2.dkl.sr%==14  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.14.sc% / 10 
if %p2.dkl.sr%==14  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.14.sx% / 10 
if %p2.dkl.sr%==14  set p1.dkl.sd=2 
if %p1.dkl.sr%==15  set/a p1.dkl.sm=%skill.15.sm% 
if %p1.dkl.sr%==15  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.15.sc% / 10 
if %p1.dkl.sr%==15  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.15.sx% / 10 
if %p1.dkl.sr%==15  set p1.dkl.sd=1 
if %p2.dkl.sr%==15  set/a p1.dkl.sm=%skill.15.sm% 
if %p2.dkl.sr%==15  set/a p1.dkl.sc=%p1.dkl.sv% * %skill.15.sc% / 10 
if %p2.dkl.sr%==15  set/a p1.dkl.sx=%p1.dkl.sv% * %skill.15.sx% / 10 
if %p2.dkl.sr%==15  set p1.dkl.sd=1 
 
if %p1.wor.sr%==0  set/a p1.wor.sm=%skill.0.sm% 
if %p1.wor.sr%==0  set/a p1.wor.sc=%p1.wor.sv% * %skill.0.sc% / 10 
if %p1.wor.sr%==0  set/a p1.wor.sx=%p1.wor.sv% * %skill.0.sx% / 10 
if %p1.wor.sr%==0  set p1.wor.sd=Novice 
if %p2.wor.sr%==0  set/a p1.wor.sm=%skill.0.sm% 
if %p2.wor.sr%==0  set/a p1.wor.sc=%p1.wor.sv% * %skill.0.sc% / 10 
if %p2.wor.sr%==0  set/a p1.wor.sx=%p1.wor.sv% * %skill.0.sx% / 10 
if %p2.wor.sr%==0  set p1.wor.sd=Novice 
if %p1.wor.sr%==1  set/a p1.wor.sm=%skill.1.sm% 
if %p1.wor.sr%==1  set/a p1.wor.sc=%p1.wor.sv% * %skill.1.sc% / 10 
if %p1.wor.sr%==1  set/a p1.wor.sx=%p1.wor.sv% * %skill.1.sx% / 10 
if %p1.wor.sr%==1  set p1.wor.sd=F 
if %p2.wor.sr%==1  set/a p1.wor.sm=%skill.1.sm% 
if %p2.wor.sr%==1  set/a p1.wor.sc=%p1.wor.sv% * %skill.1.sc% / 10 
if %p2.wor.sr%==1  set/a p1.wor.sx=%p1.wor.sv% * %skill.1.sx% / 10 
if %p2.wor.sr%==1  set p1.wor.sd=F 
if %p1.wor.sr%==2  set/a p1.wor.sm=%skill.2.sm% 
if %p1.wor.sr%==2  set/a p1.wor.sc=%p1.wor.sv% * %skill.2.sc% / 10 
if %p1.wor.sr%==2  set/a p1.wor.sx=%p1.wor.sv% * %skill.2.sx% / 10 
if %p1.wor.sr%==2  set p1.wor.sd=E 
if %p2.wor.sr%==2  set/a p1.wor.sm=%skill.2.sm% 
if %p2.wor.sr%==2  set/a p1.wor.sc=%p1.wor.sv% * %skill.2.sc% / 10 
if %p2.wor.sr%==2  set/a p1.wor.sx=%p1.wor.sv% * %skill.2.sx% / 10 
if %p2.wor.sr%==2  set p1.wor.sd=E 
if %p1.wor.sr%==3  set/a p1.wor.sm=%skill.3.sm% 
if %p1.wor.sr%==3  set/a p1.wor.sc=%p1.wor.sv% * %skill.3.sc% / 10 
if %p1.wor.sr%==3  set/a p1.wor.sx=%p1.wor.sv% * %skill.3.sx% / 10 
if %p1.wor.sr%==3  set p1.wor.sd=D 
if %p2.wor.sr%==3  set/a p1.wor.sm=%skill.3.sm% 
if %p2.wor.sr%==3  set/a p1.wor.sc=%p1.wor.sv% * %skill.3.sc% / 10 
if %p2.wor.sr%==3  set/a p1.wor.sx=%p1.wor.sv% * %skill.3.sx% / 10 
if %p2.wor.sr%==3  set p1.wor.sd=D 
if %p1.wor.sr%==4  set/a p1.wor.sm=%skill.4.sm% 
if %p1.wor.sr%==4  set/a p1.wor.sc=%p1.wor.sv% * %skill.4.sc% / 10 
if %p1.wor.sr%==4  set/a p1.wor.sx=%p1.wor.sv% * %skill.4.sx% / 10 
if %p1.wor.sr%==4  set p1.wor.sd=C 
if %p2.wor.sr%==4  set/a p1.wor.sm=%skill.4.sm% 
if %p2.wor.sr%==4  set/a p1.wor.sc=%p1.wor.sv% * %skill.4.sc% / 10 
if %p2.wor.sr%==4  set/a p1.wor.sx=%p1.wor.sv% * %skill.4.sx% / 10 
if %p2.wor.sr%==4  set p1.wor.sd=C 
if %p1.wor.sr%==5  set/a p1.wor.sm=%skill.5.sm% 
if %p1.wor.sr%==5  set/a p1.wor.sc=%p1.wor.sv% * %skill.5.sc% / 10 
if %p1.wor.sr%==5  set/a p1.wor.sx=%p1.wor.sv% * %skill.5.sx% / 10 
if %p1.wor.sr%==5  set p1.wor.sd=B 
if %p2.wor.sr%==5  set/a p1.wor.sm=%skill.5.sm% 
if %p2.wor.sr%==5  set/a p1.wor.sc=%p1.wor.sv% * %skill.5.sc% / 10 
if %p2.wor.sr%==5  set/a p1.wor.sx=%p1.wor.sv% * %skill.5.sx% / 10 
if %p2.wor.sr%==5  set p1.wor.sd=B 
if %p1.wor.sr%==6  set/a p1.wor.sm=%skill.6.sm% 
if %p1.wor.sr%==6  set/a p1.wor.sc=%p1.wor.sv% * %skill.6.sc% / 10 
if %p1.wor.sr%==6  set/a p1.wor.sx=%p1.wor.sv% * %skill.6.sx% / 10 
if %p1.wor.sr%==6  set p1.wor.sd=A 
if %p2.wor.sr%==6  set/a p1.wor.sm=%skill.6.sm% 
if %p2.wor.sr%==6  set/a p1.wor.sc=%p1.wor.sv% * %skill.6.sc% / 10 
if %p2.wor.sr%==6  set/a p1.wor.sx=%p1.wor.sv% * %skill.6.sx% / 10 
if %p2.wor.sr%==6  set p1.wor.sd=A 
if %p1.wor.sr%==7  set/a p1.wor.sm=%skill.7.sm% 
if %p1.wor.sr%==7  set/a p1.wor.sc=%p1.wor.sv% * %skill.7.sc% / 10 
if %p1.wor.sr%==7  set/a p1.wor.sx=%p1.wor.sv% * %skill.7.sx% / 10 
if %p1.wor.sr%==7  set p1.wor.sd=9 
if %p2.wor.sr%==7  set/a p1.wor.sm=%skill.7.sm% 
if %p2.wor.sr%==7  set/a p1.wor.sc=%p1.wor.sv% * %skill.7.sc% / 10 
if %p2.wor.sr%==7  set/a p1.wor.sx=%p1.wor.sv% * %skill.7.sx% / 10 
if %p2.wor.sr%==7  set p1.wor.sd=9 
if %p1.wor.sr%==8  set/a p1.wor.sm=%skill.8.sm% 
if %p1.wor.sr%==8  set/a p1.wor.sc=%p1.wor.sv% * %skill.8.sc% / 10 
if %p1.wor.sr%==8  set/a p1.wor.sx=%p1.wor.sv% * %skill.8.sx% / 10 
if %p1.wor.sr%==8  set p1.wor.sd=8 
if %p2.wor.sr%==8  set/a p1.wor.sm=%skill.8.sm% 
if %p2.wor.sr%==8  set/a p1.wor.sc=%p1.wor.sv% * %skill.8.sc% / 10 
if %p2.wor.sr%==8  set/a p1.wor.sx=%p1.wor.sv% * %skill.8.sx% / 10 
if %p2.wor.sr%==8  set p1.wor.sd=8 
if %p1.wor.sr%==9  set/a p1.wor.sm=%skill.9.sm% 
if %p1.wor.sr%==9  set/a p1.wor.sc=%p1.wor.sv% * %skill.9.sc% / 10 
if %p1.wor.sr%==9  set/a p1.wor.sx=%p1.wor.sv% * %skill.9.sx% / 10 
if %p1.wor.sr%==9  set p1.wor.sd=7 
if %p2.wor.sr%==9  set/a p1.wor.sm=%skill.9.sm% 
if %p2.wor.sr%==9  set/a p1.wor.sc=%p1.wor.sv% * %skill.9.sc% / 10 
if %p2.wor.sr%==9  set/a p1.wor.sx=%p1.wor.sv% * %skill.9.sx% / 10 
if %p2.wor.sr%==9  set p1.wor.sd=7 
if %p1.wor.sr%==10  set/a p1.wor.sm=%skill.10.sm% 
if %p1.wor.sr%==10  set/a p1.wor.sc=%p1.wor.sv% * %skill.10.sc% / 10 
if %p1.wor.sr%==10  set/a p1.wor.sx=%p1.wor.sv% * %skill.10.sx% / 10 
if %p1.wor.sr%==10  set p1.wor.sd=6 
if %p2.wor.sr%==10  set/a p1.wor.sm=%skill.10.sm% 
if %p2.wor.sr%==10  set/a p1.wor.sc=%p1.wor.sv% * %skill.10.sc% / 10 
if %p2.wor.sr%==10  set/a p1.wor.sx=%p1.wor.sv% * %skill.10.sx% / 10 
if %p2.wor.sr%==10  set p1.wor.sd=6 
if %p1.wor.sr%==11  set/a p1.wor.sm=%skill.11.sm% 
if %p1.wor.sr%==11  set/a p1.wor.sc=%p1.wor.sv% * %skill.11.sc% / 10 
if %p1.wor.sr%==11  set/a p1.wor.sx=%p1.wor.sv% * %skill.11.sx% / 10 
if %p1.wor.sr%==11  set p1.wor.sd=5 
if %p2.wor.sr%==11  set/a p1.wor.sm=%skill.11.sm% 
if %p2.wor.sr%==11  set/a p1.wor.sc=%p1.wor.sv% * %skill.11.sc% / 10 
if %p2.wor.sr%==11  set/a p1.wor.sx=%p1.wor.sv% * %skill.11.sx% / 10 
if %p2.wor.sr%==11  set p1.wor.sd=5 
if %p1.wor.sr%==12  set/a p1.wor.sm=%skill.12.sm% 
if %p1.wor.sr%==12  set/a p1.wor.sc=%p1.wor.sv% * %skill.12.sc% / 10 
if %p1.wor.sr%==12  set/a p1.wor.sx=%p1.wor.sv% * %skill.12.sx% / 10 
if %p1.wor.sr%==12  set p1.wor.sd=4 
if %p2.wor.sr%==12  set/a p1.wor.sm=%skill.12.sm% 
if %p2.wor.sr%==12  set/a p1.wor.sc=%p1.wor.sv% * %skill.12.sc% / 10 
if %p2.wor.sr%==12  set/a p1.wor.sx=%p1.wor.sv% * %skill.12.sx% / 10 
if %p2.wor.sr%==12  set p1.wor.sd=4 
if %p1.wor.sr%==13  set/a p1.wor.sm=%skill.13.sm% 
if %p1.wor.sr%==13  set/a p1.wor.sc=%p1.wor.sv% * %skill.13.sc% / 10 
if %p1.wor.sr%==13  set/a p1.wor.sx=%p1.wor.sv% * %skill.13.sx% / 10 
if %p1.wor.sr%==13  set p1.wor.sd=3 
if %p2.wor.sr%==13  set/a p1.wor.sm=%skill.13.sm% 
if %p2.wor.sr%==13  set/a p1.wor.sc=%p1.wor.sv% * %skill.13.sc% / 10 
if %p2.wor.sr%==13  set/a p1.wor.sx=%p1.wor.sv% * %skill.13.sx% / 10 
if %p2.wor.sr%==13  set p1.wor.sd=3 
if %p1.wor.sr%==14  set/a p1.wor.sm=%skill.14.sm% 
if %p1.wor.sr%==14  set/a p1.wor.sc=%p1.wor.sv% * %skill.14.sc% / 10 
if %p1.wor.sr%==14  set/a p1.wor.sx=%p1.wor.sv% * %skill.14.sx% / 10 
if %p1.wor.sr%==14  set p1.wor.sd=2 
if %p2.wor.sr%==14  set/a p1.wor.sm=%skill.14.sm% 
if %p2.wor.sr%==14  set/a p1.wor.sc=%p1.wor.sv% * %skill.14.sc% / 10 
if %p2.wor.sr%==14  set/a p1.wor.sx=%p1.wor.sv% * %skill.14.sx% / 10 
if %p2.wor.sr%==14  set p1.wor.sd=2 
if %p1.wor.sr%==15  set/a p1.wor.sm=%skill.15.sm% 
if %p1.wor.sr%==15  set/a p1.wor.sc=%p1.wor.sv% * %skill.15.sc% / 10 
if %p1.wor.sr%==15  set/a p1.wor.sx=%p1.wor.sv% * %skill.15.sx% / 10 
if %p1.wor.sr%==15  set p1.wor.sd=1 
if %p2.wor.sr%==15  set/a p1.wor.sm=%skill.15.sm% 
if %p2.wor.sr%==15  set/a p1.wor.sc=%p1.wor.sv% * %skill.15.sc% / 10 
if %p2.wor.sr%==15  set/a p1.wor.sx=%p1.wor.sv% * %skill.15.sx% / 10 
if %p2.wor.sr%==15  set p1.wor.sd=1 
 
if %p1.wit.sr%==0  set/a p1.wit.sm=%skill.0.sm% 
if %p1.wit.sr%==0  set/a p1.wit.sc=%p1.wit.sv% * %skill.0.sc% / 10 
if %p1.wit.sr%==0  set/a p1.wit.sx=%p1.wit.sv% * %skill.0.sx% / 10 
if %p1.wit.sr%==0  set p1.wit.sd=Novice 
if %p2.wit.sr%==0  set/a p1.wit.sm=%skill.0.sm% 
if %p2.wit.sr%==0  set/a p1.wit.sc=%p1.wit.sv% * %skill.0.sc% / 10 
if %p2.wit.sr%==0  set/a p1.wit.sx=%p1.wit.sv% * %skill.0.sx% / 10 
if %p2.wit.sr%==0  set p1.wit.sd=Novice 
if %p1.wit.sr%==1  set/a p1.wit.sm=%skill.1.sm% 
if %p1.wit.sr%==1  set/a p1.wit.sc=%p1.wit.sv% * %skill.1.sc% / 10 
if %p1.wit.sr%==1  set/a p1.wit.sx=%p1.wit.sv% * %skill.1.sx% / 10 
if %p1.wit.sr%==1  set p1.wit.sd=F 
if %p2.wit.sr%==1  set/a p1.wit.sm=%skill.1.sm% 
if %p2.wit.sr%==1  set/a p1.wit.sc=%p1.wit.sv% * %skill.1.sc% / 10 
if %p2.wit.sr%==1  set/a p1.wit.sx=%p1.wit.sv% * %skill.1.sx% / 10 
if %p2.wit.sr%==1  set p1.wit.sd=F 
if %p1.wit.sr%==2  set/a p1.wit.sm=%skill.2.sm% 
if %p1.wit.sr%==2  set/a p1.wit.sc=%p1.wit.sv% * %skill.2.sc% / 10 
if %p1.wit.sr%==2  set/a p1.wit.sx=%p1.wit.sv% * %skill.2.sx% / 10 
if %p1.wit.sr%==2  set p1.wit.sd=E 
if %p2.wit.sr%==2  set/a p1.wit.sm=%skill.2.sm% 
if %p2.wit.sr%==2  set/a p1.wit.sc=%p1.wit.sv% * %skill.2.sc% / 10 
if %p2.wit.sr%==2  set/a p1.wit.sx=%p1.wit.sv% * %skill.2.sx% / 10 
if %p2.wit.sr%==2  set p1.wit.sd=E 
if %p1.wit.sr%==3  set/a p1.wit.sm=%skill.3.sm% 
if %p1.wit.sr%==3  set/a p1.wit.sc=%p1.wit.sv% * %skill.3.sc% / 10 
if %p1.wit.sr%==3  set/a p1.wit.sx=%p1.wit.sv% * %skill.3.sx% / 10 
if %p1.wit.sr%==3  set p1.wit.sd=D 
if %p2.wit.sr%==3  set/a p1.wit.sm=%skill.3.sm% 
if %p2.wit.sr%==3  set/a p1.wit.sc=%p1.wit.sv% * %skill.3.sc% / 10 
if %p2.wit.sr%==3  set/a p1.wit.sx=%p1.wit.sv% * %skill.3.sx% / 10 
if %p2.wit.sr%==3  set p1.wit.sd=D 
if %p1.wit.sr%==4  set/a p1.wit.sm=%skill.4.sm% 
if %p1.wit.sr%==4  set/a p1.wit.sc=%p1.wit.sv% * %skill.4.sc% / 10 
if %p1.wit.sr%==4  set/a p1.wit.sx=%p1.wit.sv% * %skill.4.sx% / 10 
if %p1.wit.sr%==4  set p1.wit.sd=C 
if %p2.wit.sr%==4  set/a p1.wit.sm=%skill.4.sm% 
if %p2.wit.sr%==4  set/a p1.wit.sc=%p1.wit.sv% * %skill.4.sc% / 10 
if %p2.wit.sr%==4  set/a p1.wit.sx=%p1.wit.sv% * %skill.4.sx% / 10 
if %p2.wit.sr%==4  set p1.wit.sd=C 
if %p1.wit.sr%==5  set/a p1.wit.sm=%skill.5.sm% 
if %p1.wit.sr%==5  set/a p1.wit.sc=%p1.wit.sv% * %skill.5.sc% / 10 
if %p1.wit.sr%==5  set/a p1.wit.sx=%p1.wit.sv% * %skill.5.sx% / 10 
if %p1.wit.sr%==5  set p1.wit.sd=B 
if %p2.wit.sr%==5  set/a p1.wit.sm=%skill.5.sm% 
if %p2.wit.sr%==5  set/a p1.wit.sc=%p1.wit.sv% * %skill.5.sc% / 10 
if %p2.wit.sr%==5  set/a p1.wit.sx=%p1.wit.sv% * %skill.5.sx% / 10 
if %p2.wit.sr%==5  set p1.wit.sd=B 
if %p1.wit.sr%==6  set/a p1.wit.sm=%skill.6.sm% 
if %p1.wit.sr%==6  set/a p1.wit.sc=%p1.wit.sv% * %skill.6.sc% / 10 
if %p1.wit.sr%==6  set/a p1.wit.sx=%p1.wit.sv% * %skill.6.sx% / 10 
if %p1.wit.sr%==6  set p1.wit.sd=A 
if %p2.wit.sr%==6  set/a p1.wit.sm=%skill.6.sm% 
if %p2.wit.sr%==6  set/a p1.wit.sc=%p1.wit.sv% * %skill.6.sc% / 10 
if %p2.wit.sr%==6  set/a p1.wit.sx=%p1.wit.sv% * %skill.6.sx% / 10 
if %p2.wit.sr%==6  set p1.wit.sd=A 
if %p1.wit.sr%==7  set/a p1.wit.sm=%skill.7.sm% 
if %p1.wit.sr%==7  set/a p1.wit.sc=%p1.wit.sv% * %skill.7.sc% / 10 
if %p1.wit.sr%==7  set/a p1.wit.sx=%p1.wit.sv% * %skill.7.sx% / 10 
if %p1.wit.sr%==7  set p1.wit.sd=9 
if %p2.wit.sr%==7  set/a p1.wit.sm=%skill.7.sm% 
if %p2.wit.sr%==7  set/a p1.wit.sc=%p1.wit.sv% * %skill.7.sc% / 10 
if %p2.wit.sr%==7  set/a p1.wit.sx=%p1.wit.sv% * %skill.7.sx% / 10 
if %p2.wit.sr%==7  set p1.wit.sd=9 
if %p1.wit.sr%==8  set/a p1.wit.sm=%skill.8.sm% 
if %p1.wit.sr%==8  set/a p1.wit.sc=%p1.wit.sv% * %skill.8.sc% / 10 
if %p1.wit.sr%==8  set/a p1.wit.sx=%p1.wit.sv% * %skill.8.sx% / 10 
if %p1.wit.sr%==8  set p1.wit.sd=8 
if %p2.wit.sr%==8  set/a p1.wit.sm=%skill.8.sm% 
if %p2.wit.sr%==8  set/a p1.wit.sc=%p1.wit.sv% * %skill.8.sc% / 10 
if %p2.wit.sr%==8  set/a p1.wit.sx=%p1.wit.sv% * %skill.8.sx% / 10 
if %p2.wit.sr%==8  set p1.wit.sd=8 
if %p1.wit.sr%==9  set/a p1.wit.sm=%skill.9.sm% 
if %p1.wit.sr%==9  set/a p1.wit.sc=%p1.wit.sv% * %skill.9.sc% / 10 
if %p1.wit.sr%==9  set/a p1.wit.sx=%p1.wit.sv% * %skill.9.sx% / 10 
if %p1.wit.sr%==9  set p1.wit.sd=7 
if %p2.wit.sr%==9  set/a p1.wit.sm=%skill.9.sm% 
if %p2.wit.sr%==9  set/a p1.wit.sc=%p1.wit.sv% * %skill.9.sc% / 10 
if %p2.wit.sr%==9  set/a p1.wit.sx=%p1.wit.sv% * %skill.9.sx% / 10 
if %p2.wit.sr%==9  set p1.wit.sd=7 
if %p1.wit.sr%==10  set/a p1.wit.sm=%skill.10.sm% 
if %p1.wit.sr%==10  set/a p1.wit.sc=%p1.wit.sv% * %skill.10.sc% / 10 
if %p1.wit.sr%==10  set/a p1.wit.sx=%p1.wit.sv% * %skill.10.sx% / 10 
if %p1.wit.sr%==10  set p1.wit.sd=6 
if %p2.wit.sr%==10  set/a p1.wit.sm=%skill.10.sm% 
if %p2.wit.sr%==10  set/a p1.wit.sc=%p1.wit.sv% * %skill.10.sc% / 10 
if %p2.wit.sr%==10  set/a p1.wit.sx=%p1.wit.sv% * %skill.10.sx% / 10 
if %p2.wit.sr%==10  set p1.wit.sd=6 
if %p1.wit.sr%==11  set/a p1.wit.sm=%skill.11.sm% 
if %p1.wit.sr%==11  set/a p1.wit.sc=%p1.wit.sv% * %skill.11.sc% / 10 
if %p1.wit.sr%==11  set/a p1.wit.sx=%p1.wit.sv% * %skill.11.sx% / 10 
if %p1.wit.sr%==11  set p1.wit.sd=5 
if %p2.wit.sr%==11  set/a p1.wit.sm=%skill.11.sm% 
if %p2.wit.sr%==11  set/a p1.wit.sc=%p1.wit.sv% * %skill.11.sc% / 10 
if %p2.wit.sr%==11  set/a p1.wit.sx=%p1.wit.sv% * %skill.11.sx% / 10 
if %p2.wit.sr%==11  set p1.wit.sd=5 
if %p1.wit.sr%==12  set/a p1.wit.sm=%skill.12.sm% 
if %p1.wit.sr%==12  set/a p1.wit.sc=%p1.wit.sv% * %skill.12.sc% / 10 
if %p1.wit.sr%==12  set/a p1.wit.sx=%p1.wit.sv% * %skill.12.sx% / 10 
if %p1.wit.sr%==12  set p1.wit.sd=4 
if %p2.wit.sr%==12  set/a p1.wit.sm=%skill.12.sm% 
if %p2.wit.sr%==12  set/a p1.wit.sc=%p1.wit.sv% * %skill.12.sc% / 10 
if %p2.wit.sr%==12  set/a p1.wit.sx=%p1.wit.sv% * %skill.12.sx% / 10 
if %p2.wit.sr%==12  set p1.wit.sd=4 
if %p1.wit.sr%==13  set/a p1.wit.sm=%skill.13.sm% 
if %p1.wit.sr%==13  set/a p1.wit.sc=%p1.wit.sv% * %skill.13.sc% / 10 
if %p1.wit.sr%==13  set/a p1.wit.sx=%p1.wit.sv% * %skill.13.sx% / 10 
if %p1.wit.sr%==13  set p1.wit.sd=3 
if %p2.wit.sr%==13  set/a p1.wit.sm=%skill.13.sm% 
if %p2.wit.sr%==13  set/a p1.wit.sc=%p1.wit.sv% * %skill.13.sc% / 10 
if %p2.wit.sr%==13  set/a p1.wit.sx=%p1.wit.sv% * %skill.13.sx% / 10 
if %p2.wit.sr%==13  set p1.wit.sd=3 
if %p1.wit.sr%==14  set/a p1.wit.sm=%skill.14.sm% 
if %p1.wit.sr%==14  set/a p1.wit.sc=%p1.wit.sv% * %skill.14.sc% / 10 
if %p1.wit.sr%==14  set/a p1.wit.sx=%p1.wit.sv% * %skill.14.sx% / 10 
if %p1.wit.sr%==14  set p1.wit.sd=2 
if %p2.wit.sr%==14  set/a p1.wit.sm=%skill.14.sm% 
if %p2.wit.sr%==14  set/a p1.wit.sc=%p1.wit.sv% * %skill.14.sc% / 10 
if %p2.wit.sr%==14  set/a p1.wit.sx=%p1.wit.sv% * %skill.14.sx% / 10 
if %p2.wit.sr%==14  set p1.wit.sd=2 
if %p1.wit.sr%==15  set/a p1.wit.sm=%skill.15.sm% 
if %p1.wit.sr%==15  set/a p1.wit.sc=%p1.wit.sv% * %skill.15.sc% / 10 
if %p1.wit.sr%==15  set/a p1.wit.sx=%p1.wit.sv% * %skill.15.sx% / 10 
if %p1.wit.sr%==15  set p1.wit.sd=1 
if %p2.wit.sr%==15  set/a p1.wit.sm=%skill.15.sm% 
if %p2.wit.sr%==15  set/a p1.wit.sc=%p1.wit.sv% * %skill.15.sc% / 10 
if %p2.wit.sr%==15  set/a p1.wit.sx=%p1.wit.sv% * %skill.15.sx% / 10 
if %p2.wit.sr%==15  set p1.wit.sd=1 
 
if %p1.arc.sr%==0  set/a p1.arc.sm=%skill.0.sm% 
if %p1.arc.sr%==0  set/a p1.arc.sc=%p1.arc.sv% * %skill.0.sc% / 10 
if %p1.arc.sr%==0  set/a p1.arc.sx=%p1.arc.sv% * %skill.0.sx% / 10 
if %p1.arc.sr%==0  set p1.arc.sd=Novice 
if %p2.arc.sr%==0  set/a p1.arc.sm=%skill.0.sm% 
if %p2.arc.sr%==0  set/a p1.arc.sc=%p1.arc.sv% * %skill.0.sc% / 10 
if %p2.arc.sr%==0  set/a p1.arc.sx=%p1.arc.sv% * %skill.0.sx% / 10 
if %p2.arc.sr%==0  set p1.arc.sd=Novice 
if %p1.arc.sr%==1  set/a p1.arc.sm=%skill.1.sm% 
if %p1.arc.sr%==1  set/a p1.arc.sc=%p1.arc.sv% * %skill.1.sc% / 10 
if %p1.arc.sr%==1  set/a p1.arc.sx=%p1.arc.sv% * %skill.1.sx% / 10 
if %p1.arc.sr%==1  set p1.arc.sd=F 
if %p2.arc.sr%==1  set/a p1.arc.sm=%skill.1.sm% 
if %p2.arc.sr%==1  set/a p1.arc.sc=%p1.arc.sv% * %skill.1.sc% / 10 
if %p2.arc.sr%==1  set/a p1.arc.sx=%p1.arc.sv% * %skill.1.sx% / 10 
if %p2.arc.sr%==1  set p1.arc.sd=F 
if %p1.arc.sr%==2  set/a p1.arc.sm=%skill.2.sm% 
if %p1.arc.sr%==2  set/a p1.arc.sc=%p1.arc.sv% * %skill.2.sc% / 10 
if %p1.arc.sr%==2  set/a p1.arc.sx=%p1.arc.sv% * %skill.2.sx% / 10 
if %p1.arc.sr%==2  set p1.arc.sd=E 
if %p2.arc.sr%==2  set/a p1.arc.sm=%skill.2.sm% 
if %p2.arc.sr%==2  set/a p1.arc.sc=%p1.arc.sv% * %skill.2.sc% / 10 
if %p2.arc.sr%==2  set/a p1.arc.sx=%p1.arc.sv% * %skill.2.sx% / 10 
if %p2.arc.sr%==2  set p1.arc.sd=E 
if %p1.arc.sr%==3  set/a p1.arc.sm=%skill.3.sm% 
if %p1.arc.sr%==3  set/a p1.arc.sc=%p1.arc.sv% * %skill.3.sc% / 10 
if %p1.arc.sr%==3  set/a p1.arc.sx=%p1.arc.sv% * %skill.3.sx% / 10 
if %p1.arc.sr%==3  set p1.arc.sd=D 
if %p2.arc.sr%==3  set/a p1.arc.sm=%skill.3.sm% 
if %p2.arc.sr%==3  set/a p1.arc.sc=%p1.arc.sv% * %skill.3.sc% / 10 
if %p2.arc.sr%==3  set/a p1.arc.sx=%p1.arc.sv% * %skill.3.sx% / 10 
if %p2.arc.sr%==3  set p1.arc.sd=D 
if %p1.arc.sr%==4  set/a p1.arc.sm=%skill.4.sm% 
if %p1.arc.sr%==4  set/a p1.arc.sc=%p1.arc.sv% * %skill.4.sc% / 10 
if %p1.arc.sr%==4  set/a p1.arc.sx=%p1.arc.sv% * %skill.4.sx% / 10 
if %p1.arc.sr%==4  set p1.arc.sd=C 
if %p2.arc.sr%==4  set/a p1.arc.sm=%skill.4.sm% 
if %p2.arc.sr%==4  set/a p1.arc.sc=%p1.arc.sv% * %skill.4.sc% / 10 
if %p2.arc.sr%==4  set/a p1.arc.sx=%p1.arc.sv% * %skill.4.sx% / 10 
if %p2.arc.sr%==4  set p1.arc.sd=C 
if %p1.arc.sr%==5  set/a p1.arc.sm=%skill.5.sm% 
if %p1.arc.sr%==5  set/a p1.arc.sc=%p1.arc.sv% * %skill.5.sc% / 10 
if %p1.arc.sr%==5  set/a p1.arc.sx=%p1.arc.sv% * %skill.5.sx% / 10 
if %p1.arc.sr%==5  set p1.arc.sd=B 
if %p2.arc.sr%==5  set/a p1.arc.sm=%skill.5.sm% 
if %p2.arc.sr%==5  set/a p1.arc.sc=%p1.arc.sv% * %skill.5.sc% / 10 
if %p2.arc.sr%==5  set/a p1.arc.sx=%p1.arc.sv% * %skill.5.sx% / 10 
if %p2.arc.sr%==5  set p1.arc.sd=B 
if %p1.arc.sr%==6  set/a p1.arc.sm=%skill.6.sm% 
if %p1.arc.sr%==6  set/a p1.arc.sc=%p1.arc.sv% * %skill.6.sc% / 10 
if %p1.arc.sr%==6  set/a p1.arc.sx=%p1.arc.sv% * %skill.6.sx% / 10 
if %p1.arc.sr%==6  set p1.arc.sd=A 
if %p2.arc.sr%==6  set/a p1.arc.sm=%skill.6.sm% 
if %p2.arc.sr%==6  set/a p1.arc.sc=%p1.arc.sv% * %skill.6.sc% / 10 
if %p2.arc.sr%==6  set/a p1.arc.sx=%p1.arc.sv% * %skill.6.sx% / 10 
if %p2.arc.sr%==6  set p1.arc.sd=A 
if %p1.arc.sr%==7  set/a p1.arc.sm=%skill.7.sm% 
if %p1.arc.sr%==7  set/a p1.arc.sc=%p1.arc.sv% * %skill.7.sc% / 10 
if %p1.arc.sr%==7  set/a p1.arc.sx=%p1.arc.sv% * %skill.7.sx% / 10 
if %p1.arc.sr%==7  set p1.arc.sd=9 
if %p2.arc.sr%==7  set/a p1.arc.sm=%skill.7.sm% 
if %p2.arc.sr%==7  set/a p1.arc.sc=%p1.arc.sv% * %skill.7.sc% / 10 
if %p2.arc.sr%==7  set/a p1.arc.sx=%p1.arc.sv% * %skill.7.sx% / 10 
if %p2.arc.sr%==7  set p1.arc.sd=9 
if %p1.arc.sr%==8  set/a p1.arc.sm=%skill.8.sm% 
if %p1.arc.sr%==8  set/a p1.arc.sc=%p1.arc.sv% * %skill.8.sc% / 10 
if %p1.arc.sr%==8  set/a p1.arc.sx=%p1.arc.sv% * %skill.8.sx% / 10 
if %p1.arc.sr%==8  set p1.arc.sd=8 
if %p2.arc.sr%==8  set/a p1.arc.sm=%skill.8.sm% 
if %p2.arc.sr%==8  set/a p1.arc.sc=%p1.arc.sv% * %skill.8.sc% / 10 
if %p2.arc.sr%==8  set/a p1.arc.sx=%p1.arc.sv% * %skill.8.sx% / 10 
if %p2.arc.sr%==8  set p1.arc.sd=8 
if %p1.arc.sr%==9  set/a p1.arc.sm=%skill.9.sm% 
if %p1.arc.sr%==9  set/a p1.arc.sc=%p1.arc.sv% * %skill.9.sc% / 10 
if %p1.arc.sr%==9  set/a p1.arc.sx=%p1.arc.sv% * %skill.9.sx% / 10 
if %p1.arc.sr%==9  set p1.arc.sd=7 
if %p2.arc.sr%==9  set/a p1.arc.sm=%skill.9.sm% 
if %p2.arc.sr%==9  set/a p1.arc.sc=%p1.arc.sv% * %skill.9.sc% / 10 
if %p2.arc.sr%==9  set/a p1.arc.sx=%p1.arc.sv% * %skill.9.sx% / 10 
if %p2.arc.sr%==9  set p1.arc.sd=7 
if %p1.arc.sr%==10  set/a p1.arc.sm=%skill.10.sm% 
if %p1.arc.sr%==10  set/a p1.arc.sc=%p1.arc.sv% * %skill.10.sc% / 10 
if %p1.arc.sr%==10  set/a p1.arc.sx=%p1.arc.sv% * %skill.10.sx% / 10 
if %p1.arc.sr%==10  set p1.arc.sd=6 
if %p2.arc.sr%==10  set/a p1.arc.sm=%skill.10.sm% 
if %p2.arc.sr%==10  set/a p1.arc.sc=%p1.arc.sv% * %skill.10.sc% / 10 
if %p2.arc.sr%==10  set/a p1.arc.sx=%p1.arc.sv% * %skill.10.sx% / 10 
if %p2.arc.sr%==10  set p1.arc.sd=6 
if %p1.arc.sr%==11  set/a p1.arc.sm=%skill.11.sm% 
if %p1.arc.sr%==11  set/a p1.arc.sc=%p1.arc.sv% * %skill.11.sc% / 10 
if %p1.arc.sr%==11  set/a p1.arc.sx=%p1.arc.sv% * %skill.11.sx% / 10 
if %p1.arc.sr%==11  set p1.arc.sd=5 
if %p2.arc.sr%==11  set/a p1.arc.sm=%skill.11.sm% 
if %p2.arc.sr%==11  set/a p1.arc.sc=%p1.arc.sv% * %skill.11.sc% / 10 
if %p2.arc.sr%==11  set/a p1.arc.sx=%p1.arc.sv% * %skill.11.sx% / 10 
if %p2.arc.sr%==11  set p1.arc.sd=5 
if %p1.arc.sr%==12  set/a p1.arc.sm=%skill.12.sm% 
if %p1.arc.sr%==12  set/a p1.arc.sc=%p1.arc.sv% * %skill.12.sc% / 10 
if %p1.arc.sr%==12  set/a p1.arc.sx=%p1.arc.sv% * %skill.12.sx% / 10 
if %p1.arc.sr%==12  set p1.arc.sd=4 
if %p2.arc.sr%==12  set/a p1.arc.sm=%skill.12.sm% 
if %p2.arc.sr%==12  set/a p1.arc.sc=%p1.arc.sv% * %skill.12.sc% / 10 
if %p2.arc.sr%==12  set/a p1.arc.sx=%p1.arc.sv% * %skill.12.sx% / 10 
if %p2.arc.sr%==12  set p1.arc.sd=4 
if %p1.arc.sr%==13  set/a p1.arc.sm=%skill.13.sm% 
if %p1.arc.sr%==13  set/a p1.arc.sc=%p1.arc.sv% * %skill.13.sc% / 10 
if %p1.arc.sr%==13  set/a p1.arc.sx=%p1.arc.sv% * %skill.13.sx% / 10 
if %p1.arc.sr%==13  set p1.arc.sd=3 
if %p2.arc.sr%==13  set/a p1.arc.sm=%skill.13.sm% 
if %p2.arc.sr%==13  set/a p1.arc.sc=%p1.arc.sv% * %skill.13.sc% / 10 
if %p2.arc.sr%==13  set/a p1.arc.sx=%p1.arc.sv% * %skill.13.sx% / 10 
if %p2.arc.sr%==13  set p1.arc.sd=3 
if %p1.arc.sr%==14  set/a p1.arc.sm=%skill.14.sm% 
if %p1.arc.sr%==14  set/a p1.arc.sc=%p1.arc.sv% * %skill.14.sc% / 10 
if %p1.arc.sr%==14  set/a p1.arc.sx=%p1.arc.sv% * %skill.14.sx% / 10 
if %p1.arc.sr%==14  set p1.arc.sd=2 
if %p2.arc.sr%==14  set/a p1.arc.sm=%skill.14.sm% 
if %p2.arc.sr%==14  set/a p1.arc.sc=%p1.arc.sv% * %skill.14.sc% / 10 
if %p2.arc.sr%==14  set/a p1.arc.sx=%p1.arc.sv% * %skill.14.sx% / 10 
if %p2.arc.sr%==14  set p1.arc.sd=2 
if %p1.arc.sr%==15  set/a p1.arc.sm=%skill.15.sm% 
if %p1.arc.sr%==15  set/a p1.arc.sc=%p1.arc.sv% * %skill.15.sc% / 10 
if %p1.arc.sr%==15  set/a p1.arc.sx=%p1.arc.sv% * %skill.15.sx% / 10 
if %p1.arc.sr%==15  set p1.arc.sd=1 
if %p2.arc.sr%==15  set/a p1.arc.sm=%skill.15.sm% 
if %p2.arc.sr%==15  set/a p1.arc.sc=%p1.arc.sv% * %skill.15.sc% / 10 
if %p2.arc.sr%==15  set/a p1.arc.sx=%p1.arc.sv% * %skill.15.sx% / 10 
if %p2.arc.sr%==15  set p1.arc.sd=1 

call:funct.loadbar 10 Loading Skills

call:funct.loadbar 15 Saving

call:funct.save

call funct.loadbar 18 Saving

::Battle!!!
::=========================================================================================================
:grid.p1
if %p1.hp% lss 1 goto p1.die
if %p2.hp% lss 1 goto p2.die
call:funct.cooldown
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
echo.   T  U  R  N:     %n1%
echo --------------------------------------------------------------------------------
echo. %n1% : %p1.hp%HP        %p1.mp%MP
echo. %n2% : %p2.hp%HP        %p1.mp%MP
echo. 
echo --------------------------------------------------------------------------------
set/p grid.p1=                   )

if %grid.p1%==heal goto p1.hea
if %grid.p1%==attack goto p1.att
if %grid.p1%==rest goto p1.res
if %grid.p1%==arrow goto p1.mga

::locked skills

if %grid.p1%==claw goto p1.mgc
if %grid.p1%==fusion goto p1.fus
if %grid.p1%==sokatsui goto p1.sok
if %grid.p1%==light goto p1.lig
if %grid.p1%==enlight goto p1.enl
if %grid.p1%==dire goto p1.dbl

::
if %p1.ew%==1 goto grid.p1.ew
if %p1.la%==1 goto grid.p1.la
if %p1.lu%==1 goto grid.p1.lu

goto p1.na

:grid.p1.ew
if %grid.p1%==ice goto grid.p1.ice
if %grid.p1%==fire goto grid.p1.fir
if %grid.p1%==scythe goto grid.p1.esc
if %grid.p1%==clair goto grid.p1.cla
if %grid.p1%==holy goto grid.p1.hly
goto p1.na

:grid.p1.la

goto p1.na

:grid.p1.lu

goto p1.na

:p1.na
goto grid.p1
 
pause