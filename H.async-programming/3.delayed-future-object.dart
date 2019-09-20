void main() {

  // create future object that executes the `callback` function after 3 seconds
  Future<String> future = Future.delayed( Duration(seconds: 3), () => "Hello from the future." );

  // just a simple statement
  print( '1. Future object created.' );

  // react to future objects resolution or rejection
  future.then( ( result ) {
    print( '2. Sucess: $result' );
  } ).catchError( ( error ) {
    print( '2. Error: $error' );
  } );

  // just a simple statement
  print( '3. Job is done!' );

}