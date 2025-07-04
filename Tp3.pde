// tp3
// Diego Ezequiel Maidana 44699939
// com 3

boolean animacionActivada = false; // Variable para controlar el estado de la animación
PImage img; // Imagen a mostrar en el lado izquierdo

void setup() {
  size(800, 400);
  img = loadImage("obra optica.png"); // Asegúrate de que la imagen esté en la carpeta "data"
}

void draw() {
  background(255);

  // Mostrar imagen del lado izquierdo
  mostrarImagenIzquierda();

  // Tamaño del cuadrado más grande
  float mod = 400 / 2;

  // Dibuja los cuadrados en las esquinas
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      float x = 400 + mod * i + mod / 2;
      float y = mod * j + mod / 2;
      dibujaCuadradosConcentricos(x, y, mod, 4);
    }
  }
  
  // Dibuja el cuadrado un poco más a la izquierda del centro del lado derecho
  float xDerecha = width - mod / 2 - 100; // Ajusta 100 píxeles hacia la izquierda
  float yDerecha = height / 2;
  dibujaCuadradosConcentricos(xDerecha, yDerecha, mod, 4);
}

void mostrarImagenIzquierda() {
  if (img != null) {
    imageMode(CENTER);
    image(img, 200, height / 2, 300, 300); // Imagen centrada en la mitad izquierda
  }
}

void dibujaCuadradosConcentricos(float x_, float y_, float tam_, int cant_) {
  push();
  translate(x_, y_);
  rectMode(CENTER);
  
  float anguloInicial = atan2(y_ - height / 2, x_ - width / 2);
  
  for (int i = 0; i < cant_; i++) {
    fill((i % 2) * 255);
    float lado = map(i, 0, cant_, tam_, 0);
    
    if (animacionActivada) {
      rotate(anguloInicial);
      rotate(sin(frameCount * 0.1));
    }
    
    rect(0, 0, lado, lado);
  }
  pop();
}

void mousePressed() {
  animacionActivada = !animacionActivada;
}
