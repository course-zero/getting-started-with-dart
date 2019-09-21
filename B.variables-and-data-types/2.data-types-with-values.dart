/**
 * Dart can infer data type of a variable from its initial value.
 * Once a variable is defined, it should contain only that data type.
 */
void main() {
  
  // Dart can infer the Data Type of a variable from its initial value
  var age = 27; // `age` variable has `int` type because `27` is an integer
  
  // if a variable of `double` Data Type is assigned with `int` value,
  // Dart converts the value to suitable floating-point number
  double grades = 9; // converted to `9.0`
  
  // strings in Dart can be defined inside single or double quotes
  var favColor="Green";
  String favFruit='Banana';
  
  // since `isMarried` variable has no initial value (initial `null` value), we must declare its Data Type
  bool isMarried; // `isMarried` can contain `true`, `false` or `null` value

  // we can assign new values to exisiting variables
  favFruit='Mango';
  isMarried=false;
  grades=10; // converted to 10.0 as `grades` has `double` Data Type
  
  // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  // favColor=100;
  
  print(age);
  print(grades);
  print(favColor);
  print(favFruit);
  print(isMarried);
}
