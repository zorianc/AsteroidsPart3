import java.util.*;

ArrayList<Star> stars = new ArrayList<Star>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Spaceship borgCube = new Spaceship(200, 400, 0, 0, 0);
int hyperspaceCooldown = 0;
int lives = 3;
int asteroidsDestroyed = 0;

static int numStars = 25;

public void setup() {
  
  for (int i = 0; i < numStars; i++) {
    stars.add(new Star(Math.random() * 800, Math.random() * 800));
  }
  
  size(800, 800);
}

public void draw() {
  if (hyperspaceCooldown > 0) hyperspaceCooldown--;
  
  if (Math.random() < 0.02) {
    asteroids.add(new Asteroid());
  }
  
  background(0);
  
  for (int i = 0; i < stars.size(); i++) {
    stars.get(i).show();
  }
  
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    
    if (abs((float)asteroids.get(i).myCenterX) > 1200 || abs((float)asteroids.get(i).myCenterY) > 1200) {
      asteroids.remove(i);
      break;
    }
    else if (dist((float)asteroids.get(i).myCenterX, (float)asteroids.get(i).myCenterY, (float)borgCube.myCenterX, (float)borgCube.myCenterY) < 25) {
      asteroids.remove(i);
      lives--;
      break;
    }
    
    for (int j = bullets.size() - 1; j >= 0; j--) {
      if (dist((float)bullets.get(j).myCenterX, (float)bullets.get(j).myCenterY, (float)asteroids.get(i).myCenterX, (float)asteroids.get(i).myCenterY) < 28) {
        asteroids.remove(i);
        bullets.remove(j);
        asteroidsDestroyed++;
      }
    }
  }
  println(bullets.size());
  
  for (int i = bullets.size() - 1; i >= 0; i--) {
    bullets.get(i).show();
    bullets.get(i).move();
    
    if (dist((float)bullets.get(i).myCenterX, (float)bullets.get(i).myCenterY, 400, 400) > 580) {
      bullets.remove(i);
    }
  }
  
  borgCube.show();
  borgCube.move();
  
  fill(255);
  stroke(0);
  rect(0, 0, 140, 70);
  
  textSize(16);
  text("Lives: ", 6, 38);
  text(lives, 50, 38);
  
  fill(0);
  textSize(12);
  text("Hyperspace cooldown: ", 6, 18);
  text(hyperspaceCooldown, 125, 18);
  
  textSize(12);
  text("Asteroids destroyed: ", 6, 56);
  text(asteroidsDestroyed, 110, 56);
  
  if (lives == 0) {
    background(0);
    textSize(50);
    fill(255);
    text("You Lose!", 310, 400);
    stop();
  }
}

public void keyPressed() {
  if (key == 'a') {
    borgCube.turn(-10);
  }
  else if (key == 'd') {
    borgCube.turn(10);
  }
  else if (key == 'w') {
    borgCube.accelerate(0.5);
  }
  else if (key == 's') {
    bullets.add(new Bullet(borgCube));
  }
  else if (key == ' ') {
    if (hyperspaceCooldown == 0) {
      borgCube.hyperspace();
      hyperspaceCooldown = 120;
    }
  }
}

int mathrandomspamAvoider (int lower, int upper) {
  return (int)(Math.random() * (upper - lower + 1)) + lower;
}
