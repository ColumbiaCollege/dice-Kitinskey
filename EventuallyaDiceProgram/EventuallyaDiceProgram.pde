String[] n = {"Nat 1, Yikes", "Eh", "Nat 20, Heck Yeah"};

void setup() {
  size(displayWidth, displayHeight);
  background(255);
  noLoop();
}

void draw() {
  fill(0);
  textSize(25);
  // makes a spot in the memory to store a whole number, puts 
  int a = int(random(n.length));
  text(n[a], displayWidth/2, displayHeight/2,100,100);

  // None of this actually worked, maybe it will
  //for (int a = 0; a <5; a++) {
  //  String n = random(a);
  //  println(a);
  //}
  //for (int i = 0; i < 5; i++) {
  //  int yikes = random(i);
  //  println(yikes);
  //}
}
