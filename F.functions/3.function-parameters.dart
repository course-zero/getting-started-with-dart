/**
 * Function parameters can be positional or named just like in Python.
 * These parameters can be provided with default values.
 */
void main() {
  
  // function with positional parameters, appearance order of arguments IS important
  getInfo( "Rachel Green", 27 );

  // function with positional parameters, we can ignore optional arguments
  getSafeInfo( "Ross Geller", 31 );

  // function with named parameters, appearance order of arguments IS NOT important
  getNamedInfo( name: "Chandler Bing", age: 29 );

  // function with positional and named parameters
  // appearance order of arguments IS important for positional arguments only
  getSafeNamedInfo( "Joey Tribbiani", age: 29 );
}

// this function must be called with `name` and `age`
void getInfo( String name, int age ) {
  print( "getInfo():=> $name, $age" );
}

// `isMarried` is optional parameter because it has `false` default value
// `name` and `age` are required
void getSafeInfo( String name, int age, [ bool isMarried = false ] ) {
  print( "getSafeInfo():=> $name, $age, $isMarried" );
}

// function with named parameters, all parameters are required
void getNamedInfo( { String name, int age } ) {
  print( "getNamedInfo():=> $name, $age" );
}

// function with positional and named parameters, `isMarried` named parameter is optional
// positional parameters should appear before named parameters
void getSafeNamedInfo( String name, { int age, bool isMarried = false } ) {
  print( "getSafeNamedInfo():=> $name, $age, $isMarried" );
}