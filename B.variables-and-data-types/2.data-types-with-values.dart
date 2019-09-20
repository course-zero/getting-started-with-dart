/**
 * Dart can infer data type of a variable from its initial value.
 * Once a variable is defined, it should contain only that data type.
 */
void main() {
  var age = 27;
  double grades = 9; // converted to `9.0`
  var favColor="Green";
  String favFruit='Banana'; // string can also be defined in single-quotes
  bool isMarried; // mo initial value, must state a data type

  // assign some values
  favFruit='Mango';
  isMarried=false; // Use `true` is for boolean true
  grades=10; // converted to 10.0 by Dart
  
  // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  // favColor=100;

  print(age);
  print(grades);
  print(favColor);
  print(favFruit);
  print(isMarried);
}