/**
 * In Dart, functions can be defined in the file scope or inside another function.
 * Since everything is an object in Dart, function behaves like first-class objects.
 * Functions can be stored in a variable, passed as an argument or returned as a value.
 *
 * Functions defined in the file scope, like `main` function are hoisted.
 * Hence we can call one function from another despite their order on appearance in the file.
 */
void main() {

  // `sayHello` function is defined like a method with `String` return value
  String sayHello ( String name ) {
    var greeting = greet(); // call `greet` function
    return "$greeting, $name.";
  };

  // anonymous functions` are function defined without a name
  // `getSum` variable has `num Function(num, num)` type
  // AVOID: (we should avoid complex type declaration, Dart can infer type automatically)
  num Function(num, num) getSum = ( num a, num b ) {
    return a + b;
  };

  // `getDivision` variable has `dynamic Function(dynamic, dynamic)` type
  // PREFERRED: easier to read, data types are inferred automatically from arguments and return types
  var getDivision = ( a, b ) {
    return a ~/ b;
  };

  // `print` is also a function (built-in)
  print( sayHello( "John" ) );
  print( getSum( 22, 11 ) );
  print( getDivision( 22, 11 ) );

}

// function returns a `String` value
String greet() {
  return "Good Morning";
}
