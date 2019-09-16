import 'dart:math';

void main() {
  try {
    var result = squareRoot(-4);
    print( "result: $result" );
  } on NegativeSqrtException catch( e ) {
    print( "Oops, Negative Number: $e" );
  } catch( e ) {
    print( e );
  } finally {
    print( 'Job Done!' );
  }
}

// custom exception class
class NegativeSqrtException implements Exception {
  @override
  String toString() {
    return 'Sqauare root of negative number is not allowed.';
  }
}

// get square root of a positive number
num squareRoot( int i ) {
  if( i < 0 ) {
    // NegativeSqrtException is custom class
    throw NegativeSqrtException();
  } else {
    return sqrt( i );
  }
}