/**
 * Dart provides `const` and `final` keywords to create variables with fixed values.
 * However, `const` is a compile time constant means its value should be declared
 * while compiling and `final` is runtime constant, means its value can be assigned
 * during program execution.
 * 
 * Hence, static variables of a `class` should be `const` because they are initialized
 * at compile time while instance variables should be `final` as they are
 * initialized at runtime.
 */
void main() {

  // compile time constant
  const PI = 3.14;

  // runtime constant
  // const VAL = getSquare( 2 ); :=> INVALID
  final num square_2 = getSquare( 2 );
  final square_3 = getSquare( 3 ); // without data type

  print("PI: $PI");
  print("square_2: $square_2");
  print("square_3: $square_3");
}

// return square of a number
num getSquare( num i ) {
  return i * i;
}