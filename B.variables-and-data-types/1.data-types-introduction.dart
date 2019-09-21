/**
 * Variables without a value must initialize with a data type identifer.
 * Default value of a variable is always null.
 */
void main() {
  
  // variables without a Data Type must be defined with Data Type identifiers
  int myNumber; // `int` Data Type is for integer values
  double myDouble; // `double` Data Type is for floating-point numbers
  String myString; // `String` Data Type is for string values (sequence of characters)
  
  // variables without an initial have `null` values
  // we can also assign `null` to a variable at variable declaration or at anytime
  // `null` signifies no-value or empty-value
  bool myBoolean = null;

  print( myNumber );  // null
  print( myDouble );  // null
  print( myString );  // null
  print( myBoolean ); // null
}
