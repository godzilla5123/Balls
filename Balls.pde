ArrayList<Ball> balls;
//Ball b1;

void setup() {
  size(1920, 1080);

  balls = new ArrayList<Ball>();
  for (int i = 0; i < 300; i = i+1) {
    balls.add( new Ball(int(random(40, width - 40)), int(random(40, height - 40))));
    println("Ball " + i + " added");
  }
}

void draw() {
  //b1.drawBall();
  background(76);
  for (int i = balls.size() -1; i >= 0; i--) {

    if (balls.get(i) != null) {
      balls.get(i).ballMove();
      balls.get(i).drawBall();
      ballEat(i);
    }
  }
}

void mousePressed() {
  balls.add(new Ball (mouseX, mouseY));
}

void ballEat(int i) {
  for (int j = balls.size() - 1; j >= 0; j--) {
    if (i != j && i < balls.size())
      if (balls.get(i).ballTouching(balls.get(j))) {
        if (balls.get(i).ballSize > balls.get(j).ballSize) {
          balls.get(i).ballSize += (balls.get(j).ballSize) * .5;
          balls.get(i).ballVelocityX = balls.get(i).ballVelocityX * .85;
          balls.get(i).ballVelocityY = balls.get(i).ballVelocityY * .85;
          balls.set(j, null);
          //balls.remove(j);
          //i--;
        }
      }
  }
}
