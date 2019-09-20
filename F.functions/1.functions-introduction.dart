/**
 * In Dart, function act like a method or first-class objects.
 */
void main() {

  // `sayHello` function defined like a method
  // with return Data Type of `String`
  String sayHello ( String name ) {
    var greeting = greet();
    return "$greeting, $name.";
  };

  // function defined without a name, AKA `anonymous function`
  // `getSum` variable has `num Function(num, num)` type
  // AVOID: complicated syntax
  num Function(num, num) getSum = ( num a, num b ) {
    return a + b;
  };

  // function defined without a name
  // `getDivision` variable is of type `Function`
  // PREFERRED: easier to read, data types are inferred at runtime
  var getDivision = ( a, b ) {
    return a ~/ b;
  };

  // `print` is also a function
  print( sayHello( "John" ) );
  print( getSum( 22, 11 ) );
  print( getDivision( 22, 11 ) );

}

// function returns a String object
String greet() {
  return "Good Morning"; // can change depending upon time
}