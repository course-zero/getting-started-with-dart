void main() {
  // create Employee object
  var e = Employee( 'Ross', 'Geller', 1000 );
  print( e );
}

// Person class with basic details
// Since Person is abstract, it can not be instantiated
abstract class Person {
  String firstName, lastName;

  // default constructor
  Person( this.firstName, this.lastName );
  
  // get full name
  String getFullName() {
    return '${ this.firstName } ${ this.lastName }';
  }

  // return String format of the Person object
  @override
  String toString() {
    return 'Person: ${ this.getFullName() }';
  }
}

// Employee class shares feature of Person class
class Employee extends Person {
  int salary;

  // default constructor
  Employee( String firstName, String lastName, this.salary ): super( firstName, lastName );

  // return String format of the `Employee` object
  // override `toString` of Person class by calling it
  @override
  String toString() {
    var rprPerson = super.toString(); // Person object String representation
    return 'Employee: (${ rprPerson }) with salary ${ this.salary }'; 
  }
}