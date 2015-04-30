//cite: http://staticvoidgames.com/tutorials/intermediateConcepts/collisionDetection

float boxX = 200;
float boxY = 200;
float boxWidth = 50;
float boxHeight = 50;

float[] chambers = {
  20, 620
};
float[] ball = {
  100, 100, 350, 100, 400, 50, 400, 400
};
float[] xSpeed = {
  3, 1, 1, 2.5
};
float[] ySpeed = {
  1, 2.5, 3, 1
};
float radius = 15;

void setup() {
  size(640, 640); 
  rectMode(CENTER);
  ellipseMode(CENTER);
  ellipseMode(RADIUS);
  frameRate(60);
  smooth();
}

void draw() {

  background(240);

  float boxLeft = mouseX - 20;
  float boxRight = mouseX + 20;
  float boxTop = mouseY - 20;
  float boxBottom = mouseY + 20;

  //first ball
  float currentBallLeft1 = ball[0] - radius;
  float currentBallRight1 = ball[0] + radius;
  float currentBallTop1 = ball[1] - radius;
  float currentBallBottom1 = ball[1] + radius;

  //second ball
  float currentBallLeft2 = ball[2] - radius;
  float currentBallRight2 = ball[2] + radius;
  float currentBallTop2 = ball[3] - radius;
  float currentBallBottom2 = ball[3] + radius;

  //third ball
  float currentBallLeft3 = ball[4] - radius;
  float currentBallRight3 = ball[4] + radius;
  float currentBallTop3 = ball[5] - radius;
  float currentBallBottom3 = ball[5] + radius;

  //fourth ball
  float currentBallLeft4 = ball[6] - radius;
  float currentBallRight4 = ball[6] + radius;
  float currentBallTop4 = ball[7] - radius;
  float currentBallBottom4 = ball[7] + radius;

  //first ball
  float nextBallLeft1 = currentBallLeft1 + xSpeed[0];
  float nextBallRight1 = currentBallRight1 + xSpeed[0];
  float nextBallTop1 = currentBallTop1 + ySpeed[0];
  float nextBallBottom1 = currentBallBottom1 + ySpeed[0];

  //second ball
  float nextBallLeft2 = currentBallLeft2 + xSpeed[1];
  float nextBallRight2 = currentBallRight2 + xSpeed[1];
  float nextBallTop2 = currentBallTop2 + ySpeed[1];
  float nextBallBottom2 = currentBallBottom2 + ySpeed[1];

  //third ball
  float nextBallLeft3 = currentBallLeft3 + xSpeed[2];
  float nextBallRight3 = currentBallRight3 + xSpeed[2];
  float nextBallTop3 = currentBallTop3 + ySpeed[2];
  float nextBallBottom3 = currentBallBottom3 + ySpeed[2];

  //fourth ball
  float nextBallLeft4 = currentBallLeft4 + xSpeed[3];
  float nextBallRight4 = currentBallRight4 + xSpeed[3];
  float nextBallTop4 = currentBallTop4 + ySpeed[3];
  float nextBallBottom4 = currentBallBottom4 + ySpeed[3];

  //FIRST BALL!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, nextBallLeft1, nextBallRight1, currentBallTop1, currentBallBottom1)) {
    xSpeed[0] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[0]+xSpeed[0] < 0 || ball[0]+xSpeed[0] > width) {
    xSpeed[0] *= -1;
  }

  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, currentBallLeft1, currentBallRight1, nextBallTop1, nextBallBottom1)) {
    ySpeed[0] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[1]+ySpeed[0] < 0 || ball[1]+ySpeed[0] > height) {
    ySpeed[0] *= -1;
  }

  //SECOND BALL!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, nextBallLeft2, nextBallRight2, currentBallTop2, currentBallBottom2)) {
    xSpeed[1] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[2]+xSpeed[1] < 0 || ball[2]+xSpeed[1] > width) {
    xSpeed[1] *= -1;
  }

  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, currentBallLeft2, currentBallRight2, nextBallTop2, nextBallBottom2)) {
    ySpeed[1] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[3]+ySpeed[1] < 0 || ball[3]+ySpeed[1] > height) {
    ySpeed[1] *= -1;
  }

  //THIRD BALL!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, nextBallLeft3, nextBallRight3, currentBallTop3, currentBallBottom3)) {
    xSpeed[2] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[4]+xSpeed[2] < 0 || ball[4]+xSpeed[2] > width) {
    xSpeed[2] *= -1;
  }

  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, currentBallLeft3, currentBallRight3, nextBallTop3, nextBallBottom3)) {
    ySpeed[2] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[5]+ySpeed[2] < 0 || ball[5]+ySpeed[2] > height) {
    ySpeed[2] *= -1;
  }

  //FOURTH BALL!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, nextBallLeft4, nextBallRight4, currentBallTop4, currentBallBottom4)) {
    xSpeed[3] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[6]+xSpeed[3] < 0 || ball[6]+xSpeed[3] > width) {
    xSpeed[3] *= -1;
  }

  //will the ball hit the box?
  if (doBoxesIntersect(boxLeft, boxRight, boxTop, boxBottom, currentBallLeft4, currentBallRight4, nextBallTop4, nextBallBottom4)) {
    ySpeed[3] *= -1;
  }
  //will the ball leave the screen?
  else if (ball[7]+ySpeed[3] < 0 || ball[7]+ySpeed[3] > height) {
    ySpeed[3] *= -1;
  }

  ball[0] += xSpeed[0];
  ball[1] += ySpeed[0];
  ball[2] += xSpeed[1];
  ball[3] += ySpeed[1];
  ball[4] += xSpeed[2];
  ball[5] += ySpeed[2];
  ball[6] += xSpeed[3];
  ball[7] += ySpeed[3];

  //rect(nextBallLeft, nextBallTop, radius*2, radius*2);
  fill(255, 0, 0); //first ball color (red)
  ellipse(ball[0], ball[1], radius, radius); //first ball
  fill(0, 255, 0); //second ball color (green)
  ellipse(ball[2], ball[3], radius, radius); //second ball
  fill(0, 0, 255); //third ball color (blue)
  ellipse(ball[4], ball[5], radius, radius); //third ball
  fill(255, 0, 255); //fourth ball color (purple)
  ellipse(ball[6], ball[7], radius, radius); //fourth ball

  fill(0); //rectangular bumper color
  rect(mouseX, mouseY, boxWidth, boxHeight); //bumper(PLAYER)

  fill(200, 0, 0);
  rect(chambers[1], chambers[0], 40, 40);
  fill(0, 200, 0);
  rect(chambers[0], chambers[1], 40, 40);
  fill(0, 0, 200);
  rect(chambers[0], chambers[0], 40, 40);
  fill(200, 0, 200);
  rect(chambers[1], chambers[1], 40, 40);
}


boolean doBoxesIntersect(float aBoxLeft, float aBoxRight, float aBoxTop, float aBoxBottom, 
float bBoxLeft, float bBoxRight, float bBoxTop, float bBoxBottom) {

  return bBoxRight > aBoxLeft && bBoxBottom > aBoxTop && aBoxRight > bBoxLeft && aBoxBottom > bBoxTop;
}


