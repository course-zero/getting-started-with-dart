/**
 * Dart functions have lexical scope which means a function has access to the variable defined in
 * the upper scopes. When a function is nested inside another function, inner function has
 * access to the variables defined in the parent function.
 *
 * Like JavaScript, Dart creates `closures` to hold variables from the outer scope
 * that the function depends on.
 */
void main() {

  // example of lexical scoping
  // variable `name` is accessible inside `getUpperCase`
  var name = 'Ross Geller';
  var getUpperCase = () {
    print( name.toUpperCase() ); // `name` is accessed from upper scope(s)
  };

  // example of closure
  // return function creates a closure with `i`
  // hence `i` lives even when `addANumber` is returned
  var addANumber = ( num i ) {
    return ( num j ) => i + j; // return a function that adds argument `j` with `i`
  };

  // lexical scoping
  getUpperCase();

  // closure
  var addTwo = addANumber( 2 ); // `addANumber` function is returned
  print("addTwo(3) :=> ${addTwo(3)}");

}
