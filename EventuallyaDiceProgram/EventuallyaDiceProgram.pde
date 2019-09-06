// Variables
String[] n = {"Yikes", "The War is not 1", "2 the Dice Jail", "Puns for 3?", "Maybe this isn't 4 you", "High 5, it's better than nothing!", "Watch my Six", "Puns for Seven?", "Max Damage!"};
int a;
PImage dice;

//Sets window size/background & calls the d8 png image 
void setup() {
  size(500,500);
  background(255);
  imageMode(CENTER);
  dice = loadImage("d8.png");
  image(dice, 250,250);
}

//prints the random string on the screen
void draw() {
  textAlign(CENTER);
  fill(0);
  textSize(30);
  text(n[a],170,240, 150, 100);
}

//redraws the random string & also the background/dice
//going to make the image a png w/ color later
//this was the bane of my existence bc I overcomplicated it
void mouseClicked() {
  background(255);
    image(dice, 250,250);
  a = int(random(n.length));
} 
