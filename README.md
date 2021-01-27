Asteroids (Part 3) 
==================

Adding bullets and finishing the Asteroids game
-------------------------------------
To finish our Asteroids game, we need to write a new class that represents Bullets. We will store the Bullets in an `ArrayList` much like we did with the Asteroids Part 2. Once we can shoot the bullets and destroy Asteroids, we will have a working game. Your Asteroids game doesn't have to look like any other. Feel free to modify it in any way you wish.

Suggested steps to completing the final Part 3 of the Asteroids assignment
--------------------------------------------------------------------------

1. Create a new Bullet.pde file in your most recent Part 2 of your AsteroidsGame folder. One way to do this is in Processing is to open the AsteroidGame sketch you created in Part 2. Make sure that when you do this you have the most current Part 2 sketch for AsteroidGame. Then, create a new tab called `Bullet` using mixed case exactly as shown. This will create a new `Bullet.pde` file along with the previously created `AsteroidGame.pde` and `Asteroid.pde` files in your sketch folder.
2. Modify `index.html` to add `Bullet.pde` to the list of files in the `data-processing-sources` and save.
3. Write a `Bullet` class that `extends Floater` in `Bullet.pde`. 
4. Write a constructor that takes one ship argument: `Bullet(Spaceship theShip)` This constructor will 
   - Use the `public` "getter" (accessor) functions of the `Spaceship` class to intialize `myCenterX`, `myCenterY`, `myXspeed`, `myYspeed` and `myPointDirection` of the bullet to be the same as the ship.
   - `accelerate()` by 6.0 or so (think of this as a *trigger* to get the bullet moving)
5. Override the `show()` method of the `Floater` class so that you can use circular bullets
6. Now, add just one bullet to your program. First, just draw it to the screen. Make sure you can see it before continuing to the next step.
7. Now, move the bullet.
8. Now create an `ArrayList` of Bullets. The list should be empty to start with. Everytime you press the key to "shoot", add a `new Bullet` to the `ArrayList`. Modify the program with loops that draw and move all the bullets in the ArrayList
9. Check slides of [Asteroids Parts 3](https://docs.google.com/presentation/d/1eSpNZiI6WjTBA4Jn_s_0pSicocsRXhOUnGaTOms80CM/edit#slide=id.gb3b1a5858b_0_131) presentation for some sample code that illustrates steps 1 - 8.
10. One way to check for collisions between the bullets and the Asteroids is to write a loop within a loop. 
   - a loop that goes through all the bullets to see if there is a collision between that bullet and the asteroid
   - if there is a collision remove both the asteroid and the bullet from their `ArrayLists` then use `break;` to stop the loop to prevent any index out of bounds execptions.
11. Upload all updated files to Github using the same process you have used previously (drag and drop or edit in Github directly)
12. Submit the same URL for your AsteroidsGame that you submitted for the previous assignment to new Google Classroom assignment for Asteroids Part 3.

Extensions
----------
If you have extra time, you might add some extra features to your Asteroids game. Have fun and be creative! **They will assigned extra-credit points which will be added to your overall grade!**
* +8% Have two Asteroids classes, one large and one small. When a large Asteroid is removed from the ArrayList add two small ones with the same x and y. Shooting should work on the small asteroids as well.(Hint: make the small asteroid a child of the large asteroid!)
* +3% Keep track of the score and/or the health of the ship. 
* +3% Save the score or health to [save the player's progress](https://github.com/chandrunarayan/SaveProgress#how-to-save-progress)
* +3% Randomly shaped Asteroids
* +3% Different types of weapons besides bullets
* +5% Add a second spaceship (UFO) that appears after a while and shoots at the players spaceship

