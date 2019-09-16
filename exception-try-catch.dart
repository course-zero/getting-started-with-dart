void main() {
  try {
    var result = 100 ~/ 0;

    // any code after the above statement in this block never executes,
    // when an execption is thrown
    print( "result: $result" );
  } catch( e ) {
    // this block executes when an execption is thrown in `try` block
    print( e );
  } finally {
    // this block executes regardless exception was thrown or not
    print( 'Job Done!' );
  }

  // this statement executes
  print( 'Program terminated!' );
}