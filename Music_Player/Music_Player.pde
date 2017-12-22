import processing.sound.*;

PImage bg;

color white = #FFFFFF, grey = #5A5353; 
color boarder = white, inside = grey;


int totalSongs = 5;
SoundFile[] song = new SoundFile[totalSongs];
int indexSong = 0;


void setup () {
  
fullScreen();
 bg = loadImage("Mine.jpg");
 image(bg, 0, 0, width, height);
  println("Screen Width is " + displayWidth + "\n       Height is " + displayHeight);


  song[0] = new SoundFile (this, "OutKast.mp3");
  song[1] = new SoundFile (this, "Shrek.mp3");
  song[2] = new SoundFile (this, "Yung.mp3");
  song[3] = new SoundFile (this, "Eddy.mp3");
  song[4] = new SoundFile (this, "Ocean.mp3");

  //song[indexSong].play();

  rectMode(CENTER); 
  fill(#5A5353);
  rect (900, 500, 500, 800); //Box Shape
  fill(#FFFFFF);
  rect (900, 300, 400, 300); //Screen
  rectMode(CORNER); 
}


void draw () {

  
  fill(boarder);
  ellipse (900, 700, 250, 250);//small circle
  fill(inside);
  ellipse (900, 700, 100, 100);// big circle
  fill(0, 0, 0);//fill blocks black
  triangle (915, 612, 885, 600, 885, 625); //play button
  rectMode(CENTER); //Set rectMode to CENTER of Canvas
  rect (900, 790, 25, 25);// pause button
  triangle (990, 700, 970, 715, 970, 685);//next song
  triangle (1010, 700, 990, 715, 990, 685);//buttons
  
  triangle (810, 700, 830, 715, 830, 685);//prevous  song
  triangle (790, 700, 810, 715, 810, 685);//buttons

  if (mouseX > 850 && mouseX < 950 && mouseY > 650 && mouseY < 750) {
    boarder = grey;
    inside = white;
  } else {
    boarder = white;
    inside = grey;
  } 
  


  //println ("Mouse X Variaable is " + mouseX);
 // println ("Mouse X Variaable is " + mouseY);
}

void mousePressed () {
  if (mouseX>=850 && mouseX <=950 && mouseY>=650 && mouseY<=750) {      
    exit ();
  } 
  if (mouseX > 890 && mouseX < 935 && mouseY > 780 && mouseY < 825) {      
    song[indexSong].stop();
  }
  
  if (mouseX > 880 && mouseX < 920 && mouseY > 590 && mouseY < 635) {    
    song[indexSong].play();
  }

 if (mouseX > 780 && mouseX < 840 && mouseY > 680 && mouseY < 720) {    
    
    song[indexSong].stop(); 
      indexSong = indexSong - 1;

  }

  if (mouseX > 960 && mouseX < 1020 && mouseY > 680 && mouseY < 720) {   
      
       
       song[indexSong].stop(); 
       indexSong = indexSong + 1;

}


}