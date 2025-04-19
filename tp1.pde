// Diego Maidana(88102/2)
//comision 3
//Tp 1=retrato




  size(800,400);


  background(193,193,193);
  


//cabeza
fill(252,199,234);
ellipse(150,200,270,340);
//cejas
strokeWeight(10);
line(260,150,180,150);
line(130,150,50,150);
//ojos
strokeWeight(4);
fill(247,240,245);
ellipse(220,180,70,40);
fill(108,45,2);
ellipse(223,180,30,30);
fill(0);
ellipse(223,180,20,20);
fill(247,240,245);
ellipse(219,170,10,10);
fill(247,240,245);
ellipse(90,180,70,40);
fill(108,45,2);
ellipse(90,180,30,30);
fill(0);
ellipse(90,180,20,20);
fill(247,240,245);
ellipse(86,170,10,10);
//nariz
line(173,170,180,240);
line(180,240,140,240);
//orejas
pushStyle(); //guarda la configuracion de estilo
stroke(10);
strokeWeight(2);
fill(252,199,234);
arc(48,200,100,90,radians(125), radians(235));
popStyle(); //restaura al punto guardadoline(220,268,80,270);

pushStyle(); //guarda la configuracion de estilo
stroke(10);
strokeWeight(2);
fill(252,199,234);
arc(260,195,90,80,radians(300), radians(420));
popStyle(); //restaura al punto guardadoline(220,268,80,270);


//cuello
fill(252,199,234);
rect(55,320,190,120);

//cuerpo
fill(59,57,57);
ellipse(150,435,320,120);


//barba
pushStyle(); //guarda la configuracion de estilo
stroke(0);
strokeWeight(20);
fill(0,0,0);
arc(150,240,250,240,radians(10), radians(170));
popStyle(); //restaura al punto guardadoline(220,268,80,270);


//boca
fill(252,199,234);
ellipse(150,280,130,70);
line(200,268,100,270);

//pelo
fill(0);
ellipse(120,19,60,60);
ellipse(165,25,60,60);
ellipse(200,30,60,60);
ellipse(230,60,60,60);
ellipse(250,95,60,60);
ellipse(270,130,60,60);
ellipse(80,30,60,60);
ellipse(50,60,60,60);
ellipse(30,100,60,60);
ellipse(10,140,60,60);
