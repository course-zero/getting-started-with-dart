/**
 * Interfaces are blueprints of how a class should look like.
 * Interfaces provide a `strict` schema to define a class.
 *
 * In Dart, a class is also defined as interface implicitely. Hence they are called implicit interfaces.
 * We used `implements` keyword to implement an interface on a class.
 * Unlike inheritance, a class can implement multiple interfaces.
 *
 * Like inheritance, constructor function and static properties
 * is not a part of implicit interface created by a class.
 * 
 * 🔥 TIPS:
 * 1. If a sub-class `extends` an `abstract` super-class with methods lacking body signature,
 * __ these methods must be implemented in the sub-class.
 */
void main() {
  // create Employee object
  var e = Employee( 'Ross', 'Geller', 1000 );
  
  print( 'Employee e full name: ${ e.getFullName( e.firstName, e.lastName ) }' );
}

// abstract `Person` class can only be extended or implemented
abstract class Person {
  
  // instance variables definition
  String firstName, lastName;

  // constructor is not a part of the `Person` interface
  Person( this.firstName, this.lastName );

  // instance method definition
  // method body is optional as `Person` is abstract class
  String getFullName( String firstName, String lastName );

  // static definitions are not the part of the `Person` interface
  static String version;
  static String getVersion() {
    return Person.getVersion();
  }
  
}

// `Employee` implements structure defined by `Person` class
class Employee implements Person {
  
  // ENFORCED: instance variables declaration from the `Person` interface
  String firstName, lastName;

  int salary; // not enforced as it is missing in `Person` class

  // default constructor
  Employee( this.firstName, this.lastName, this.salary );

  // ENFORCED: method declaration
  // parameters `firstName` and `lastName` gets `String` Data Type
  // from method definition in the `Person` interface
  String getFullName( firstName, lastName ) {
    return '$firstName $lastName';
  }
  
}
