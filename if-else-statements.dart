/**
 * `if/else` and `if/else if/else` statements in Dart
 * looks exactly like that in JavaScript.
 */
void main() {
  
  // simple `if` statement
  if( true ) {
    print( "SIMPLE IF: 'if{}' block executed" );
  }

  // simple `if/else` statement
  var result = false;
  if ( result ) {
    print( "SIMPLE IF/ELSE: 'if{}' block executed" );
  }
  else {
    print( "SIMPLE IF/ELSE: 'else{}' block executed" );
  }

  // simple `if/else if/else` statement
  var grades = 8.2;
  if ( grades > 9 ) {
    print( "SIMPLE IF/ELSE IF/ELSE: 'if{}' block executed" );
  } else if( grades > 8 ) {
    print( "SIMPLE IF/ELSE IF/ELSE: 'else if{}' block executed" );
  } else {
    print( "SIMPLE IF/ELSE IF/ELSE: 'else {}' block executed" );
  }

}