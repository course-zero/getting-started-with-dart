/**
 * An exception thrown by the runtime can be catched using `try/catch/finally` blocks.
 * try: This is where we execute code that can potentially raises an execption.
 * catch: This is where we do some error handling when an exception was thrown.
 * finally: This block always execute whether an exception was raised or now.
 *
 * The try-catch statement is used to prevent accidental termination of the program.
 */
void main() {
  
  try {
    var result = 100 ~/ 0; // this statement raises an exception

    // any code after the above statements in this block never execute as it raises an exception
    print( "result: $result" );
    
  } catch( e ) {
    
    // this block executes when an execption is thrown in the `try` block
    print( e );
    
  } finally {
    
    // this block executes regardless exception was thrown or not
    print( 'Job Done!' );
    
  }

  // this statement executes as exception is handled by `try-catch` statement
  print( 'Program terminated!' );
  
}
