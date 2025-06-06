@echo off
setlocal enabledelayedexpansion

set /a "index=1"

FOR /F "delims=" %%i IN ('curl "https://www.royalroad.com/bd/cr?w=300&h=250" -s --compressed') DO (
  set "_temp!index!=%%i"
  set /a "index+=1"
)

set "output=^<div^>!_temp4:title=p!!_temp45:internal=external!!_temp46!!_temp47!^</div^>"
set "output=!output:    = !"
set "output=!output:  = !"
set "output=!output:> <=><!"
set "output=!output:^" ^/^>= ^"^/^>!"
rem echo !output!
echo !output!>>ad_catalogue.txt

set "progress=Loading: #"

for /L %%i in (1,1,50) do (
  set /a fracs=50 * %2 / %1
  if !fracs! GEQ %%i (
    set "progress=!progress!^="
  ) else (
    set "progress=!progress!-"
  )
)

cls
echo %1 %2
echo !progress!#