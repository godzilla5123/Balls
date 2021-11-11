class Ball {
  private float ballSize, ballX, ballY, ballVelocityX, ballVelocityY, ballDirection;
  private color ballColor;

  public Ball(float bX, float bY) {
    ballX = bX;
    ballY = bY;
    ballSize = random(50, 150);
    ballColor = color(random(255), random(255), random(255));
    ballVelocityX = random(-10, 10);
    ballVelocityY = random(-10, 10);
  }

  public boolean ballTouching(Ball otherBall)
  {
    if (otherBall == null) {
      return false;
    } else {

      if (dist(ballX, ballY, otherBall.ballX, otherBall.ballY) <= (ballSize / 2) + (otherBall.ballSize / 2)) {
        println("my balls touched");
        return true;
      } else {
        return false;
      }
    }
    //ballX == otherBall.ballX
  }

  public void drawBall() {
    //print("Ball cord:" + ballX + ", " + ballY);
    stroke(0);
    fill(ballColor);
    circle(ballX, ballY, ballSize);
  }

  public void ballMove() {
    ballX += ballVelocityX;
    ballY += ballVelocityY;

    if (ballX <= (ballSize / 2) || ballX >= width -(ballSize / 2)) {
      ballVelocityX = ballVelocityX * -1;
      //print("ballX changed");
    } else if (ballY <= (ballSize / 2) || ballY >= height -(ballSize / 2)) {
      ballVelocityY = ballVelocityY * -1;
      //print("ballY changed");
    }
  }

  public void ballDecay() {
    if (ballSize >= 200) {
      println("ball is big and is " + ballSize + " big");
      ballSize = ballSize * .9995;
      if (ballVelocityX <= 20) {      
        ballVelocityX += ballVelocityX * .005;
      }
      if (ballVelocityY <= 20) {      
        ballVelocityY += ballVelocityY * .005;
      }
    }
  }
}
