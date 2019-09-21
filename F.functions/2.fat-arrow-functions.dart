/**
 * Fat-arrow function or lambda expession is a clean way to write a function expression on a single line.
 * Fat-arrow functions doesn't have a statements body `{}`.
 * The statement body is replaced with `=>` fat-arrow which points to a single statement.
 *
 * This statement is executed when the fat-arrow function is called and
 * it always returns the result of the statement execution.
 */
void main() {

  // `print( "Hello $name." )` returns a `void` object
  void sayHello ( String name ) => print( "Hello $name." );

  // automatically returns result of expression `a * a`
  // Data Types are inferred at runtime
  var getSquare = ( a ) => a * a;

  // same as the above but with explicit Data Type declaration for the arguments
  var add = ( num a, num b ) => a + b;

  sayHello( "John" );    // this function does not return anything
  print( getSquare(3) ); // print returned value
  print( add(1, 2) );    // print returned value

}
