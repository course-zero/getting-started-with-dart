/**
 * A string interpolation is process of getting final string value by evaluating,
 * a string that contains variables and expressions.
 *
 * String interpolation in Dart can be performed directly by using `$variable` syntax
 * inside `single` or `double` quoted string as well as using `${variable}` or `${expression}` syntax.
 *
 * Any object of other than `String` type that is being interpolated in a string,
 * must have `toString` method which returns a string prepresentation of that object.
 */
void main() {
  var name = 'John Doe';
  var age = 27;
  var grades = 8.32;
  
  // injecting variables in a string
  print( "Hello, My name is '$name'." );
  
  // evaluating variables and expression inside `${...}` syntax
  print( 'I am \'${age}\' years old and I received "${ grades * 10 }%" score.' );
}
