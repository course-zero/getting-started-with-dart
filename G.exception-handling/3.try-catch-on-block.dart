void main() {
  try {
    
    var result = 100 ~/ 0;
    print( 'result: $result' );

  } on IntegerDivisionByZeroException {

    // execute when exception type is: IntegerDivisionByZeroException
    print("Error: can not divide by 0.");

  } on FormatException {

    // execute when exception type is: IntegerDivisionByZeroException
    print("Error: format is not correct.");

  } catch( e ) {

    // this block executes if none of the `on` block catches exception
    print( e );

  } finally {

    print( 'Job Done!' );

  }
}