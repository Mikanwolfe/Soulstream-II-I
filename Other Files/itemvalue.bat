:start
set/p item_value=itemvalue:
set/a item_value=(%item_value% / 30 + 1) * 30
echo %item_value%
goto:start