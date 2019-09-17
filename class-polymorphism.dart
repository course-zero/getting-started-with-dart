void main() {
  // create Person and Employee object
  var p = Person( 'Joey', 'Tribbiani' );
  var e = Employee( 'Ross', 'Geller', 1000 );
  
  print( 'Person p full name: ${ fullName( p ) }' );
  print( 'Employee e full name: ${ fullName( e ) }' );
}

// getFullName of a Person or an Employee
String fullName(Person person) {
  return '${ person.firstName } ${ person.lastName }';
}

// Person class with basic details
class Person {
  String firstName, lastName;

  // default constructor
  Person( this.firstName, this.lastName );
}

// Employee class shares feature of Person class
class Employee extends Person {
  int salary;

  // default constructor
  Employee( String firstName, String lastName, this.salary ): super( firstName, lastName );
}