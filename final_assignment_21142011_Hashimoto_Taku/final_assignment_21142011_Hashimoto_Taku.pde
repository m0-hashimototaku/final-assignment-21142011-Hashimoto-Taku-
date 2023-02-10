float armL1 = 160;
float armL2 = 60;
float armL3 = 30;
float armL4 = 20;
float armD1 = 20;
float armD2 = 20;
float armD3 = 15;
float armD4 = 10;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float dif = 1.0;
float boo = 0.1;
float x = 0;
float y = 0;
float z = 0;

void setup(){
  size(800, 800, P3D);
  noStroke();
  camera(600,350,100,width/2,480,0,0,1,0);
}
  void draw(){
 background(130,113,86);
    if(keyPressed){
      if(key == 's'){
        angle1 = angle1 +dif;
      }
      if(key == 'S'){
        angle1 = angle1 - dif;
      }
      if(key == 'e'){
        angle2 = angle2 - dif;
      }
      if(key == 'E'){
        angle2 = angle2 + dif;
      }
      if(key == 'x'){
        angle3 = angle3 - dif;
      }
      if(key == 'X'){
        angle3 = angle3 + dif;
      }
      if(key == 'y'){
        angle4 = angle4 + dif;
      }
      if(key == 'Y'){
        angle4 = angle4 - dif;
      }
      if(key == 'h'){
        armL2 = armL2 + boo;
        armD2 = armD2 + boo;
        armL3 = armL3 + boo;
        armD3 = armD3 + boo;
        x = x + boo/2;
        y = y + boo/2;
       
        
       }
        if(armL2 + boo >= 70){
        boo = -0.1;
       }
        if(armL2 + boo <= 60){
        boo = 0.1;
      }
      }
      if(key == 'f'){
        x = x + dif;
        y = y + dif;
        z = z + dif;
      }
      
    
    translate(width/2,height/2,0);
   
     translate(0,0,0);
    rotateY(radians(angle1));
    
   translate(0,80,0);
   fill(255,213,0);
   sphere(15);
    fill(255,166,0);
    box(armD1,armL1,armD1);
     
    translate(0,0,0);
    rotateZ(radians(angle2));
    translate(40,0,0);
    fill(207,123,104);
    box(armL2+30,armD2,armD2);
    
    translate(40,0,0);
    rotateZ(radians(angle3));
  translate(20,0,0);
    fill(255,182,193);
    box(armL3,armD3,armD3);
  
    translate(0,0,0);
    rotateX(radians(angle4));
 translate(10+x,15+y,0+z);
    fill(255);
    box(armD4,armL4,armD4);
  
            if (keyPressed){
            if  (key == 'F'){
       
    armL2 = 60;
    armL3 = 30;
    armD2 = 20;
    armD3 = 15;

    angle1 = 0;
    angle2 = 0;
    angle3 = 0;
    angle4 = 0;
   
    x = 0;
    y = 0;
    z = 0;
    }
    }
    }
    
