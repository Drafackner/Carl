//Quit button - bottom corner
//Variables go here
color red = #F20F0F; color green = #05FF41; color inside = red; color outside = green;

void setup () {
  size(600,600);
}

void draw(){
 // noLoop();
  println(mouseX);
  println(mouseY);
  
  fill(green);
rect(500, 550, 100, 50);
fill(red);
rect(500+10, 550+10, 100-10-10, 50-10-10 );

if (mouseX > 500+10 && mouseY > 550+10 && mouseX < 590 && mouseY < 590);
    inside = green;
    outside = red;
}

//void mousePressed ()