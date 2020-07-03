class Calculator {
  public function new() {
    trace("A new calculator instance was created!");
  }
  
  public function add(a:Int, b:Int): Int {
    return a + b;
  }
  
  public function multiply(a:Int, b:Int):Int {
    return a * b;
  }
}

// Create a new instance of the Calculator
var calculator = new Calculator();

trace(calculator.add(1, 2));
trace(calculator.multiply(2, 3));
