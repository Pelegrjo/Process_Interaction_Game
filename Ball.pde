class Ball
{
  float x = 0;
  float y = 0;
  float xSpeed = 0;
  float ySpeed = 0;
  int radius = 15;

  Ball(float tempX, float tempY, float tempxSpeed, float tempySpeed, int tempRadius)
  {
    x = tempX;
    y = tempY;
    xSpeed = tempxSpeed;
    ySpeed = tempySpeed;
    radius = tempRadius;
  }

  void display() {
    ellipse(100, 100, radius, radius);
  }
}

