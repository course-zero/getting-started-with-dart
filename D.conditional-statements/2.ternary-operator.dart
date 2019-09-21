/**
 * Ternary operator are used to evaluate a condition just like if/else but on a single line.
 * 
 * condition ? expr1 : expr2;
 * The `result` of the executed expression can be ignored or saved into a variable.
 */
void main() {

  // execute a statement
  var condition = true;
  condition ? print( 'when condition is "true"' ) : print( 'when condition is "false"' );
  
  // save the selected value in a variable
  var value = ( 1 > 2 ) ? 'STUPID' : 'SMART';
  print( "value = $value" );

  // save the result of an evaluated expression in a variable
  var name = true ? getFirstName() : getLastName();
  print( "name = $name" );

}

// fat arrow functions
String getFirstName() => "John";
String getLastName() => "Doe";
