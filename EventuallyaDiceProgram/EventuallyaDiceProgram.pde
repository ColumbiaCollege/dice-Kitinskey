// Variables
String[] n = {"Yikes", "The War is not 1", "2 the Dice Jail", "Puns for 3?", "Maybe this isn't 4 you", "High 5, it's better than nothing!", "Watch my Six", "Puns for Seven?", "Max Damage!"};
int a;
PImage dice;
int col1 =50;
int col2 =50;
int col3 =50;

//Sets window size/background & calls the d8 png image 
void setup() {
  size(500, 500);
  background(255);
  //this ugly lump of triangles will actually randomize in color after the first click!
  fill(255, 0, 0);
  triangle(250, 0, 450, 130, 50, 130);
  fill(255, 0, 255);
  triangle(35, 130, 35, 370, 240, 485);
  fill(0, 255, 0);
  triangle(260, 485, 465, 370, 465, 130);
  fill(0, 0, 255);
  triangle(40, 130, 460, 130, 250, 490);
  imageMode(CENTER);
  dice = loadImage("d8.png");
  image(dice, 250, 250);
}

//prints the random string on the screen
void draw() {
  textAlign(CENTER);
  fill(0);
  textSize(30);
  text(n[a], 165, 240, 150, 100);
}

//redraws the random string & also the background/dice
//going to make the image a png w/ color later
//this was the bane of my existence bc I overcomplicated it
void mouseClicked() {
  background(255);
  fill(col1, col2, col3);
  triangle(250, 0, 450, 130, 50, 130);
  fill(col2, col3, col1);
  triangle(35, 130, 35, 370, 240, 485);
  fill(col3, col2, col1);
  triangle(260, 485, 465, 370, 465, 130);
  fill(col3, col1, col2);
  triangle(40, 130, 460, 130, 250, 490);
  image(dice, 250, 250);
  //the colors aren't all perfect, and tend to be a little ugly, but aren't we all
  col1 = int(random(256));
  col2 = int(random(256));
  col3 = int(random(256));
  a = int(random(n.length));
} 