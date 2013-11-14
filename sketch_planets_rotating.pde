float bodyRadius;

void setup( ) {
  size(200, 200);
}

void draw( ) {
  //  for ( int i = 0; i < 360 ; i = i + 20) {
  //    pushMatrix( );
  //    rotate(radians(i));
  //    translate(bodyRadius*.45, 0);
  background(50);
  rectMode(CENTER);

  //to draw a rect in the middle of the campus
  translate(width/2, height/2);
  fill(#17B0FA);
  rect(0, 0, 50, 50);//the square in the middle

  //now save the position by using pushMatrix
  //(width/2, height/2) is the new (0,0)
  pushMatrix();
  rotate(bodyRadius);
  //bodyRadius is a variable
  //which means its value will change every time draw loop runs
  //I will change the value at the end

  translate(50, 50);//translate from center of the campus
  rect(0, 0, 20, 20);
  popMatrix( );

  //to make the small square rotate
  bodyRadius=bodyRadius+0.01;
}
