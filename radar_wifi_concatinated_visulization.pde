import java.util.Arrays;
import processing.net.*;
import java.util.ArrayList;

String inputString = "";   
boolean firstContact = false;  
float dist ;
float angle ;
int x ;
int y ;
 
float plot_X;
float plot_Y;

int angle1;
int distance1;

int[] quad1_x = new int[120];
int[] quad1_y = new int[120];

ArrayList<Integer> quad1dist = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> quad1angle = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad1X = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad1Y = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);


//2
ArrayList<Integer> quad2dist = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> quad2angle = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad2X = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad2Y = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

//3
ArrayList<Integer> quad3dist = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> quad3angle = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad3X = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad3Y = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

//4
ArrayList<Integer> quad4dist = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> quad4angle = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad4X = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

ArrayList<Integer> tmpquad4Y = new ArrayList<>(Arrays.asList(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
);

int angles1;
int distances1;
int currentx1;
int currenty1;

int angles2;
int distances2;
int currentx2;
int currenty2;

int angles3;
int distances3;
int currentx3;
int currenty3;

int angles4;
int distances4;
int currentx4;
int currenty4;
Client client;
String data;

void setup() {
  fullScreen();
  background(104, 105, 104);  
  client = new Client(this, "192.168.1.10", 80);
  
//left right  
  textSize(30);
  text("  0 cm", 100,height/2);
  fill(255, 255, 255);
  text("10 cm", 100,((height/2)+100));
  fill(255, 255, 255);  
  text("20 cm", 100,((height/2)+200));
  fill(255, 255, 255);  
  text("30 cm", 100,((height/2)+300));
  fill(255, 255, 255);  
  text("40 cm", 100,((height/2)+400));
  fill(255, 255, 255);    
    
  text("10 cm", 100,((height/2)-100));
  fill(255, 255, 255);  
  text("20 cm", 100,((height/2)-200));
  fill(255, 255, 255);  
  text("30 cm", 100,((height/2)-300));
  fill(255, 255, 255);  
  text("40 cm", 100,((height/2)-400));
  fill(255, 255, 255);      
    
  text("  0 cm", (width - 185),height/2);
  fill(255, 255, 255);
  text("10 cm", (width - 185),((height/2)+100));
  fill(255, 255, 255);    
  text("20 cm", (width - 185),((height/2)+200));
  fill(255, 255, 255);    
  text("30 cm", (width - 185),((height/2)+300));
  fill(255, 255, 255);    
  text("40 cm", (width - 185),((height/2)+400));
  fill(255, 255, 255);      

  text("10 cm", (width - 185),((height/2)-100));
  fill(255, 255, 255);    
  text("20 cm", (width - 185),((height/2)-200));
  fill(255, 255, 255);    
  text("30 cm", (width - 185),((height/2)-300));
  fill(255, 255, 255);    
  text("40 cm", (width - 185),((height/2)-400));
  fill(255, 255, 255);        
  
  
for (int t = 0 ; t <=100; t++ )
  {
    stroke(0,200,0);
    ellipse(t,height/2,2,2);
    //ellipse(t+50,height/2,2,2);    
    ellipse(t,((height/2)+100),2,2);
    ellipse(t,((height/2)+200),2,2);
    ellipse(t,((height/2)+300),2,2);
    ellipse(t,((height/2)+400),2,2);        
    //ellipse(t+50,((height/2)+400),2,2);    
    
    ellipse(t,((height/2)-100),2,2);
    ellipse(t,((height/2)-200),2,2);
    ellipse(t,((height/2)-300),2,2);
    ellipse(t,((height/2)-400),2,2);        
    //ellipse(t+50,((height/2)-400),2,2);    
    
    ellipse((width - t),(height/2),2,2);
 
    ellipse((width - t),(height/2+100),2,2);
    ellipse((width - t),(height/2+200),2,2);
    ellipse((width - t),(height/2+300),2,2);
    ellipse((width - t),(height/2+400),2,2);    
    //ellipse((width - t-50),(height/2+400),2,2);        
    
    ellipse((width - t),(height/2-100),2,2);
    ellipse((width - t),(height/2-200),2,2);
    ellipse((width - t),(height/2-300),2,2);
    ellipse((width - t),(height/2-400),2,2);    
    //ellipse((width - t-50),(height/2-400),2,2);        
  }

//up down

  textSize(30);
  text("  0 cm", width/2-50,120);
  fill(211, 408, 612);
  
  text("  10 cm", width/2+50,120);
  fill(211, 408, 612);
  text("  20 cm", width/2+150,120);
  fill(211, 408, 612);
  text("  30 cm", width/2+250,120);
  fill(211, 408, 612);
  text("  40 cm", width/2+350,120);
  fill(211, 408, 612);  

  text("  10 cm", width/2-150,120);
  fill(211, 408, 612);
  text("  20 cm", width/2-250,120);
  fill(211, 408, 612);
  text("  30 cm", width/2-350,120);
  fill(211, 408, 612);  
  text("  40 cm", width/2-450,120);
  fill(211, 408, 612);    
 
  
  text("  0 cm", width/2-50,height-105);
  fill(211, 408, 612);
  text("  10 cm", width/2+50,height-105);
  fill(211, 408, 612);
  text("  20 cm", width/2+150,height-105);
  fill(211, 408, 612);
  text("  30 cm", width/2+250,height-105);
  fill(211, 408, 612);
  text("  40 cm", width/2+350,height-105);
  fill(211, 408, 612);  
 
  text("  10 cm", width/2-150,height-105);
  fill(211, 408, 612);
  text("  20 cm", width/2-250,height-105);
  fill(211, 408, 612);
  text("  30 cm", width/2-350,height-105);
  fill(211, 408, 612);
  text("  40 cm", width/2-450,height-105);
  fill(211, 408, 612);  
  
 

  for (int t = 0 ; t <=100; t++ )
  {
    stroke(0,200,0);
    ellipse(((width/2)),t,2,2);
    ellipse(((width/2)+100),t,2,2);
    ellipse(((width/2)+200),t,2,2);
    ellipse(((width/2)+300),t,2,2);
    ellipse(((width/2)+400),t,2,2);
    
    ellipse(((width/2)-100),t,2,2);
    ellipse(((width/2)-200),t,2,2);
    ellipse(((width/2)-300),t,2,2);
    ellipse(((width/2)-400),t,2,2);    
    

    ellipse((width/2),(height-t),2,2);
    ellipse((width/2+100),(height-t),2,2);
    ellipse((width/2+200),(height-t),2,2);
    ellipse((width/2+300),(height-t),2,2);
    ellipse((width/2+400),(height-t),2,2);
    
    ellipse((width/2-100),(height-t),2,2);
    ellipse((width/2-200),(height-t),2,2);
    ellipse((width/2-300),(height-t),2,2);
    ellipse((width/2-400),(height-t),2,2);   

  }
  
}

void draw() {
  translate(width / 2, height / 2);
  scale(1, -1);
  strokeWeight(6);  
  stroke(0, 0, 0,1);  
  line(-10, 0, 10, 0);
  line(0, -10, 0, 10);
  
  while (client.available() > 0) {
  data = client.readStringUntil('%');
  if (data != null) {
    if (data.indexOf('[') == 0) {
      int closingBracketIndex = data.indexOf(']');
      if (closingBracketIndex != -1) {
        println(data.indexOf('['));
        println(data);
        String dataWithinBrackets = data.substring(1, closingBracketIndex);
        String[] parts = split(dataWithinBrackets, ",");
        
        if (parts.length >= 4) 
        {
          String[] angleAndDistance1 = split(parts[0], ":");
          String[] angleAndDistance2 = split(parts[1], ":");
          String[] angleAndDistance3 = split(parts[2], ":");
          String[] angleAndDistance4 = split(parts[3], ":");

          angles1    = int(angleAndDistance1[0]);   
          distances1 = int(angleAndDistance1[1]);
          angles2    = int(angleAndDistance2[0]);   
          distances2 = int(angleAndDistance2[1]);
          angles3    = int(angleAndDistance3[0]);   
          distances3 = int(angleAndDistance3[1]);
          angles4    = int(angleAndDistance4[0]);   
          distances4 = int(angleAndDistance4[1]);          

          quad1angle.set(angles1, angles1);
          quad1dist.set(angles1, distances1);      
          quad2angle.set(angles1, angles2);
          quad2dist.set(angles1, distances2);      
          quad3angle.set(angles1, angles3);
          quad3dist.set(angles1, distances3);  
          quad4angle.set(angles1, angles4);
          quad4dist.set(angles1, distances4);            
          
          currentx1 = int((quad1dist.get(angles1) * (cos(radians(float(angles1)))))) * 10;
          currenty1 = int((quad1dist.get(angles1) * (sin(radians(float(angles1)))))) * 10; 
          currentx2 = int((quad2dist.get(angles1) * (cos(radians(float(angles2)))))) * 10;
          currenty2 = int((quad2dist.get(angles1) * (sin(radians(float(angles2)))))) * 10; 
          currentx3 = int((quad3dist.get(angles1) * (cos(radians(float(angles3)))))) * 10;
          currenty3 = int((quad3dist.get(angles1) * (sin(radians(float(angles3)))))) * 10;           
          currentx4 = int((quad4dist.get(angles1) * (cos(radians(float(angles4)))))) * 10;
          currenty4 = int((quad4dist.get(angles1) * (sin(radians(float(angles4)))))) * 10;                     
          
            for (int i = 0; i <= 90; i++) 
            {
              if (quad1angle.get(i) == angles1) 
                {
                 noStroke();
                 fill(104, 105, 104);
                 ellipse(tmpquad1X.get(i), tmpquad1Y.get(i), 6, 6); // Erase previous point               
                }
              if (quad2angle.get(i) == angles2) 
                {
                 noStroke();
                 fill(104, 105, 104);
                 ellipse(tmpquad2X.get(i), tmpquad2Y.get(i), 6, 6); // Erase previous point               
                }
              if (quad3angle.get(i) == angles3) 
                {
                 noStroke();
                 fill(104, 105, 104);
                 ellipse(tmpquad3X.get(i), tmpquad3Y.get(i), 6, 6); // Erase previous point               
                }                
              if (quad4angle.get(i) == angles4) 
                {
                 noStroke();
                 fill(104, 105, 104);
                 ellipse(tmpquad4X.get(i), tmpquad4Y.get(i), 6, 6); // Erase previous point               
                }                                
            }
           noStroke();                      
           fill(255, 255, 255);
           ellipse(currentx1, currenty1, 4, 4);  
           tmpquad1X.set(angles1, currentx1);
           tmpquad1Y.set(angles1, currenty1);

           noStroke();                      
           fill(255, 255, 255);
           ellipse(currentx2, currenty2, 4, 4);  
           tmpquad2X.set(angles1, currentx2);
           tmpquad2Y.set(angles1, currenty2);
           
           noStroke();                      
           fill(255, 255, 255);
           ellipse(currentx3, currenty3, 4, 4);  
           tmpquad3X.set(angles1, currentx3);
           tmpquad3Y.set(angles1, currenty3);           

           noStroke();                      
           fill(255, 255, 255);
           ellipse(currentx4, currenty4, 4, 4);  
           tmpquad4X.set(angles1, currentx4);
           tmpquad4Y.set(angles1, currenty4); 
      } 
      }
    }
  }
}
}
