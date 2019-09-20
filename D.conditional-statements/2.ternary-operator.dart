/**
 * Ternary operator are used to evaluate a condition just like if/else
 * but on a single line. The `result` of the executed statement can be
 * ignored or saved into a variable.
 */
void main() {

  // execute a statement
  var condition = true;
  condition ? print( 'when condition is "true"' ) : print( 'when condition is "false"' );

  // save the result in a variable
  var result = ( 1 > 2 ) ? 'STUPID' : 'SMART';
  print( "result = $result" );

}