
float theta;   

void setup() {
  size(1000, 800);
}

void draw() {
  background(14);
  frameRate(30);
  strokeWeight(3);
  stroke(255, 80);


// Die Mausposition in der x-Achse verändert den Winkel
  float a = (mouseX / (float) width) * 180;

  theta = radians(a);

  translate(width/2, height);

  line(0, 0, 0, -220);

  translate(0, -220);

  branch(260);
}

void branch(float h) {

  h *= 0.66;

  //wiederholung endet wenn branch  kleiner als 3 pixel ist

  if (h > 3) {

    // rechte seite
    pushMatrix();    
    rotate(theta);   
    line(0, 0, 0, -h);  
    translate(0, -h); 
    branch(h);       
    popMatrix();     

    // linke seite
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}
