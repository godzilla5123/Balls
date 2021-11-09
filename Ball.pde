class Ball {

  private float ballSize, ballX, ballY, ballVelocityX, ballVelocityY, ballDirection;
  private color ballColor;

  public Ball(float bX, float bY) {
    ballX = bX;
    ballY = bY;
    ballSize = random(20, 80);
    ballColor = color(random(255), random(255), random(255));
    ballVelocityX = random(-10, 10);
    ballVelocityY = random(-10, 10);
    ballDirection = random(0, 2 * PI);
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
