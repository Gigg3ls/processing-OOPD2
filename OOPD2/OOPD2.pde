final color GRAY = #E8E5ff;
final color BLACK = #000000;
final color RED = #A02323;

int squareAmount = 5;

Square[] squares;

void setup() {
 size(400, 300);
 squares = new Square[squareAmount];
 for(int i = 0; i < squares.length; i++) {
   squares[i] = new Square();
 }
}

void draw() {
 background(BLACK);
 for(int i = 0; i < squares.length; i++) {
   squares[i].drawSquare();
}
}

void mouseClicked() {
  for(int i = 0; i < squares.length; i++) {
   squares[i].mouseClick();
  }
}
