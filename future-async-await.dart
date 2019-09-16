import 'package:http/http.dart' as http;

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

// this method returns a Future object because it is labelled with `async` keyword
// this this Future object always return a value, only `then` method is invoked by it
Future<int> getUsers () async {

  try {
    // await waits until Future object is resolved or rejected
    final response = await http.get( 'https://reqres.in/api/users/23' );

    // below statements are blocked until Future object returned by `http.get`
    // returns a value (resolves) which happens when network request returns a response
    return response.statusCode; // returns `int` value
  } catch( e ) {
    // this block is executed when `http.get` fails to retrieve a response due to network failure
    print("Network Failure: $e");
    return 0; // return 0
  }

}