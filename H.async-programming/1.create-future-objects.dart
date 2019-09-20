void main() {

  // create future object by passing a `callback` function to Future class constructor
  Future<String> future = Future( () {
    return "Hello from the future";
  } );

  // just a simple statement
  print( '1. Future object created.' );

  // react to future objects resolution or rejection
  future.then( ( result ) {
    // this block is executed when something is returned from the `callback` function
    print( '2. Sucess: $result' );
  } ).catchError( ( error ) {
    // this block is executed when an exception is thrown in the `callback` function
    print( '2. Error: $error' );
  } );

  // just a simple statement
  print( '3. Job is done!' );

}