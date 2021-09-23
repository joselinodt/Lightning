int startX = 90;
int startY = 180;
int endX = 90; 
int endY = 180;

void setup()
{
  size(400, 400);
  strokeWeight(3);
  background(0);
}

void draw()
{
  noStroke();
  fill(205, 255, 255);
  ellipse(185, 57, 50, 66);
  fill(160,160,160);
  ellipse(185, 70, 150, 40);
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(185,70,5,5);
  ellipse(155,70,5,5);
  ellipse(125,70,5,5);
  ellipse(215,70,5,5);
  ellipse(245,70,5,5);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < 400) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20)-9;
    line(startY, startX, endY, endX);
    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
  if (mousePressed) {
    startX = 90;
    startY = 180;
    endX = 90;
    endY = 180;
  }
}
