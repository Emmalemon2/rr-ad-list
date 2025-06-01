@echo off
setlocal enabledelayedexpansion

rem I know invoking powershell is typical malware behaviour, but the string manipulation in batch is SOOO bad. Notice that I'm not importing or loading or whatever the keyword is. #Not_A_Virus #Hail_The_Incomprhensible_Machine_Gods
powershell -Command "Get-Content ad_catalogue.txt | ForEach-Object { $i = $_.IndexOf('url'); if ($i -ge 0) { $_.Substring($i) + $_.Substring(0,$i) } else { $_ } } | Set-Content ad_catalogue_working.txt"

set /p "N=How many times to fetch ads? "
for /L %%i in (1,1,%N%) do (call scrape_ad.bat)
echo.
echo Done fetching ads
echo Sorting and building page...
echo.

rem sort the list, and use mancoi algorithm to cull duplicates picked up in scraping new ads. redirect output into temp file
for /f "delims=" %%F in ('sort /R ad_catalogue_working.txt') do (
  set "curr=%%F"
  setlocal enabledelayedexpansion
  if "!N!" neq "!curr!" echo !curr!
  endlocal
  set "N=%%F"
) >>ad_catalogue_working2.txt

rem clear output files
type nul>ad-catalogue.html

rem I know invoking powershell is typical malware behaviour, but the string manipulation in batch is SOOO bad. Notice that I'm not importing or loading or whatever the keyword is. #Not_A_Virus #Hail_The_Incomprhensible_Machine_Gods
powershell -Command "Get-Content ad_catalogue_working2.txt | ForEach-Object { $i = $_.IndexOf('<div>'); if ($i -ge 0) { $_.Substring($i) + $_.Substring(0,$i) } else { $_ } } | Set-Content ad_catalogue.txt"

rem delete temporary files
del ad_catalogue_working.txt
del ad_catalogue_working2.txt

echo ^<html^>^<body^>^<H1^>MoaZedon's RoyalRoad Ad Catalogue^</h1^>^<p^>Hello, I hope you find this useful or fun. I'll take RR reputation as payment, thanks. ^<a href="https://www.royalroad.com/forums/givereputation?uid=530143"^>+rep^</a^> (I can never have enough)^</p^>^<p^>Everything is sorted based on the destination url in reverse alphbetical order. This means that all the ads for a fiction should hopefully be together, and amazon and podium ads get sent to the bottom. Because of how fictions are numbered, large chunks of this list might be in chronological order, but I make no promises. I do not include the site ads for premium, because they work store the images somewhere else and I'm too lazy to manually get the six(ish) ads.^</p^>^<p^>I don't know how long I will maintain this page, or if RR will delete the images for the ads at somepoint. If you want to start over by yourself, I have put the scripts I used to make it on ^<a href="https://github.com/Emmalemon2/rr-ad-list"^>my github^</a^>, and they should keep working for a while (windows only).^</p^>^<p^>I suck at html and page design. If you do not, and would like help improve this page, PM me on RoyalRoad.^</p^>^<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); justify-items: start; gap: 0px;"^> >>ad-catalogue.html
type ad_catalogue.txt >>ad-catalogue.html
echo ^</div^>^</body^>^</html^>>>ad-catalogue.html
echo done
start "" ad-catalogue.html
