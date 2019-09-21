/**
 * Dart provides `const` and `final` keywords to create variables with fixed values.
 * Once variable defined with `const` or `final` has a value, its value can not be changed.
 * 
 * `const` is a `compile-time` constant means its value should be declared while compiling the Dart program.
 * `final` is `runtime` constant, means its value can be assigned during program execution.
 * 
 * Static variables of a class should be `const` because they are initialized at compile time.
 * Instance variables of a class should be `final` as they are initialized at runtime.
 */
void main() {

  // compile-time constants
  const double PI = 3.14;
  const gravity = 9.81; // Data Type `double` is inferred from `9.81` value

  // runtime constants (evaluated when program is running)
  final num square_2 = getSquare( 2 );
  final square_3 = getSquare( 3 ); // Data Type is inferred from `getSquare` function return type (num)
  // const VAL = getSquare( 2 ); // invalid statement as `const` values should be evaluated at compile-time
  
  print("PI: $PI");
  print("square_2: $square_2");
  print("square_3: $square_3");
}

// this function returns square of a number
num getSquare( num i ) {
  return i * i;
}
