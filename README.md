# Soulstream II-I

by mikanwolfe, mikanwolfe@nekox.net

> Note that this is the 'refresh' version, the base version "II" is in a seperate repository.
>
> Also note that most of this was written by a naive 14-15 year old. This README is the only thing reasonable about this entire repository.

---

Any reference to *Wolfe* refers to *Mikan*wolfe. Any reference to "LFS" or "LMC" now refers to Nekox.

---

## Original Concept

*Soulstream 2* (SS2) will be an improved version of the original soulstream (SS). the reason for this is because the original soulstream's systems are quite old and are inefficient. SS2 will retain many of the aspects of the
the original SS but will have major improvments. Improvements include:

- Graphics - no longer will the display be limited to a 40x30 space but will be more detailed
- System Design - Using newer techniques soulstream can be worked to make it faster and more reliable.
- UI - The unser interfaces will be reworked so that the interfaces are not as intimitating and can be used easily
- Gameplay - SS2 gameplay will be more dynamic and early-game battles will not be decided by the great random.

Other features Include:

- Character features/art - Characters will have some sort of design or equipment so that it won't just be a `-` and a `+` anymore
- Improved and more diverse skills - though a significant proportion of the skills will remain, some will not and will be replaced by better ones
- Dynamic skill leveling - skills will have more levels and different unlockables and dynamics to improve gameplay
- Improved passive skills - passive stats or skills will be added so that players will have more personalisation.
- Improved stats - the stat concept of the original SS will be revised and reworked so that it will by more efficient and work well with SS2

Of course there will be other improvements coming along though remaking a game that took 2~3 years again from scratch will take quite some time.

-- *A young Mikanwolfe, circa late 2014*

And yes, this entire repository, sans the readme, was written in Notepad (Windows) and eventually, Notepad++. Turns out a Text Editor's all you need.

---

### Various Notes

This section contains various snippets from the various text files lying around.

**SSII System Notes**

```

crl = crit limit
dfl = defence limit
pnl = penetration limit
ptl = protection limit
bll = balance limit
bml = balance multiplier limit
acl = accuracy limit
pcl = piercing limit

cr = critical rate
cm = critical multiplier
bl = balance
pc = piercing lv

hp, mp and sp (
hpa + hpx = hpl
hp/hpl
)
this is for inside battles

hp, hpa, hpx, hpl
hp = inbattle
hpa = base + added on 
hpx = for items, constantly reset
hpl = in game battle limit

st (and other stats)

st = use in calculations
sta = base + added on
stx = for items, constantly reset

oringally, a prefix of c was for classes, but in the new system, classes directly add to the a suffix.
chp = hpa + additional.

adv. lu, ew, lu are no longer class restrictions - all skills are accessible but the class-specific skills
are stronger (even cheaper?)

for skills:

acc = accuracy max			(value)
bbl = base balance			(value)
prc = piercing lv 			(value)
crr = critical rate			(percentage float100)
val = value, added mult 	(multiplier)
csc = cost, soul coins		(value)
csx = cost, experience		(value)
dil = dilation 				(multiplier)
dgm = damage min 			(value)
dgx = damage max			(value)
drm = drain min 			(value)
drx = drain max 			(value)


Starting 'Talents'
The respective stat gives 3x as much as opposed to normal.
Secondary stat gains 2x
ie Warrior gains 750 Def and +6 Piercing Lv. (etc, etc)

::------ Melee (STR)
:: Average Damage, Low Balance, High Defence, Average Piercing Level
---Warrior
+Will

---Fighter
+Dex

::------ Magic (INT)
::High Damage, Low Defence, Average Balance, Low Piercing Level
---Mage
+Will

---Wizard
+Dex

::------ Balance (DEX)
::Average Damage, High Balance, Low Defence, Average Piercing Level
---Ranger
+Str

---Hunter
+Int
::------ Piercing (WIL)
::High damage, Low Balance, Average Defence, High Piercing Level
---Reaper
+Dex

---Sniper
+str

::------ Critical (LUK)
::Average Damage, Average Defence, High Balance, Low Piercing
---Alchemist
+Critical Multiplier

---Assassin
+Critical Rate
```

**Statistics SS2**

