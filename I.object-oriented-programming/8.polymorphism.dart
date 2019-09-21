/**
 * Polymorphism is the ability of an object to take any form.
 * Everything in Dart is an object and all objects are inherited from `Object` class.
 * Hence for example, a `String` object is both type of `String` and `Object.
 *
 * An object of a class that `inherits` another class, can be represented in both the class types.
 * Also, an object of a class that `implements` another class, can also be represented in both the class types.
 *
 * We use `object.runtimeType` to get actual type of the object at runtime.
 */
void main() {
  // create `Person` and `Employee` objects
  var p = Person( 'Joey', 'Tribbiani' );
  var e = Employee( 'Ross', 'Geller', 1000 );
  
  // We can call `fullName` function with `p` because it accepts argument of type `Person`
  print( 'Person p full name: ${ fullName( p ) }' );
  
  // We can call `fullName` function with `e` because `e` is also a type of `Person`
  print( 'Employee e full name: ${ fullName( e ) }' );
}

// `getFullName` of a `Person` or an `Employee` object
String fullName(Person person) {
  return '${ person.firstName } ${ person.lastName }';
}

// A `Person` object contains basic personal details
class Person {
  String firstName, lastName;

  // default constructor
  Person( this.firstName, this.lastName );
}

// `Employee` class shares feature of the `Person` class
class Employee extends Person {
  int salary;

  // default constructor
  Employee( String firstName, String lastName, this.salary ): super( firstName, lastName );
}
