void setup () {
  
  fullScreen();
  //print("My display width is " + displayWidth + "\n My Display height is " + displayHeight);
  ellipse (250, 385, 230, 230);//Legs
  ellipse (250, 260, 170, 170);//Torso
  ellipse (250, 170, 120, 120);//Head
  ellipse (230, 155, 25, 25);//Eye 1
  ellipse (270, 155, 25, 25);//Eye 2
  rectMode(CENTER); //Set rectMode to CENTER of Canvas
  rect (250, 200, 60, 9); // Mouth
  
  rect (820, 50, 700, 100);
  noStroke();
  
  fill(#673201);
  rect (350, 260, 60, 9);//arm 1
  rect (150, 260, 60, 9);//arm 2
 
  noStroke();
  fill(#FF7C00);
  rect (250, 180, 15, 15); // Nose
 
 
  fill(0,0,0);//coloring of the hat and the buttons
  rect (250, 80, 100, 100 );//Brim of the hat
  rect (250, 130, 130, 15);//Hat
  rectMode(CORNER); //Always reset default
   ellipse (251, 250, 10, 10);
   ellipse (251, 280, 10, 10);
   ellipse (251, 310, 10, 10);
   
   fill(0,0,0);
    textSize(displayHeight*1/16);
  text("This is a snow man", displayWidth*1/4, displayHeight*1/16);
}