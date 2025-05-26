@echo off
setlocal enabledelayedexpansion
set /p "N=How many times to fetch ads? "
for /L %%i in (1,1,%N%) do (call scrape_ad.bat)
echo.
echo Done fetching ads
echo Sorting and building page...
echo.
type nul > ad_catalogue_Sorted.txt

for /f "delims=" %%F in ('sort ad_catalogue.txt') do (
  set "curr=%%F"
  setlocal enabledelayedexpansion
  if "!N!" neq "!curr!" echo !curr!
  endlocal
  set "N=%%F"
) >>ad_catalogue_Sorted.txt

del ad_catalogue.txt
rename ad_catalogue_Sorted.txt ad_catalogue.txt

type nul>ad-catalogue.html
echo ^<html^>^<head^>^</head^>^<body^>^<H1^>MoaZedon's RoyalRoad Ad Catalogue^</h1^>^<p^>Hello, I hope you find this useful.^</p^>^<p^>Yes I know there's a few broken images near the top. The come back if I fix them, so I gave up. They are the RR ads for premium, and the images are stored in a different place online.^</p^>^<p^>I've sorted these according to the names that authors gave each ad, so a lot of stories have all their ads in one place. Some of the names are just chaos though...^</p^>^<p^>This will probably depreciate pretty fast, but I'll put the scripts I used to automatically build it on ^<a href="https://github.com/Emmalemon2/rr-ad-list"^>my github^</a^>, and they should keep working for a while (windows only).^</p^>^<p^>I don't do html design. If you do, and want to make this less ugly, PM me on RoyalRoad.^</p^>^<div style=^"display^: grid; grid-template-columns^: repeat(auto-fit, minmax(300px, 1fr)); justify-items^: start; gap^: 0px;^"^>>>ad-catalogue.html
type ad_catalogue.txt >>ad-catalogue.html
echo ^</div^>^</body^>^</html^>>>ad-catalogue.html
echo done
start "" ad-catalogue.html