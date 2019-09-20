/**
 * Variables without a value must initialize with a data type identifer.
 * Default value of a variable is always null.
 */
void main() {
  int myNumber;
  double myDouble;
  String myString;

  // We can optionally assign `null` to a variable during variable initialization
  // or at anytime do declare that a variable has a no value
  bool myBoolean = null;

  print( myNumber );
  print( myDouble );
  print( myString );
  print( myBoolean );
}