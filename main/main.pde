Player p;
HashMap<String, PImage> images = new HashMap<String, PImage>();

Group m = new Group();
Group e = new Group();

UI ui = new UI();

PFont SeventhS;

void setup(){
  PImage healitem = loadImage("../images/heal-powerup.png");
  PImage speeditem = loadImage("../images/speed-powerup.png");
  PImage shielditem = loadImage("../images/shield-powerup.png");
  PImage spaceshipitem = loadImage("../images/spaceship.png");

  images.put("healitem", loadImage("../images/heal-powerup.png"));
  images.put("speeditem", loadImage("../images/speed-powerup.png")); 
  images.put("shielditem", loadImage("../images/shield-powerup.png"));
  images.put("playership", loadImage("../images/spaceship.png"));
  images.put("missile", loadImage("../images/missile.png"));
  images.put("basicenemy", loadImage("../images/enemy-ship-2.png"));
  images.put("strongenemy", loadImage("../images/enemy-ship-1.png"));
  images.put("bossenemy", loadImage("../images/enemy-ship-3.png"));
  
  p = new Player();
  
  size(800, 800);
  
  SeventhS = createFont("7th Service",20);
  
  e.spawn = true;
  e.spawnTimer = 2000;
  e.object = new BasicEnemy();
}

void draw(){
  clear();
  p.update();
<<<<<<< HEAD
  updateArray(m);
  updateArray(e);
  updateArray(sp);
  spawnEnemy();

=======
  //updateArray(m);
  m.update();
  //updateArray(e);
  e.update();
  //spawnEnemy();
  ui.update();
>>>>>>> 934a9d9a6420321360d7d463947b36863c516f48
  
}

/*void updateArray(ArrayList<GameObject> a) {
  for (int i = 0; i < a.size(); i++) {
    a.get(i).update();
  }
}*/

boolean collisionCheck(GameObject a, GameObject b) {
  float xdistance = abs(a.x - b.x) - a.w2 - b.w2;  
  float ydistance = abs(a.y - b.y) - a.h2 - b.h2;
  if (ydistance < 0 && xdistance < 0) {
    return true;
  } else {
    return false;
  }
}

<<<<<<< HEAD
boolean espawn = true;
boolean spspawn = true;

void spawnEnemy(){
  if ((second() % 2) == 0){
    if(espawn == true){
      e.add(new BasicEnemy());
      espawn = false;
    }
  } else {
    espawn = true;
  }
}
void spawnSpeed() {
  if ((second() % 5) == 0) {
    if(spspawn == true) {
      sp.add(new SpeedPU());
      spspawn = false;
    }
  } else {
    spspawn = true;
  }
}
=======
//boolean spawn = true;

//void spawnEnemy() {
  
//  if ((second() % 2) == 0 ){
//    if(spawn == true){
//      e.addObject(new BasicEnemy());
//      spawn = false;
//    }
//  } else {
//    spawn = true;
//  }
//}
>>>>>>> 934a9d9a6420321360d7d463947b36863c516f48
