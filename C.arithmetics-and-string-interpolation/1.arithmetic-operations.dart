/**
 * Dart supports all arithmetic operators.
 */
void main() {

  var x = 11; // `x` has `int` type
  var y = 2;  // `y` has `int` type
  
  // perform arithmetic operation and save the result in a variable
  var result = x + y; // `result` has `int` type

  print("result = ${ result }"); // Addition
  
  print("x - y = ${ x - y }"); // Subtraction
  
  print("x * y = ${ x * y }"); // Multiplication
  
  // return type of a division is always a `double` value
  print("x / y = ${ x / y } and is a double ${ (x / y) is double }"); // Division
  
  // return type of a division with quotient is always a `int` value
  print("x ~/ y = ${ x ~/ y }"); // Quotient
  
  print("x % y = ${ x % y }"); // Modulus
  
  print("x++ = ${ x++ }"); // Increment after return
  print("--y = ${ --y }");// Decrement before return
}
