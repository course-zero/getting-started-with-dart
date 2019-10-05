import 'package:meta/meta.dart';

/**
 * By default, all named arguments of a function are optional
 * and their default value if not provided is `null`.
 * 
 * Using `@required` annotation from `meta` package, named parameters can be marked required.
 * We just need to place it before parameter declaration.
 * 
 * This also works for a shorthand constructor syntax.
 */
getFullName( { @required String firstName, @required String lastName } ) {
  return '$firstName $lastName';
}

class Person{
  String firstName, lastName;
  
  // Person constructor requires non-null firstName and lastName.
  Person( { @required this.firstName, @required this.lastName } );

  // call `getFullName` function with all required named arguments
  String get fullName => getFullName( firstName: firstName, lastName: lastName );
}

void main() {

  // create Person object with required named arguments
  Person p = Person( firstName: 'John', lastName: 'Doe' );

  print( 'p.fullName => ${ p.fullName }' );
}