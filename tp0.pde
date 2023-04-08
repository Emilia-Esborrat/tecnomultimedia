PImage imagenuno;

void setup(){
  size(800, 400);
  imagenuno = loadImage("avion.jpg");
}

void draw(){
 image(imagenuno, 0, 0, 400, 400);
  
  stroke(148,179,209);
  fill(118,152,198);
 rect(400,0,400,400); //cielo 
 
 stroke(0);
 fill(255);
beginShape();  //turbina 2
 vertex(550,144);
 vertex(505,130);
 vertex(520,157);
 vertex(545,160);
 endShape(CLOSE);
 
  stroke(0);
 fill(0);
 ellipse(510,149,27,35); //turbina 2
 
 stroke(0);
 fill(255);
 beginShape(); //alas 
 vertex(550,200);
 vertex(535,50);
 vertex(546,53);
 vertex(560,130);
 vertex(570,150);
 vertex(655,250);
 vertex(625,257);
 vertex(750,350);
 vertex(737,345);
 vertex(570,235);
 //vertex(530,225);
 //vertex(535,225);
  endShape(CLOSE);

beginShape();  //mini ala lateral 2
vertex(725,235);
vertex(715,178);
vertex(707,178);
vertex(704,225);
endShape(CLOSE);

 //fill(255);
 beginShape(); //cabina 
 vertex(475,175);
 vertex(520,150);
 vertex(750,230);
 vertex(775,250);
 vertex(750,268);
 vertex(699,268);
 vertex(520,210);
 endShape(CLOSE);
 
 triangle(745,250,725,250,820,315); //mini ala lateral 1
 
 stroke(25,46,90);
 fill(25,46,90);
 triangle(715,226,840,180,755,240); //ala trasera(? azul
 
 stroke(0);
 fill(255);
  beginShape();
  vertex(645,279); //turbina 1
 vertex(624,264);
 vertex(580,255);
 vertex(589,285);
 vertex(619,290);
 endShape(CLOSE);
 
 fill(0);
ellipse(581,271,25,30); //turvina 1
 
 beginShape();
 vertex(502,160);
  vertex(492,165);
   //vertex(470,150);
    vertex(520,185);
     vertex(520,178);
      //vertex(483,152);
       endShape(CLOSE);
}
