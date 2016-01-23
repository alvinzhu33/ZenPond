# ZenPond
**APCS1 Final Project**


**Description**
A beautiful and elegant virtual pond where fish come to swim in a zen, peaceful environment.

**Directions to Run**
Simply clone this repo and press play.

**Directions**
Sit back and relax by watching the fish swim around. There are no complicated buttons. This is for YOUR inner peace and amusement.

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
* 

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

*Random Notes*

Goldfish: ~10 in (half the size of Koifish)
Koi Fish: ~20 in (little shorter and skinnier) than catfish
Catfish: ~24 in (largest and fattest fish)
