Ball[] ball = new Ball[1000];

void setup() {
  size(500, 500);
  background(255);
  colorMode(HSB);
  for (int i = 0; i<1000; i++) {
    ball[i] = new Ball();
  }
}

void draw() {
  background(255);
  for (int i = 0; i<1000; i++) {
    ball[i].display();
    ball[i].move();
    ball[i].bounce();
  }
}


class Ball {
  float x = random(50, 400);
  float y = random(50, 400);
  int r = 30;
  float xspeed = random(1,4);
  float yspeed = random(1,4);
  float c = random(255);

  Ball() {
  }

  void display() {
    fill(c,255,255);
    ellipse(x, y, r, r);
  }
  void move() {
    x = x + xspeed;
    y = y + yspeed;
  }
  void bounce() {
    if (x+r>width || x-r<0) {
      xspeed = -xspeed;
    }
    if (y+r>height || y-r<0) {
      yspeed = -yspeed;
    }
  }
}
