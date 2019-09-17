void main() {

  // create Future object with an invoker that returns another Future object
  Future<String> future = Future( () {

    // return Future object that returns a String
    return Future( () => "Hello from the future!" );
  } );

  // just a simple statement
  print( '1. Future object created.' );

  // use only `then` method to register success and error callbacks
  future.then( ( result ) {
    print( '2. Sucess: $result' );
  }, onError: ( error ) {
    print( '2. Error: $error' );
  } );

  // just a simple statement
  print( '3. Job is done!' );

}