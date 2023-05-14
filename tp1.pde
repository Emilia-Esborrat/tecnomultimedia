int miVariable; 
int contador; 
int sumarContador;
int segundos; 
int botonX= 530; 
int botonY= 430; 
int botonAlto= 40;
int botonAncho= 100; 
PFont miFuente;
int opacidad=0;
int direccion =1; 
PImage tren1; 
PImage tren2; 
PImage tren3; 
PImage tren4; 
float texto1;
String pantalla;

void setup(){
 size(640,480);
  segundos= 0;
  miVariable = 300;
  contador= 0;
  sumarContador= 1; 
  textAlign(CENTER);
  textSize(20);
  miFuente=loadFont("NirmalaUI-Bold-30.vlw");
  textFont(miFuente);
  tren1=loadImage ("Tren1.jpg");
  tren2=loadImage("Tren2.jpg");
  tren3=loadImage("Tren3.jpg");
  tren4=loadImage("Tren4.jpg");
  //texto1=0;
  pantalla = "p1";
  pantalla = "p1";
  pantalla = "p3";
  
}

void draw(){
  contador=contador+sumarContador; 
  
  //primera pantalla 
  
  
  
  if(contador%90==0){
    segundos++;
  }
  if (segundos<=3){
    fill(0,255,255);
     miVariable = contador/2;
       
    println(miVariable);
    //background(0);
    image(tren1,0,0,640,480);
    fill(0);
    textSize(25);
    text(" The Legion es un bullet train diseñado \n para recorrer un trayecto que va desde \n Japón hasta Alemania en menos de 7 horas", 320,miVariable);
    //textSize(15);
    //text("The Legion es un bullet train diseñado \n para recorrer un trayecyo que va desde \n Japon hasta Alemania en menos de 7 horas", 300,300);

    
   miVariable = contador;
  }
  
  
  //segunda pantalla 
  
  else if (segundos >3 && segundos <10) {
     miVariable = contador/2;
    
    fill(3,0,0);
    image(tren2,0,0,640,480);
    textSize(25);
    text("Este vehiculo de un alto nivel de desarrollo \n tiene la función de ser un rapido metodo de \n comunicación y conectividad social y cultural",miVariable, 70);
    fill(255);
  }
  
  
  //tercera pantalla 
  
    else{
       miVariable = contador/2;
   
      fill(0);
      image(tren3,0,0,640,480);
      textSize(25);
           opacidad += 2 * direccion; 
           if (( opacidad < 0) || (opacidad > 255)) {
             direccion = -direccion;
           }
           fill(0, opacidad);
           text("Este nuevo dispositivo se convertira \n en lider a nivel mundial de transportes \n de larga distancias. ", 240, 70);
      
 if(pantalla.equals("p3")){
  
   //botón
  if(mouseX > 530 && mouseY > 430 && mouseX < 530+100 && mouseY < 430+40){
  fill(180);
  } else {
  fill(240);
  }
  rect(530, 430, 100, 40);
    textSize(24);
    fill(0);
    textAlign(CENTER, CENTER);
    text("reiniciar", botonX + botonAncho/2, botonY + botonAlto/2);
 }
/*else if(pantalla.equals("p1")){
    fill(0);
  text("El tren mas rapido del mundo", 240, 70);
  pantalla = "p1";*/
  } 
    }
     

      
      void mousePressed(){
  if(pantalla.equals("p3")){
    if(mouseX > 530 && mouseY > 430 && mouseX < 530+100 && mouseY < 430+40){
    pantalla = "p1";
    }
  }
}
      
