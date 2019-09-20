/**
 * Fat arrow functions or lambda expessions is a clean way to
 * write function expression on a single line.
 */
void main() {

  // fat arrow function doesn't have a statements body `{}`
  // statement after `=>` automatically returns a value
  // this is the way to write fat-arrow function that returns `void`
  void sayHello ( String name ) => print( "Hello $name." );

  // automatically returns result of expression `a * a`
  // Data Types are inferred at runtime
  var getSquare = ( a ) => a * a;

  // same as above but with explicit arguments Data Types
  var add = ( num a, num b ) => a + b;

  sayHello( "John" ); // this function does not return anything
  print( getSquare(3) ); // print returned value
  print( add(1, 2) ); // print returned value

}