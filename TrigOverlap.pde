void setup() {
  size(800, 800);
  background(0, 0, 0);
}

int r = 300;
float x = 250;
float y = 250;
float t;
float c = .07;
float m = 200;
float xc = 0;
float yc = 20;
float zc = 0;
void draw() {
  //background(0,0,0);
  //point(x + 200 * sin(t), y - 200 * cos(t));
  t += c;
  stroke(xc*t, yc*t, zc*t);
  line(x + m * sin(t), y - m * cos(t), 
  x + m * sin(t + 2 * PI/3), y - m * cos(t + 2 * PI/3));
  line(x + m * sin(t + 2 * PI/3), y - m * cos(t + 2 * PI/3), 
  x + m * sin(t + 4 * PI/3), y - m * cos(t + 4 * PI/3));
  line(x + m * sin(t + 4 * PI/3), y - m * cos(t + 4 * PI/3), 
  x + m * sin(t + 2 * PI), y - m * cos(t + 2 * PI));
  if (m > 0) {
    m -= 1;
  } 
  else {
    t = 0;
    xc = random(0,50);
    yc = random(0,50);
    zc = random(0,50);
    m = random(50, 250);
    x = random(50,750);
    y = random(50,750);
  }
}

void keyPressed() {
  if (key == 's') {
    saveFrame("####.png");
  }
}

