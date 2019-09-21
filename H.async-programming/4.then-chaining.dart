/**
 * Like JavaScript promises, `then` and `catchError` method also return another `Future` object.
 * The individual callback function passed to `then` and `catchError` method act as an `invoker` function.
 * Using these principles, it is possible to chain a `then` method on another `then` method.
 *
 * Then chaining is used to perform asynchronous jobs in series.
 * It is a standard practice to chain multiple `then` callback but have only one `catchError` callback
 * to handle error happended in any chained `then` callback.
 */
void main() {

  // create future object that executes the `invoker` function after `3` seconds
  Future<String> future = Future.delayed( Duration(seconds: 3), () => "Hello from the future" );
  
  // listen to `Future` object
  future

  // 1. executes when `Future` object resolves
  .then( (result) => "$result: then_1" )

  // executes when previous `then` method returns a value (resolves)
  // 2. returns a future object with a string value
  .then( (result_of_1) => "$result_of_1: then_2" )
  
  // executes when previous `then` method returns a value (resolves)
  // 3. return a `Future` object but throws an exception in the `invoker` function
  .then( (result_of_2) {
    print( 'result in then_3: $result_of_2' );
    throw FormatException( 'Something went wrong in then method 3.' );
  } )

  // 4. never gets called because of an exception was thrown in the `Future` object it is attached to
  // it is reacting to
  .then( (result_of_3) {
    print( 'result in then_4: $result_of_3' );
  } )
  
  // gets called when an exception occurs in the original `future` object
  // or in any of the `then` method callback functions
  .catchError( ( error ) {
    print( 'Error: $error' );
  } );

  // just a simple statement
  print( 'Job is done!' );

}
