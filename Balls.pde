ArrayList<Ball> balls;
//Ball b1;

void setup() {
  size(800, 800);

  balls = new ArrayList<Ball>();
  for (int i = 0; i < 10; i = i+1) {
    balls.add( new Ball(int(random(0, 800)), int(random(0, 800))));
    println("Ball " + i + " added");
  }
}

void draw() {
  //b1.drawBall();
  background(76);
  for (Ball b : balls)
  {
    b.ballMove();
    b.drawBall();
  }
}

void mousePressed() {
  balls.add(new Ball (mouseX, mouseY));
}
