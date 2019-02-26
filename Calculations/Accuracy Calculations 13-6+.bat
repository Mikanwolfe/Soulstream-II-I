:start
set/p sba=Skill Base Accuracy=
set/p p1d=Player 1's Dex=
set/p p2i=Player 2's Int=


:funct.acc
set/a sba*=10
set/a acc.rmd=1000-%sba%
set/a acc.ratio=%p1d% + %p2i%
:funct.acc.a
if %acc.rmd% lss %acc.ratio% set/a acc.ratio/=10 & goto:funct.acc.a
set/a acc.piece=%acc.rmd% / %acc.ratio%
set/a acc.acc=%acc.piece% * %p1d% / 10
set/a acc.dex=%p1d% / 40
set/a acc=%sba% / 10 + %acc.dex% + %acc.acc%
if %acc% gtr 95 set acc=95
echo. %acc%
goto:start