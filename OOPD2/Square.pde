int squareMinSize = 10;
int squareMaxSize = 40;
int randomColor = 255;

class Square{
  int x, y, size;
  color fillColor;
  color originalColor;
  
  Square() {
   size = int(random(squareMinSize, squareMaxSize));
   x = int(random(size, width - size));
   y = int(random(size, height - size));
   originalColor = color(random(randomColor), random(randomColor), random(randomColor));
   fillColor = originalColor;
  }
 
 void drawSquare() {
  noStroke();
  fill(fillColor);
  rect(x, y, size, size);
  }
 
 boolean isMouseInSquare() {
   return( mouseX >= x && mouseX < x + size &&
           mouseY >= y && mouseY < y + size);
  }
 void mouseClick() {
   fillColor = GRAY;
   if (isMouseInSquare()) {
     fillColor = originalColor;
   }
 }
}
