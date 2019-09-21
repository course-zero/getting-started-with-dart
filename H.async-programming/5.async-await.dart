import 'package:http/http.dart' as http;

/**
 * Using `then` chaining is not discouraged but it can soon get complicated to implement.
 * Dart provides `async/await` syntax to handle `Future` objects in synchronous code fashion.
 *
 * When a function is marked with `async`, it returns a `Future` object.
 * When `await` keyword is placed before a `Future` object in that function,
 * it blocks the execution of further code in that function until that `Future` object is resolved.
 *
 * Since there is no `catchError` method to catch errors in the `Future` objects,
 * Dart throws an exception when a `Future` object is rejected.
 * Hence code inside an `async` function should be handled with `try-catch` block.
 */
void main() {

  // call `getUsers` method which returns a `Future` object
  getUsers().then( ( responseCode ) {
    switch( responseCode ) {
      case 200: print( "SUCCESS: Response is received." );                      break;
      case 404: print( "NOT FOUND: The page is not found on the server." );     break;
      case 0:   print( "NETWORK FAILURE: Could not connect to the network." );  break;
    }
  } );

}

// this method returns a `Future` object because it is marked with `async` keyword
// Since we are using `try-catch` block, returned `Future` object always resolves.
// `Future` object upon resolution returns an `int` object
Future<int> getUsers () async {

  try {
    
    // `await` waits until the `Future` object returned by `http.get()` is resolved or rejected
    // this `Future` object is rejected when network request fails to retrieve data
    // if this `Future` object is rejected, an exception will be thrown
    final response = await http.get( 'https://reqres.in/api/users/23' );

    // below statements are blocked until the above statement lock is released
    return response.statusCode; // returns `int` value
    
  } catch( e ) {
    
    // this block is executed when an exception is thrown in `try` block
    print("Network Failure: $e");
    return 0; // return `0` value (int)
    
  }

}
