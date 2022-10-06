int total;
int rando;
void setup(){
      noLoop();
      size(400, 400);
  }
  void draw(){
    total = 0;
    background(255, 0, 0);
      for(int j = 100; j<301; j+=100){
        for(int i = 100; i<301; i+=100){
          Die bob = new Die(i, j);
          bob.show();
          total += rando;
        }
      }
    fill(0, 0, 255);
    textSize(40);
    text("sum: " + total, 130, 370);
    //System.out.println(total);
    }
  void mousePressed(){
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          rando = (int)(Math.random()*6 + 1);
      }
      void roll(){
        
      }
      void show(){
        fill(255, 255, 255);
        rect(myX - 25, myY - 25, 50, 50);
        fill(0, 0, 0);
        if(rando == 1){
          ellipse(myX, myY, 10, 10);
        } else if(rando == 2){
            ellipse(myX-15, myY-15, 10, 10);
            ellipse(myX+15, myY+15, 10, 10);
        } else if(rando == 3){
            ellipse(myX-15, myY-15, 10, 10);
            ellipse(myX, myY, 10, 10);
            ellipse(myX+15, myY+15, 10, 10);
        } else if(rando == 4){
            ellipse(myX-15, myY-15, 10, 10);
            ellipse(myX+15, myY+15, 10, 10);
            ellipse(myX+15, myY-15, 10, 10);
            ellipse(myX-15, myY+15, 10, 10);
        } else if(rando == 5){
            ellipse(myX-15, myY-15, 10, 10);
            ellipse(myX+15, myY+15, 10, 10);
            ellipse(myX+15, myY-15, 10, 10);
            ellipse(myX-15, myY+15, 10, 10);
            ellipse(myX, myY, 10, 10);
        } else{
            ellipse(myX-15, myY-15, 10, 10);
            ellipse(myX+15, myY+15, 10, 10);
            ellipse(myX+15, myY-15, 10, 10);
            ellipse(myX-15, myY+15, 10, 10);
            ellipse(myX-15, myY, 10, 10);
            ellipse(myX+15, myY, 10, 10);
        }
      } 
  }
