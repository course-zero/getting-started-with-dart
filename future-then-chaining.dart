void main() {

  // create future object that executes the callback function after 3 seconds
  Future<String> future = Future.delayed( Duration(seconds: 3), () => "Hello from the future" );
  
  // listen to future object
  future

  // 1. executes when `future` object resolves
  .then( (result) => "$result: then_1" )

  // executes when previous `then` method returns a value (resolves)
  // 2. returns a future object with a string value
  .then( (result_of_1) => "$result_of_1: then_2" )
  
  // executes when previous `then` method returns a value (resolves)
  // 3. return future object but throws an exception in the callback function
  .then( (result_of_2) {
    print( 'result in then_3: $result_of_2' );
    throw FormatException( 'Something went wrong in then method 3.' );
  } )

  // 4. never gets called because of an exception is thrown in the future object
  // it is reacting to
  .then( (result_of_3) {
    print( 'result in then_4: $result_of_3' );
  } )
  
  // gets called when an exception occurs in the `future` object
  // or in any of a `then` method callback function
  .catchError( ( error ) {
    print( 'Error: $error' );
  } );

  // just a simple statement
  print( 'Job is done!' );

}