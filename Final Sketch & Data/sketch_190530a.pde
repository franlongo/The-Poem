import processing.video.*;

Movie theMov;

void setup() {
  size(980, 720);
  theMov = new Movie(this, "aaa2.mp4") ;
  theMov.loop();
}


void draw() {
  image (theMov, 0, 0);
  
  if(mousePressed){
    if(mouseButton==RIGHT){
      theMov.play();
    }
    if(mouseButton==LEFT){
      theMov.pause();
    }
  }
}

void movieEvent (Movie m) {
  m.read();
}
