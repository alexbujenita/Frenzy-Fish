# Fish Frenzy CLI Database Game

### Introduction
Fish Frenzy is a single player, command line interface, arcade game that involves the user going fishing to get a high score.

### How to install
-Fork or download this repository to your local machine  

-Enter into the the main directory  

-This is a Ruby CLI game so 'bundle install' before playing   

-To start the game type ruby bin/run.rb  


### Rules of Fishing Frenzy
-Each time you play you have 5 opportunities to catch a fish!  

-Every time you catch a fish you decide whether you would like to keep it forever or release it back into the wild  

-Careful! You can only release 3 fish back into the wild before you run out of bait  

-Your total score is based upon the final 5 fish you choose to keep  

-Each fish is worth different points that vary depending on size and species  

-All locations have different quantities and types of fish  

-There is also a mini fish quiz available to test your fish knowledge  

-Enjoy!  


### Creators
Alex - github: alexbujenita  

Faiz - github: Faizerz


---
### Common Questions:
- How do I turn off my SQL logger?
```ruby
# in config/environment.rb add this line:
ActiveRecord::Base.logger = nil
```
