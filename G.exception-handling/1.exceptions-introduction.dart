void main() {
  // this statement executes
  print( 'Program started!' );

  // this statement throws the exception and terminates the program
  var result = 100 ~/ 0;

  // after exception is thrown, none of the below code executes
  print( "result: $result" );

  // this statement does not executes
  print( 'Program terminated successfully!' );
}