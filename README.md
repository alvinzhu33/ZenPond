# ZenPond
**APCS1 Final Project**


**Description**
A beautiful and elegant virtual pond where fish come to swim in a zen, peaceful environment. This game is is for your inner peace and amusement. Enjoy!

**Directions to Run**
Please download the Minim library by: Sketch - Import Library... - Add Library... - and searching for "Minim" under "Libraries".
Then just clone (which might take a long time due to having to download 4 mp3 files and 1 picture), open in processing, and press play!

**Directions**
Sit back and relax by watching the fish swim around. You will be greated with a welcome screen. Once you click play, the game would start. There are no complicated buttons in this game, just three buttons. The music button will be green if music is playing while red if it is not. The track button would allow you to change the background music. The reset button takes you right back to the welcome menu and resets the game from there.

You will also have fish pellets available to aid your growing fish. The fish can grow by itself until a certain amount but to reach its true potential, feed it!

**Changelog**

Alvin

1/19:
* Modified the method for rotating the fish.
* Bug of twitchy fish was introduced.
* Made the fish swim according to its orientation (the forward direction matches up to its head)[Fixed bug where the fish faced one direction but moved in another]
* Made the fish more textured (using transparency, I made the fish blend a little with the direction for better visuals when under the lilypads)
* Adapted the code so we can have multiple fishes in the pond at one time easily in the setup
* Fixed the boundaries so they function more consistently

1/20:
* Attempted to implement a growing function
* Attempt went horribly worng; commented out for now, will try again tomorrow

1/21:
* Got the growing function to work
* The fish still grows a little too large (either that or must make eyes scalable as well
* Discovered that the wagging function becomes more off the longer the length

1/22:
* Modified the wag function so the wags are balanced even if the length grows longer
* Made a scalable eye so the eyes grow bigger as the fish grows bigger
* Fixed boundaries once again so there are less waiting
* Decreased max length of the fish

1/23:
* Created a welcome screen

1/24:
* Created a reset button
* Implemented sound into the project (using the surf theme from Pokemon RSE)
* Made a button to mute/unmute the sound
* Made fish spawn at different locations every time
* Made fish have a slower growth rate
* Made the music loop after it ends (still need to snip the music file better so the loop plays through more nicely)
* Successfully made a randomized spawn for each fish (random number of fishes, random species, random places)

1/25
* Each fish now has a different max length
* Increased number of fishes at spawn
* Made a new file that consolidated (and thus replaces) the Lilypad and Flower file (Lilypad + Flower = Blossom).
* Blossom randomly spawn around the edge of the screen
* Random lilypad orientation
* Faster catfish speed
* Added 3 new tracks and a new button to switch between them; from Tracks 1 to 4, they are the surf themes of Pokemon Red/Blue, Pokemon Ruby/Sapphire, Pokemon Diamond/Pearl, and Pokemon X/Y

Jiaqi

1/20:
* Changed order that objects are drawn for organization
* Create an individual movement for the fish tail (using booleans to reverse the waving of the tail), and an function to change the coordinates of the position of the center bezier.

1/21:
* Made corrections on the fish tail movement 
* Added variables to make code more flexible to work with

1/22:
* Implemented drifting motion 

1/23:
* Added on to drifting
* Deleted Skeleton.pde by merging it with FishObject
* Turn FishObject into an inherited class with three sub fish classes (Koi, Goldfish, Catfish)

1/24:
* Started adding on to the individual fish classes for individualized features
* Added drifting to the lilypads too
* Changed the appearance of each fish (goldfish has twin tails, catfish has moving whiskers and blunted tail, colors are diff)
* Created varied speeds for each fish
* Made volume lower 

1/25:
* Finished Catfish design
* Fixed positioning of flowers and lilypads
* Created fish food with mouse positioning 
* Started eatFood function

*Random Notes*

Goldfish: ~10 in (half the size of Koifish)
Koi Fish: ~20 in (little shorter and skinnier) than catfish
Catfish: ~24 in (largest and fattest fish)
