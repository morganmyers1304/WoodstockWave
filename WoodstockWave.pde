float arcStart = radians(180);
float arcEnd = arcStart;
int rad = 360;
float maxArcEnd = radians(360);
float movement = 0.0;
float speed = PI/200;
int i = 0;

void setup() {
 size(400,400);
 background(23, 73, 26);
 noFill();
 stroke(74, 123, 76);
 strokeWeight(6);
}

void draw() {
  background(23, 73, 26);
  rad = 300;
  i = 5;
  while (rad >= 40){
    arcEnd = map(sin(movement + (maxArcEnd / rad * i)), -1, 1, arcStart, maxArcEnd);
    arc(200,275,rad, rad, arcStart, arcEnd);
    rad -= 20;
    i++;
  }
  movement += speed;
}
