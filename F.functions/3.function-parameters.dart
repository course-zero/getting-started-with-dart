/**
 * In Dart, we call a function with arguments in the order defined by the function,
 * or by actually specifying the names of the arguments in the function call.
 *
 * Functions can also have default values so that a caller does not have to provide
 * all the arguments with the function call.
 *
 * [positional parameters]
 * var functionName( a, b, c ) => statement;
 * -> functionName(1, 2, 3) // order matters
 *
 * [optional positional parameters with default values]
 * var functionName( a, [b = 2, c] ) => statement;
 * -> functionName(1) // `b` will be `2` and c will be `null`
 *
 * [named parameters, all parameters are optional]
 * var functionName( { a, b } ) => statement;
 * -> functionName() // `a` & `b` will be `null`
 * -> functionName({b: 2, a: 1}) // order doesn't matter
 *
 * [named parameters with default values]
 * var functionName( { a, b = 2 } ) => statement;
 * -> functionName({a: 1}) // `b` will be 2
 *
 * [mixed positional and named parameters]
 * var functionName( a, b, { c = 3, d } ) => statement;
 * -> functionName(1, 2, {d: 4}) // `c` will be `3`
 * 
 */
void main() {
  
  // function call with positional arguments
  // appearance order of the arguments is important
  getInfo( "Rachel Green", 27 );

  // function with positional parameters
  // we can ignore optional arguments
  getSafeInfo( "Ross Geller", 31 );

  // function with named parameters
  // appearance order of the arguments is not important
  getNamedInfo( name: "Chandler Bing", age: 29 );

  // function with positional and named parameters
  // appearance order of arguments is important for positional arguments only
  getSafeNamedInfo( "Joey Tribbiani", age: 29 );
}

// this function must be called with `name` and `age` arguments in order
void getInfo( String name, int age ) {
  print( "getInfo():=> $name, $age" );
}

// `isMarried` is optional parameter and it has `false` default value
// `name` and `age` are required arguments
void getSafeInfo( String name, int age, [ bool isMarried = false ] ) {
  print( "getSafeInfo():=> $name, $age, $isMarried" );
}

// function with named parameters, all parameters are optional
void getNamedInfo( { String name, int age } ) {
  print( "getNamedInfo():=> $name, $age" );
}

// function with positional and named parameters, only `name` argument is required
// positional parameters must appear before the named parameters
void getSafeNamedInfo( String name, { int age, bool isMarried = false } ) {
  print( "getSafeNamedInfo():=> $name, $age, $isMarried" );
}
