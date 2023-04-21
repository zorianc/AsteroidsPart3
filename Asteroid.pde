class Asteroid extends Floater {
  private double rotSpeed;
  
  Asteroid (double myCenterX, double myCenterY, double myXspeed, double myYspeed) {
    this.corners = 5;
    this.xCorners = new int[]{mathrandomspamAvoider(-40, -20), mathrandomspamAvoider(-10, 15), mathrandomspamAvoider(20, 40), mathrandomspamAvoider(10, 30), mathrandomspamAvoider(-20, 5)};
    this.yCorners = new int[]{mathrandomspamAvoider(-10, 15), mathrandomspamAvoider(20, 40), mathrandomspamAvoider(-10, 25), mathrandomspamAvoider(-30, -15), mathrandomspamAvoider(-30, -10)};
    this.myColor = 255;
    this.myCenterX = myCenterX;
    this.myCenterY = myCenterY;
    this.myXspeed = myXspeed;
    this.myYspeed = myYspeed;
    this.myPointDirection = 0;
    this.rotSpeed = mathrandomspamAvoider(0, 10);
  }
  
  Asteroid () {
    this.corners = 5;
    this.xCorners = new int[]{mathrandomspamAvoider(-40, -20), mathrandomspamAvoider(-10, 15), mathrandomspamAvoider(20, 40), mathrandomspamAvoider(10, 30), mathrandomspamAvoider(-20, 5)};
    this.yCorners = new int[]{mathrandomspamAvoider(-10, 15), mathrandomspamAvoider(20, 40), mathrandomspamAvoider(-10, 25), mathrandomspamAvoider(-30, -15), mathrandomspamAvoider(-30, -10)};
    this.myColor = 255;
    do {
      this.myCenterX = (Math.random() - 0.5) * 1600 + 400;
      this.myCenterY = (Math.random() - 0.5) * 1600 + 400;
    } while(myCenterX > 0 && myCenterX < 800 && myCenterY > 0 && myCenterY < 800);
    
    this.myXspeed = (int)(Math.random() * 4 + 1);
    this.myYspeed = (int)(Math.random() * 4 + 1);
    
    this.myXspeed = (this.myCenterX > 400) ? -myXspeed : myXspeed;
    this.myYspeed = (this.myCenterX > 400) ? -myXspeed : myXspeed;
    this.rotSpeed = mathrandomspamAvoider(-8, 8);
  }
  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    myPointDirection += rotSpeed;
  }
  
  public double getMyCenterX() {
    return myCenterX;
  }
  public double getMyCenterY() {
    return myCenterY;
  }
}
