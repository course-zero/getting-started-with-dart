void main() {
  // create Employee object
  var e = Employee( 'Ross', 'Geller', 1000 );
  
  print( 'Employee e full name: ${ e.getFullName( e.firstName, e.lastName ) }' );
}

// abstract `Person` class can be extended or implemented
abstract class Person {
  // instance variables definition
  String firstName, lastName;

  // constructor is not a part of `Person` interface
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

// `Employee` class shares feature of `Person` class
class Employee implements Person {
  // ENFORCED: instance variables declaration from the `Person` interface
  String firstName, lastName;

  int salary; // not enforced

  // default constructor
  Employee( this.firstName, this.lastName, this.salary );

  // ENFORCED: method declaration
  // parameters `firstName` and `lastName` gets `String` Data Type
  // from method definition in the `Person` interface
  String getFullName( firstName, lastName ) {
    return '$firstName $lastName';
  }
}