/**
 * An `executor` function can also return another `Future` object.
 * In that case, original `Future` object is not resolved until returned `Future` object resolves.
 *
 * When returned `Future` object is resolved, main `Future` object is also resolved.
 * When returned `Future` object is rejected, main `Future` object is also rejected.
 */
void main() {

  // create `Future` object with an `executor` that returns another `Future` object
  Future<String> future = Future( () {

    // return `Future` object that returns a `String` object
    return Future( () => "Hello from the future!" );
  } );

  // just a simple statement
  print( '1. Future object created.' );

  // we can use only `then` method to register success and error callbacks
  future.then( ( result ) {
    
    print( '2. Sucess: $result' );
    
  }, onError: ( error ) {
    
    print( '2. Error: $error' );
    
  } );

  // just a simple statement
  print( '3. Job is done!' );

}
