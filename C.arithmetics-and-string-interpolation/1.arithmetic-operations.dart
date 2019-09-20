/**
 * Arithmetic operations.
 */
void main() {

  var x = 11;
  var y = 2;

  var result = x + y;

  print("result = ${ result }"); // Addition
  print("x - y = ${ x - y }"); // Subtraction
  print("x * y = ${ x * y }"); // Multiplication
  print("x / y = ${ x / y } and is a double ${ (x / y) is double }"); // Division
  print("x ~/ y = ${ x ~/ y }"); // Quotient
  print("x % y = ${ x % y }"); // Modulus
  print("x++ = ${ x++ }"); // Increment after return
  print("--y = ${ --y }");// Decrement before return
}