```
Stats SS2

Defence Calculations:
NO NEGATIVE DEFENCE

100 / (100 +def - skill_dfp) * (dmg * [1-prot%])

i.e.
30def, 10prot%, 200dmg, 10dfp
100 / 120 * (200 * 90%)
=149DMG

NOTE: DFP used in calculations is multiplied by skillmultiplier.

Accuracy

100 / (100 + { [P1.DEX - P2.INT] / [P1.DEX+P2.INT] * 100 } ) + skill.acc
100DEX, 80INT, 40%SK.ACC
100 / 180 + .4
55% + 40% = 95%

Damage

MAX = Skill_Base_Damage * (100 + STR) / 100

MIN = MAX - (MAX * 100 / (100 + BAL + Skill_Base_Balance))

DMG = random( MIN, MAX )

200SBD, 100STR, 80BAL, 20SBB

MAX = 200 * (200/100) = 400
MIN = 400 - (400 * (100 / 100 + 80 + 20) = 200)
DMG = 200 ~ 400

40SBD, 170STR, 190BAL, 100SBB

MAX = 40 * (170/100) = 68
MIN = 68 - (68 * 100 / (100 + 190 + 100)) = 45
DMG = 45 ~ 68

SC+XP

TD = Total Damage

SCXP = (80 + WIL or LUK /2) / 100

SC or XP = TD * SCXP

SC, 400TD, 180LUK

SC = 400 * (80 + 180 /2 ) / 100 = 520

Crit:
CRR = 1 - 100 / 100 + INT
CRM = 1 + ( 1 - 100 + DEX )


::====================================--------------------------------------------------------------======
XP = Experience
SC = Soul Coins (credits)

CRM = Critical Multiplier
CRR = Critical Rate

DFP = Defence Penetration
DFR = Defence Resistance
PRO = Protection

AVD = Avoidance
ACC = Accuracy

=============
STR +max +def
DEX +bal +acc +dfp
INT +MP +CRR +dfr
LUK +CRM +SC
WIL +HP +XP
=============
Player Stat Variables
p1.stat.str

DEF Defence
BAL Balance
ACC Accuracy
AVD Avoidance
CRR Critical Rate
CRM Critical Multiplier

CMP Base/Class MP
MP Mana Points
CHP Base/Class HP
HP Health Points

SC Soul Coins
XP Experience
=============

DEF = STR / 10 + OTHER
BAL = DEX / 5 + OTHER
MP = BASE + INT / 2
HP = BASE + WIL

=============
Skill Varibles

skill.(name).sr

SR Skill Rank
SV Skill Value
SC Skill Cost
SX Skill XP
SA Skill Accuracy
SB Skill Balance
SP Skill Defpen

=============
Class Variables

p1.class.cl

CHP (Class HP)
CMP (Class MP)

CLV Class Level
CDF Class Defence
CDP Class Defpen
CBL Class Balance

CSTR Class STR
CDEX Class DEX
CINT Class INT
CLUK Class LUK
CWIL Class WIL

```



**Variables SS2**

```

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

Variables SSII

Critrate - 1~1000 (10 = 1%)
CritMult - 1~100 (50 = 5x, 10 = 1x)

SKILLS
=============================
NORMAL
=============================
ATT 	Attack
HEA 	Heal
FUS 	Fusion
RES 	Rest
=============================
LOCKED
=============================
MGC	Magic Claw
MGA	Magic Arrow
SOK	Sokatsui
LIG	 Lightning
ENL 	Enlightenment
DBL	Dire Blade
=============================
EWECA
=============================
ICE  	Ice Spear
FIR 	Firestorm
ESC 	Eweca Scythe
CLA 	Clairvoyance
HLY 	Holy Arrow
=============================
LACEDA
=============================
CER	Cero
LSC	Lunar Scythe
LSP	Lunar Spear
SHM	Sharp Mind
LAC	Laceda Blade
=============================
LUMINOUS
=============================
WOW	Wings of White
DKL	Dark Light
WOR	Wings of Rage
WIT	Wither
ARC	Luminous Arc
=============================

::skill base costs
rank, rankID, SC, XP
0  0   0%  20  20
F  1  50%  30  20
E  2  60%  40  20
D  3  70%  50  40
C  4  80%  60  60
B  5  90%  60  80
A  6  100% 80  100
9  7  110% 80  100
8  8  120% 80  100
7  9  140% 100 140
6  10 160% 120 180
5  11 200% 140 200
4  12 240% 160 200
3  13 280% 240 200
2  14 340% 360 300
1  15 400%

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

Stats

p1.hp
p1.mp
p1.hpl
p1.mpl
p1.hpa - Additional
p1.mpa

p1.xp
p1.sc

p1.str
p1.dex
p1.int
p1.luk
p1.wil

p1.df
p1.bl
p1.cmp
p1.chp

p1.crm
p1.crr
p1.cdp
p1.cdr
p1.pro

p1.avd
p1.acc

p1.clv
p1.cdf
p1.cdp
p1.cbl

p1.cstr
p1.cdex
p1.cint
p1.cluk
p1.cwil

p1.td

Skills

p1.skill.c = cooldown

p1.sr.SKILL
p1.sv
p1.sc
p1.sx
p1.sa
p1.sb
p1.sp

```

