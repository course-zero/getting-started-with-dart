/**
 * If you aware of JavaScript `Promise` object then you can relate it to the `Future` object.
 * A `Future` object is used to handle asynchronous operations.
 * A `Future` object is created by passing an `invoker` function to the `Future` class constructor.
 * 
 * The job of `invoker` function is to trigger a background process and
 * return the result of the background job.
 *
 * A `Future` object has `then` and `catchError` method.
 * `then` method it used to register a callback function when `invoker` function returns a value.
 * `catchError` method is used to register a callback function when an exception was thrown in the `invoker` function.
 *
 * The `invoker` function starts executing when the `Future` object is registered with a callback
 * using `then` or `catchError` method. It will also execute if the `Future` object is used as an expression.
 *
 * When `then` callback is called, we call `Future` object was successfully **resolved**.
 * When `catchError` callback is called, we call `Future` object was **rejected** or **failed**.
 *
 * `Future` object does not block the execution of the program until it is resolved or rejected.
 */
void main() {

  // create Future object by passing an `invoker` function
  Future<String> future = Future( () {
    
    // return a `String` object immediately
    return "Hello from the future";
  } );

  // just a simple statement
  print( '1. Future object created.' );

  // react to Future object's resolution or rejection
  future.then( ( result ) {
    
    // this block is executed when something is returned from the `invoker` function
    print( '2. Sucess: $result' );
    
  } ).catchError( ( error ) {
    
    // this block is executed when an exception or an error is thrown in the `invoker` function
    print( '2. Error: $error' );
    
  } );

  // just a simple statement
  print( '3. Job is done!' );

}
