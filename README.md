<header>

# RR Ad Catalogue

</header>

Hello. This program/webpage works by pretending to be a chapter of royal road, and loading the ads. Times a thousand or so. 
<br>
<br>
I probably do count as an impression on ads while I'm scraping them from the website, but once I load an ad it won't cost the author anything fo rme to show it to people. If I get at least a few people coming through here then it will probably even out. I think with the number of times I load each ad, I'm costing author somewhere around 0.03 cents (USD?) out of a minimum of $55 to place an ad. I can't see that rising above maybe 10 cents even if I update the list often, so I'm fine with that cost.
<br>
<br>
If you want to contribute or talk or something, I'm unlikely to look at this github often. Steal my code, or message me on RR.
<br>
<br>
Credit to <a href="https://gist.github.com/mancoi/297f7e05fc0663ce8bcf6aab1ea4cad3">Mancoi</a>, I use his sorting algorithm.

<h2>
  How to make an updated version (Windows only):
</h2>
Download the docs folder. You need the scrape_ad.bat, and the scrapeAds.bat files to be in the same unzipped folder. <br>
Open the scrapeAds.bat file. It asks for how many ads to load. This number will include duplicates, so add 50%. <br>
Wait, dependant on internet speeds. It took less than a minute for me to do 1000.<br>
The list of ads <i>should</i> open by itself when it finishes.
<br>
It should create two new files: ad-catalogue.html, and ad_catalogue.txt. The first is the page you opened in the browser to view the ads. The second is html code for the ads that it found. If you run it again, it will include the ads from this list, plus any new ones. <br>
I don't know how long RR keeps the images for ads for after the campaign finishes, so if you are getting lots of dead images/links, delete ad_catalogue.txt and start over with a fresh batch of ads.
 
