class Ball {

  private float ballSize, ballX, ballY, ballVelocityX, ballVelocityY, ballDirection;
  private color ballColor;

  public Ball(float bX, float bY) {
    ballX = bX;
    ballY = bY;
    ballSize = random(5, 20);
    ballColor = color(random(255), random(255), random(255));
    ballVelocityX = random(-10, 10);
    ballVelocityY = random(-10, 10);
  }

  public boolean ballTouching(Ball otherBall)
  {
    if (otherBall == null) {
      return false;
    } else {

      float disX = ballX - otherBall.ballX;
      float disY = ballY - otherBall.ballY;
      if (sqrt(sq(disX) + sq(disY)) < ballSize / 2 ) {
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
}
