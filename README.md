<header>

# RR Ad Catalogue

</header>

Hello. This webpage is a list of a whole bunch of user ads from royal road. It's unlikely to ever have every ad, but it should have most of them. It's useful authors doing research for designing their own ads, boosting my ego, and finding ads that you saw one time but didn't click on.
<br>
<br>
I made this list by loading an ad in the same way as a page on royal road does, and then saving the destination of the link and the url of the image. Then I repeat this about a thousand times each week. I probably do count as an impression on ads while I'm scraping them from the website, but once I load an ad it won't cost the author anything for me to show it to people. The lowest price for an ad is $55 for 140,250 impressions. I expect most authors would use $55 for 280,500 impressions or a higher price better value option, but I will assume the worst case. I've loaded about 1000 unique ads a total of 5000 times so far (accross several weeks), so each ad no more than 10 times. $55÷140250×10≈0.004, so I've cost each ad no more than 4 cents. The author of Matabar has 17 ads running, the most I've seen of anyone. I'm fine with costing them a significant portion of a dollar, so I don't plan stop this project on ethical grounds. Probably boredom or lack of engagement will kill it eventually.
<br>
<br>
If you want to contribute or talk or something, I'm unlikely to look at this github often. Just steal my code, or message me on RR.
<br>
<br>
Credit to <a href="https://gist.github.com/mancoi/297f7e05fc0663ce8bcf6aab1ea4cad3">Mancoi</a>, I use his sorting algorithm.

<h2>
  The tools I used (windows only).
</h2>
Download the docs folder. You need the scrape_ad.bat, and the scrapeAds.bat files to be in the same unzipped folder. <br>
Open the scrapeAds.bat file. It asks for how many ads to load. This number will include duplicates, so add 50%. <br>
Wait, depending on internet speeds. It takes less than a minute for me to do 1000.<br>
The list of ads <i>should</i> open by itself when it finishes.
<br>
It should create two new files: ad-catalogue.html, and ad_catalogue.txt. The first is the page you opened in the browser to view the ads. The second is html code for the ads that it found. If you run it again, it will include the ads from this list, plus any new ones. If you plan to run it several times, it will make a more complete list each time by reusing the ads in ad_catalogue.txt. If ads on the list are breaking, then RR has probably deleted the assets after the campaign ended. Easiest fix is deleting ad_catalogue.txt and starting over.
 <h4> </h4>

 I put a visitor counter in because NUMBER-GO-UP! However, it's not super reliable. It also slightly doxxes myself, but I don't expect anyone to care that much. Stalkers have easier ways to get that information anyway.
<p>num visitors https://visitorbadge.io/status?path=https%3A%2F%2Femmalemon2.github.io%2Frr-ad-list%2F</p>
