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
  final num VAL = getSquare( 2 );

  print("PI: $PI");
  print("VAL: $VAL");
}

// return square of a number
num getSquare( num i ) {
  return i * i;
}