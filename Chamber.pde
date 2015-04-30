class Chamber
{
  float x = 0;
  float y = 0;
  float square = 5;
  
  Chamber(float tempX, float tempY, float tempSquare)
  {
    x = tempX;
    y = tempY;
    square = tempSquare;
  }
  
  void display(){
    rect(620, 20, square, square);
  }
}
