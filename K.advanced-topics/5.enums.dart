/**
 * An `enumeration` or enum is an object of type `enum` that holds constant values.
 * 
 * An enum object can be related to a class with compile-time constant static properties.
 * The value of these properties is initialized by Dart at compile time.
 * 
 * Each value in an enum has an index and can be accessed using `index` property on the value.
 * To get all entries of an enum, we use `values` property on the enum object.
 * 
 * Enumerations are used widely to create a collection of constant values.
 * But since the value in an enum does not represent a definite Data Type,
 * their use is limited to comparisons only and not for the data storage.
 */
enum Colors {
  blue,    // index 0
  red,     // index 1
  green,   // index 2
  white,   // index 3
  black    // index 4
}

void main() {
  
  var myColor = Colors.red;

  // use in `switch/case` statements
  switch( myColor ) {
    case Colors.red: {
      print( 'You are very romantic.' );
      break;
    }

    case Colors.black: {
      print( 'You are very fashionable.' );
      break;
    }

    default: {
      print( 'You are just ordinary.' );
    }
  }

  // use in `if/else` statements
  if( myColor == Colors.white ) {
    print( 'You are very pure.' );
  }

  // get index of a enum value
  print( 'Colors.white.value => ${ Colors.white.index }' );

  // get all enum values as a list (List<Colors>)
  print( 'Colors.white.values => ${ Colors.values }' );

}