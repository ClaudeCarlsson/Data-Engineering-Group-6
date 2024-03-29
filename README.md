# Data Engineering Group 6 - Reddit Dataset

## Authors: 
Aria Assadi <br> 
Claude Carlsson <br> 
Sebastian Mikkelsen Toth <br> 
Kulathunga Hettiarachchige Vidumini Saumya<br> 
Tofte Tjörneryd <br> 

## Dataset
The dataset used in this analysis comes from https://files.pushshift.io/reddit/comments/ 

## The goal for the project:

### Find the key-words that define each year
Finding the top one hundred most used words from each year is a pretty simple
task, but finding the top words that are unique to each year, is way more
interesting. This way we could find what words that defined each year and create
a top ten list of unique words for each year. Hopefully, this would give some
interesting results that would give a trip down memory lane.

### Look up what year certain words were used
Create a function that takes in a word as its argument, and shows the occurrence
of that word from each year, trying to predict what year this word was
introduced. If the word ”iPhone” is used, the output will hopefully show that
2006 was the year when the ”iPhone” was introduced. The same way, an output
such as ”Instagram”, should output 2010. This idea should be helpful in order to
find when inventions or trends were introduced, but also to find when certain
words were popular.

### Count the number of comments in different subreddits to display a leaderboard
Count the number of comments in different subreddits and display a leaderboard, year by year.
<!---
All the requirements should be included or none.
## Necessary installations (Ubuntu)
sudo apt-get install jq
--->
