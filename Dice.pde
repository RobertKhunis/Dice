  Die d1;
  int sum = 0;
  void setup()
  {
      textAlign(CENTER);
      size(415, 400);
      noLoop();
  }
  void draw()
  {
      background(120);
      for (int y = 0; y < 316; y += 35){
        for (int x = 0; x < 386; x += 35){
      d1 = new Die(x,y);
      d1.roll();
      d1.show();
        }
      }
      fill(0);
      text("Sum = " + sum, 200, 375);
  }
  void mousePressed()
  {
      redraw();
      sum = 0;
  }
  class Die //models one single dice cube
  {
      int dieValue, myX, myY;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          
      }
      void roll()
      {
          dieValue = (int)(Math.random() * 6) + 1;
          sum += dieValue;
      }
      void show()
      {
          //dieValue = 6;
          //System.out.println(dieValue);
          fill(255);
          noStroke();
          rect(myX, myY, 30, 30);
          stroke(0);
          strokeWeight(7);
          if (dieValue == 1){
            point(myX + 15, myY + 15);
          } else if (dieValue == 2){
            point(myX + 6, myY + 6);
            point(myX + 24, myY + 24);
          } else if (dieValue == 3){
            point(myX + 15, myY + 15);
            point(myX + 6, myY + 6);
            point(myX + 24, myY + 24);
          } else if (dieValue == 4){
            point(myX + 6, myY + 24);
            point(myX + 6, myY + 6);
            point(myX + 24, myY + 24);
            point(myX + 24, myY + 6);
          } else if (dieValue == 5){
            point(myX + 6, myY + 24);
            point(myX + 6, myY + 6);
            point(myX + 24, myY + 24);
            point(myX + 24, myY + 6);
            point(myX + 15, myY + 15);
          } else if (dieValue == 6){
            point(myX + 6, myY + 6);
            point(myX + 6, myY + 15);
            point(myX + 6, myY + 24);
            point(myX + 24, myY + 6);
            point(myX + 24, myY + 15);
            point(myX + 24, myY + 24);
            
          }
      }
  }
