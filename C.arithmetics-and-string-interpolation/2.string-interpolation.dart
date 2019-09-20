/**
 * String interpolation in Dart can be performed directly by using `$variable` syntax
 * inside `single` or `double` quotes as well as using `${variable}` or `${expression}` syntax.
 */
void main() {
  var name = 'John Doe';
  var age = 27;
  var grades = 8.32;

  print( "Hello, My name is '$name'." );
  print( 'I am \'${age}\' years old and I received "${ grades * 10 }%" score.' );
}